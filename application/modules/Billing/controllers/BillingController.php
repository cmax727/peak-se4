<?php

class Billing_BillingController extends Core_Controller_Action_Standard
{
    var    $ANET_API_LOGIN_ID = '73wYAf5B';
    var    $ANET_API_TRX_KEY  = '2tAqL79L2S23gnDS';
    var    $ANET_MD5_HASH = "7AO9C7Y3L2U38DKJ83234Q2Y";
    var    $ANET_TEST_ON = true;
    
  public function init(){
      $sysConfig = Engine_Api::_()->getApi('settings', 'core')->billing;
      
      $this->ANET_API_LOGIN_ID = $sysConfig['anetapiid'];
      $this->ANET_API_TRX_KEY = $sysConfig['anetapikey'];
      $this->ANET_TEST_ON = $sysConfig['anettest'];
      $this->ANET_MD5_HASH = $sysConfig['anetsechash'];
  }
  public function preDispatch(){
      
  }
  /**
  *   view my account
  */
  public function indexAction()
  {     
        $viewer = Engine_Api::_()->user()->getViewer();
        $this->view->form = new Billing_Form_Compose($viewer);
        $this->view->user = $viewer;
  }
  
  /**
  * make payment Action
  * 
  */
  public function depositAction(){

      
      require_once(APPLICATION_PATH_LIB."/anet_php_sdk/AuthorizeNet.php");
      $viewer = Engine_Api::_()->user()->getViewer();
      
      $this->view->form = $form = new Billing_Form_Deposit($viewer);
      $this->view->status = "00";//init screen
      $this->view->returnUrl = $this->view->url(array('action'=>"index"));
      if ( $this->_request->isPost()){ //
      
          $vars = $this->_request->getPost();
          
          if ( ! $form->isValid($vars) )
            return; 
      
          $transaction = new AuthorizeNetAIM($this->ANET_API_LOGIN_ID, $this->ANET_API_TRX_KEY);
          //???
          $transaction->setSandbox($this->ANET_TEST_ON);
          
          $transaction->amount = $this->_getParam('pay_amount');
          $transaction->card_num = $this->_getParam('cc_number');
          $transaction->exp_date = $this->_getParam('exp_date');
          $response = $transaction->authorizeAndCapture();
          $this->view->response = $response;
          if ($response->approved) { // successfully approved
              
              $p_balance = $this->_request->getParam("pay_amount");
              $viewer->balance += $p_balance;
              
              $viewer->save();
              $this->view->status = "01";//welcome screen
          } else { //
              echo $response->error_message;
              $this->view->status = "02";//transaction failed
          }
          
          $this->view->form = new Billing_Form_Deposit($viewer);
          
          if ( !$this->_request->isPost()){
            return;    
          }
      }else{ //
          
          $this->view->currentBalance = $viewer->balance;
      }
      
  }
  
  /**
  * user-widthdraw function
  * 
  */
  public function withdrawAction(){
      
  }
  
  /**
  * admin-invoice function
  * 
  */
  public function invoiceAction(){
      
  }
  
  /**
  * admin-report function
  * 
  */
  public function reportAction(){
      
  }
  
  /**
  * manual payment with admin
  * 
  */
  public function manualpayAction(){
      
  }
}
