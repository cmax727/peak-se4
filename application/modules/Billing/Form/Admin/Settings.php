<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Payment
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Global.php 8221 2011-01-15 00:24:02Z john $
 * @author     John Boehr <j@webligo.com>
 */

/**
 * @category   Application_Core
 * @package    Payment
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Billing_Form_Admin_Settings extends Engine_Form
{
  public function init()
  {
    $this
      ->setTitle('Global Settings')
      ->setDescription('These settings affect all members in your community.');

    // Element: currency
    /*
    $this->addElement('Select', 'currency', array(
      'label' => 'Currency',
      'value' => 'USD',
      'description' => '-',
    ));
    $this->getElement('currency')->getDecorator('Description')->setOption('placement', 'APPEND');
    */
    
    // Element: api login id
    $this->addElement('text', 'anetapiid', array(
      'label' => 'AuthorizeNet Api ID',
      'description' => ''
     
    ));

    $this->addElement('text', 'anetapikey', array(
      'label' => 'Api Securit Key',
      'description' => ''
     
    ));
    
    $this->addElement('text', 'anetrelurl', array(
      'label' => 'Relay URL',
      'description' => ''
     
    ));
    
    $this->addElement('text', 'anetsechash', array(
      'label' => 'MD5 Secure Hash',
      'description' => ''
     
    ));
    
    $this->addElement('radio', 'anettest', array(
      'label' => 'Sandbox Test',
      'multiOptions' => array(
        true => 'Enable Test Request.',
        false => 'Active Request',
       ),
      'description' => ''
     
    ));
    


   
    $this->addElement('Button', 'execute', array(
      'label' => 'Save Changes',
      'type' => 'submit',
    ));
  }
}