<?php

class Advgroup_Widget_ProfileUsefulLinksController extends Engine_Content_Widget_Abstract
{
  protected $_childCount;
  public function indexAction(){
    //Get viewer
    $this->view->viewer = $viewer = Engine_Api::_()->user()->getViewer();
    if($viewer->getIdentity()==0) {
       return $this->setNoRender();
    }
    //Check subject
    if( !Engine_Api::_()->core()->hasSubject() ) {
      return $this->setNoRender();
    }

    // Get subject and check auth
    $subject = Engine_Api::_()->core()->getSubject('group');
    if( !$subject->authorization()->isAllowed($viewer, 'view') ) {
      return $this->setNoRender();
    }
    if($subject->authorization()->isAllowed($viewer,'edit') ||$subject->isOwner($viewer)){
        $this->view->canCreate = true;
    }else{
        $this->view->canCreate = false;
    }

    $this->view->group = $subject;
    if(!$subject->membership()->isMember($viewer)){
      return $this->setNoRender();
    }

    //Get Link Paginator
    $table = Engine_Api::_()->getItemTable('advgroup_link');
    $select = $table->select()
      ->where('group_id = ?', Engine_Api::_()->core()->getSubject()->getIdentity())
      ->order('creation_date DESC');

    $this->view->paginator = $paginator = Zend_Paginator::factory($select);
    $paginator->setItemCountPerPage($this->_getParam('itemCountPerPage', 5));
    $paginator->setCurrentPageNumber($this->_getParam('page', 1));

     if( $paginator->getTotalItemCount() <= 0 || !$viewer->getIdentity() ) {
      return $this->setNoRender();
    }

    // Add count to title if configured
    if( $this->_getParam('titleCount', false) && $paginator->getTotalItemCount() > 0 ) {
      $this->_childCount = $paginator->getTotalItemCount();
    }
  }

  public function getChildCount()
  {
    return $this->_childCount;
  }
}