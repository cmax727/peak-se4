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
class Messages_Form_Compose extends Engine_Form
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
	if (empty($value['toValues']) && $value['toType']=="0" ||
		 empty($value['toNetworks']) && $value['toType']=="1")
	{
	  $this->_messages[] = "Select any one to send this message.";
	  $this->addError('Select any one to send this message.');  
	  return false;
	}
	return parent::isValid($value, $context);
  }
	
  public function init()
  {
	$this->setTitle('Compose Message');
	$this->setDescription('Create your new message with the form below. Your message can be addressed to up to 10 recipients.')
	   ->setAttrib('id', 'messages_compose');;

	// init toType { user /network}
	$this->addElement('select', 'toType',array(
		'label'=>'Send To',
		'multiOptions'=>array(0 => 'Users',
			1 => 'Entire Networks'),
		'value' => 0,
			)
		);
	$this->toType->setAttrib('onclick', 'changeSenderType();');
	Engine_Form::addDefaultDecorators($this->toType);

	//?? sender list { network}
	$networks = Messages_Model_Message::getAvailableNetworks($this->_user);
	$netInfo = array();
	foreach ( $networks as $net){
		$netInfo[$net->getIdentity()] = $net->title;
	}
	
	$this->addElement('multiselect', 'toNetworks',array(
		'label'=>'',
		'multiOptions'=>$netInfo,)
		);
	//$this->toNetworks->setAttrib('style', "display:none");	
	
	Engine_Form::addDefaultDecorators($this->toNetworks);

	//??
	$this->addElement('text', 'to',array(
		'label'=>'',
		'autocomplete'=>'off'));
	$this->to->setAttrib('style', "width:405px");
	Engine_Form::addDefaultDecorators($this->to);



	// Init to Values
	$this->addElement('Hidden', 'toValues', array(
	  'label' => 'Send To',
//	  'required' => true,
//	  'allowEmpty' => false,
	  'order' => 8,
	  'validators' => array(
		'NotEmpty'
	  ),
	  'filters' => array(
		'HtmlEntities'
	  ),
	));
	Engine_Form::addDefaultDecorators($this->toValues);

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