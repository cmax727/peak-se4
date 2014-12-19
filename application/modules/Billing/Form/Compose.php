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
class Billing_Form_Compose extends Engine_Form
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
	$this->setTitle('Account Statement');
	$this->setDescription('Your account state.')
	   ->setAttrib('id', 'frm_account');;
    


	//??
	$this->addElement('heading', 'to',array(
		'label'=>'Account ID',
		'autocomplete'=>'off'));
	$this->to->setAttrib('disabled', "true");
	Engine_Form::addDefaultDecorators($this->to);



	
	// init title
	$this->addElement('Text', 'title', array(
	  'label' => 'Subject',
	  'order' => 9,
	  'filters' => array(
		new Engine_Filter_Censor(),
		new Engine_Filter_HtmlSpecialChars(),
	  ),
	));
	
	// init body
	$this->addElement('Textarea', 'body', array(
	  'label' => 'Message',
	  'order' => 10,
	  'required' => true,
	  'allowEmpty' => false,
	  'filters' => array(
		new Engine_Filter_HtmlSpecialChars(),
		new Engine_Filter_Censor(),
		new Engine_Filter_EnableLinks(),
	  ),
	));

	// init submit
	$this->addElement('Button', 'submit', array(
	  'label' => 'Send Message',
	  'order' => 99,
	  'type' => 'submit',
	  'ignore' => true
	));
  }
}