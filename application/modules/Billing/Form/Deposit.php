<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Messages
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Compose.php 8753 2011-03-30 22:00:28Z john $
 * @author     John
 */

/**
 * @category   Application_Core
 * @package    Messages
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Billing_Form_Deposit extends Engine_Form
{ 
    //??
    public $_user;
    public function __construct($user, array $params = null)
    {
        $this->_user = $user;
        
        parent::__construct($params);
    }

  public function isValid($value, $context = null)
  {
    return parent::isValid($value, $context);
  }
    
  public function init()
  {
    $this->setTitle('Make Payment');
    $this->setDescription('Make payment to your account')
       ->setAttrib('id', 'frm_account');;
    

    //??
    $this->addElement('text', 'pay_amount',array(
        'label'=>'Amount',
        'value'=>0,
        'validators' => array(
            array('NotEmpty', true),
            ),
        'autocomplete'=>'off'));
    $this->pay_amount->setAttrib('style', "width:70px");
    Engine_Form::addDefaultDecorators($this->pay_amount);

    $this->addElement('text', 'cc_number',array(
        'label'=>'Card Number',
        'value'=>'370000000000002',
        'autocomplete'=>'off'));
    //$this->cc_number->setAttrib('style', "width:70px");
    //Engine_Form::addDefaultDecorators($this->pay_amount);

    
    $this->addElement('text', 'exp_date',array(
        'label'=>'Exp.',
        'value'=>'0213',
        'autocomplete'=>'off'));
    $this->exp_date->setAttrib('style', "width:70px");
    //Engine_Form::addDefaultDecorators($this->pay_amount);

    
    
    
    // init submit
    $this->addElement('Button', 'submit', array(
      'label' => 'Pay',
      'order' => 99,
      'type' => 'submit',
      'ignore' => true
    ));
    
  }
}