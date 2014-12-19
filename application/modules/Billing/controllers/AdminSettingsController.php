<?php

class Billing_AdminSettingsController extends Core_Controller_Action_Standard
{
    var    $ANET_API_LOGIN_ID = '73wYAf5B';
    var    $ANET_API_TRX_KEY  = '2tAqL79L2S23gnDS';
    var    $ANET_MD5_HASH = "7AO9C7Y3L2U38DKJ83234Q2Y";
    
  public function preDispatch(){
      
  }
  
  public function settingsAction(){
    $this->view->form = $form = new Billing_Form_Admin_Settings();
       // Populate form
    $form->populate((array) Engine_Api::_()->getApi('settings', 'core')->billing);

    // Check method/data
    if( !$this->getRequest()->isPost() ) {
      return;
    }
    if( !$form->isValid($this->getRequest()->getPost()) ) {
      return;
    }

    // Save settings
    Engine_Api::_()->getApi('settings', 'core')->billing = $form->getValues();

    
    $form->addNotice('Your changes have been saved.');
  }
  /**
  *   view my account
  */
  
}
