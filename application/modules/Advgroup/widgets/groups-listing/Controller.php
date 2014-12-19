<?php
class Advgroup_Widget_GroupsListingController extends Engine_Content_Widget_Abstract
{
 public function indexAction(){
      //Get fields for filtering group search.
      $params = array();
      $params['text'] ="";
      $params['category_id'] = "";
      $params['view'] = "";
      $params['order'] = "";
      $params['search'] = 1;
      $params['page'] = 1;
      
      if(!$_POST){
          $session_AdvGroupSearch = new Zend_Session_Namespace('AdvGroupSearch');
          if ($session_AdvGroupSearch) {
            if (isset($session_AdvGroupSearch->category_id)) {
               $params['category_id'] = trim($session_AdvGroupSearch->category_id);
            }
            if (isset($session_AdvGroupSearch->view)) {
              $params['view'] = (int)($session_AdvGroupSearch->view);
            }
            if(isset($session_AdvGroupSearch->order)) {
              $params['order'] = trim($session_AdvGroupSearch->order);
            }
          }
      } else {
          $params['text'] =$_POST['text'];
          $params['category_id'] = $_POST['category_id'];
          $params['view'] = $_POST['view'];
          $params['order'] = $_POST['order'];
          $params['page'] = $_POST['page'];
      }
      // Viewer 's friends field.
      $viewer = Engine_Api::_()->user()->getViewer();
      if( $viewer->getIdentity() && @$params['view'] == 1 ) {
          $params['users'] = array();
          foreach( $viewer->membership()->getMembersInfo(true) as $memberinfo ) {
            $params['users'][] = $memberinfo->user_id;
          }
          if(empty($params['users'])) $params['users'][] = 0;
      }
      $this->view->paginator = $paginator = Engine_Api::_()->getItemTable('group')
                                                           ->getGroupPaginator($params);

      //Set curent page
      $paginator->setItemCountPerPage(5);
      $paginator->setCurrentPageNumber($params['page']);

 }
}