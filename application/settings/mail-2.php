<?php defined('_ENGINE') or die('Access Denied'); 
        
 if ( 1==2){
             
    return array (
      'class' => 'Zend_Mail_Transport_Sendmail',//Zend_Mail_Transport_Smtp
      'args' => array(
      )
    ); 
 }else if ( 1==3){
     return array (
      'class' => 'Zend_Mail_Transport_Smtp',
      'args' => array( 
            'host'=>'localhost', 
            'port' => 25, 
            'auth' => 'login', 
            'username' => 'forgotpassword@op2vb.com', 
            'password' => 'kdjv73o3rieg3',
            ),
        );
 }else {
     return array (
      'class' => 'Zend_Mail_Transport_Smtp',
      'args' => array( 
            'host'=>'smtp.gmail.com', 
            'port' => 25, 
            'auth' => 'login', 
            'username' => 'sasya8080@gmail.com', 
            'password' => 'rmatnrkdtks.',
            ),
        );
 }              

?>