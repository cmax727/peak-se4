<?php
class Advgroup_Widget_GroupsSearchController extends Engine_Content_Widget_Abstract
{
  public function indexAction(){
    // Get quick navigation.
    $this->view->quickNavigation = $quickNavigation = Engine_Api::_()->getApi('menus', 'core')
      ->getNavigation('advgroup_quick');
    
    // Create search form.
    $search_form = $this->view->form = new Advgroup_Form_Search();
    $search_form->setAction($this->view->baseUrl() . "/groups/listing");

    // Check post method.
    if($_POST){
        $search_form->isValid($_POST);
    }
    else{

      //Get session if it exists.
      $category_id = "";
      $view ="";
      $order="";
      $session_AdvGroupSearch = new Zend_Session_Namespace('AdvGroupSearch');
      if ($session_AdvGroupSearch) {
				if (isset($session_AdvGroupSearch->category_id)) {
					$category_id = trim($session_AdvGroupSearch->category_id);
				}
				if (isset($session_AdvGroupSearch->view)) {
					$view = (int)($session_AdvGroupSearch->view);
				}
        if(isset($session_AdvGroupSearch->order)) {
          $order = trim($session_AdvGroupSearch->order);
          }
			}

      // Populate form.
      if($category_id) $search_form->getElement('category_id')->setValue($category_id);
      if($view) $search_form->getElement('view')->setValue($view);
      if($order) $search_form->getElement('order')->setValue($order);
    }
  }
}