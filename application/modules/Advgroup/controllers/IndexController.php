<?php
class Advgroup_IndexController extends Core_Controller_Action_Standard
{
  public function init()
  {
    // Set group as subject if it exists.
    if( !$this->_helper->requireAuth()->setAuthParams('group', null, 'view')->isValid() ){
        return;
    }
    $id = $this->_getParam('group_id', $this->_getParam('id', null));
    if( $id ) {
      $group = Engine_Api::_()->getItem('group', $id);
      if( $group ) {
        Engine_Api::_()->core()->setSubject($group);
      }
    }
  }
  
  public function browseAction()
  {
    // Setting to use landing page.
    $this->_helper->content->setNoRender()->setEnabled();
  }

  public function createAction()
  {
    // Return if guest try to access to create link.
    if( !$this->_helper->requireUser->isValid() ) return;

    // Check authorization to create group.
    if( !$this->_helper->requireAuth()->setAuthParams('group', null, 'create')->isValid() ) return;

    // Navigation
    $this->view->navigation = $navigation = Engine_Api::_()->getApi('menus', 'core')
          ->getNavigation('advgroup_main');

    // Create Form
    $this->view->form = $form = new Advgroup_Form_Create();

    // Populate category list.
    $categories = Engine_Api::_()->getDbtable('categories', 'advgroup')->getCategoriesAssoc();
    $form->category_id->setMultiOptions($categories);

    if( count($form->category_id->getMultiOptions()) <= 1 ) {
      $form->removeElement('category_id');
    }

    // Check method and data validity.
    if( !$this->getRequest()->isPost() ) {
      return;
    }
    if( !$form->isValid($this->getRequest()->getPost()) ) {
      return;
    }

    // Process
    $values = $form->getValues();
    $viewer = Engine_Api::_()->user()->getViewer();
    $values['user_id'] = $viewer->getIdentity();

    $db = Engine_Api::_()->getDbtable('groups', 'advgroup')->getAdapter();
    $db->beginTransaction();

    try {
      // Create group
      $table = Engine_Api::_()->getDbtable('groups', 'advgroup');
      $group = $table->createRow();
      $group->setFromArray($values);
      $group->save();

      // Add owner as member
      $group->membership()->addMember($viewer)
          ->setUserApproved($viewer)
          ->setResourceApproved($viewer);

      // Set photo
      if( !empty($values['photo']) ) {
        $group->setPhoto($form->photo);
      }

      // Add fields
      $customfieldform = $form->getSubForm('fields');
      $customfieldform->setItem($group);
      $customfieldform->saveValues();
      
      // Process privacy
      $auth = Engine_Api::_()->authorization()->context;

      $roles = array('officer', 'member', 'registered', 'everyone');

      if( empty($values['auth_view']) ) {
        $values['auth_view'] = 'everyone';
      }

      if( empty($values['auth_comment']) ) {
        $values['auth_comment'] = 'everyone';
      }

      $viewMax = array_search($values['auth_view'], $roles);
      $commentMax = array_search($values['auth_comment'], $roles);
      $photoMax = array_search($values['auth_photo'], $roles);
      $eventMax = array_search($values['auth_event'], $roles);
      $pollMax = array_search($values['auth_poll'],$roles);
      $inviteMax = array_search($values['auth_invite'], $roles);

      $officerList = $group->getOfficerList();

      foreach( $roles as $i => $role ) {
        if( $role === 'officer' ) {
          $role = $officerList;
        }
        $auth->setAllowed($group, $role, 'view', ($i <= $viewMax));
        $auth->setAllowed($group, $role, 'comment', ($i <= $commentMax));
        $auth->setAllowed($group, $role, 'photo', ($i <= $photoMax));
        $auth->setAllowed($group, $role, 'event', ($i <= $eventMax));
        $auth->setAllowed($group, $role, 'poll', ($i <= $pollMax));
        $auth->setAllowed($group, $role, 'invite', ($i <= $inviteMax));
      }

      // Create some auth stuff for all officers
      $auth->setAllowed($group, $officerList, 'photo.edit', 1);
      $auth->setAllowed($group, $officerList, 'topic.edit', 1);
      $auth->setAllowed($group, $officerList, 'poll.edit', 1);

      // Add auth for invited users
      $auth->setAllowed($group, 'member_requested', 'view', 1);

      // Add action
      $activityApi = Engine_Api::_()->getDbtable('actions', 'activity');
      $action = $activityApi->addActivity($viewer, $group, 'advgroup_create');
      if( $action ) {
        $activityApi->attachActivity($action, $group);
      }

      // Commit
      $db->commit();

      // Redirect
      return $this->_helper->redirector->gotoRoute(array('id' => $group->getIdentity()), 'group_profile', true);
    } catch( Engine_Image_Exception $e ) {
      $db->rollBack();
      $form->addError(Zend_Registry::get('Zend_Translate')->_('The image you selected was too large.'));
    } catch( Exception $e ) {
      $db->rollBack();
      throw $e;
    }
  }

  public function listingAction(){
    // Setting to use landing page.
    $this->_helper->content->setNoRender()->setEnabled();
  }

  public function manageAction(){
    //Require User
    if(!$this->_helper->requireUser->isValid()) return;
    
    //Get Main and Quick Navigation
    $this->view->navigation = $navigation = Engine_Api::_()->getApi('menus', 'core')
          ->getNavigation('advgroup_main');
    
    $this->view->quickNavigation = $quickNavigation = Engine_Api::_()->getApi('menus', 'core')
         ->getNavigation('advgroup_quick');

    //Create & modify search form.
    $this->view->form = $search_form = new Advgroup_Form_Search();
    $search_form->removeElement('view');
    $search_form->addElement('Select', 'view', array(
      'label' => 'View:',
      'multiOptions' => array(
        '0' => 'All My Groups',
        '2' => 'Only Groups I Lead',
      ),
      'onchange' => '$(this).getParent("form").submit();',
    ));
    $search_form->isValid($this->getRequest()->getPost());
    
    //Get form values
    $params = $search_form->getValues();

    //Get viewer
    $viewer = Engine_Api::_()->user()->getViewer();

    //Filter parameters
    if($params['view'] != "2"){
        $memTable = Engine_Api::_()->getDbtable('membership', 'advgroup');
        $select = $memTable->select()
                    ->where('user_id = ?',$viewer->getIdentity())
                    ->where('active = 1');
        $memberships = $memTable->fetchAll($select);
        $group_ids = array(0);
        foreach($memberships as $membership) $group_ids[] = $membership->resource_id;
        $params['group_ids'] = $group_ids;
    }
    else {
        $params['user_id'] = $viewer->getIdentity();
    }

    //Get data
    $this->view->paginator = $paginator =  Engine_Api::_()->getItemTable('group')
                                             ->getGroupPaginator($params);
    $paginator->setCurrentPageNumber($this->_getParam('page'));
    $paginator->setItemCountPerPage(5);
 }
}
