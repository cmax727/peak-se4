<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    User
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Edit.php 9414 2011-10-19 22:10:29Z john $
 * @author     John
 */

/**
 * @category   Application_Core
 * @package    User
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class User_Form_Admin_Manage_Edit extends Fields_Form_Standard
{
  protected $_userIdentity;
  //??
  protected $_mangerEditFields;
  //??
  protected $_fieldType = 'user'; 
  
  public function setUserIdentity($userIdentity)
  {
	$this->_userIdentity = (int) $userIdentity;
	return $this;
  }
  
  //??
  public function setManagerEdit($managerEditFields)
  {
	$this->$_mangerEditFields = (array) $managerEditFields;
	return $this;
  }
  
  public function init()
  {   
	  $this
	  ->setAttrib('id', 'admin_members_edit')
			->setItem(Engine_Api::_()->user()->getUser($this->_userIdentity)) //??
	  ->setTitle('Edit Member')
	  ->setDescription('You can change the details of this member\'s account here.')
	  ->setAction($_SERVER['REQUEST_URI']);
	
	 //user label
	$loginID = Zend_Registry::get('Zend_Translate')->_('Login ID'); // orign: Email Address
	// init Login Id
	$this->addElement('Text', 'ulogin_id', array(
	  'label' => $loginID,
	  'required' => true,
	  'allowEmpty' => false,
	  'filters' => array(
		'StringTrim','StringToLower',
		),
	  'validators' => array(
		'alnum',
		 array('Db_NoRecordExists', true, array(
		  Engine_Db_Table::getTablePrefix() . 'users', 'ulogin_id', array(
			'field' => 'user_id',
			'value' => (int) $this->_userIdentity
		)))
		 //array('regex', false, array('/^[^\0-9][a-z@._\-]/i')),
		),
	  // Fancy stuff
	  'tabindex' => $tabindex++,
	  'autofocus' => 'autofocus',
	  'inputType' => 'text',//o=email
	  'class' => 'text',
	));
	
	// init email
	$this->addElement('Text', 'email', array(
	  'label' => 'Email Address',
	  'validators' => array(
		array('NotEmpty', true),
		array('EmailAddress', true),
// array('Db_NoRecordExists', true, array(
//          Engine_Db_Table::getTablePrefix() . 'users', 'email', array(
//            'field' => 'user_id',
//            'value' => (int) $this->_userIdentity
//       )))
	  ),
	  'filters' => array(
		'StringTrim'
	  )
	));

	// init username
	if( Engine_Api::_()->getApi('settings', 'core')->getSetting('user.signup.username', 1) > 0 ) {
	  $this->addElement('Text', 'username', array(
		'label' => 'Username'
	  ));
	}

	// init password
	$this->addElement('Password', 'password', array(
	  'label' => 'Password',
	));
	$this->addElement('Password', 'password_conf', array(
	  'label' => 'Password Again',
	));

	// Init level
	$levelMultiOptions = array(); //0 => ' ');
	$levels = Engine_Api::_()->getDbtable('levels', 'authorization')->fetchAll();
	foreach( $levels as $row ) {
	  $levelMultiOptions[$row->level_id] = $row->getTitle();
	}
	$this->addElement('Select', 'level_id', array(
	  'label' => 'Member Level',
	  'multiOptions' => $levelMultiOptions
	));

	// Init Network ??
	$networkMultiOptions = array(); //0 => ' ');
	$networks = Engine_Api::_()->getDbtable('networks', 'network')->select()->order('title');
	$networks = $networks->getTable()->fetchAll($networks);
	foreach( $networks as $row ) {
	  $networkMultiOptions[$row->network_id] = $row->getTitle();
	}
	$this->addElement('Multiselect', 'network_id', array(
	  'label' => 'Networks',
	  'multiOptions' => $networkMultiOptions
	));

	// Init approved
	$this->addElement('Checkbox', 'approved', array(
	  'label' => 'Approved?',
	));

	// Init verified
	$this->addElement('Checkbox', 'verified', array(
	  'label' => 'Verified?'
	));

	// Init enabled
	$this->addElement('Checkbox', 'enabled', array(
	  'label' => 'Enabled?',
	));

	// Buttons
	$this->addElement('Button', 'submit', array(
	  'label' => 'Save Changes',
	  'type' => 'submit',
	  'ignore' => true,
	  'decorators' => array('ViewHelper')
	));

	$this->addElement('Cancel', 'cancel', array(
	  'label' => 'cancel',
	  'link' => true,
	  'prependText' => ' or ',
	  'onclick' => 'parent.Smoothbox.close();',
	  'decorators' => array(
		'ViewHelper'
	  )
	));
	//** No. 10 **//
	$this->generateManageEditFields();
	
	
	
	$this->addDisplayGroup(array('submit', 'cancel'), 'buttons');
	$button_group = $this->getDisplayGroup('buttons');
	$button_group->addDecorator('DivDivDivWrapper');
  }
  
  //??
  public function generateManageEditFields(){
	  $profileForm = new Engine_Form(); // ?? manage-edit-profile form
	  Fields_Form_Standard::enableForm($profileForm);
	  
	  $this->addElement("Heading", "heading_manage_edit", 
			array('value'=>"========= Profile Fields ========="));
	  $element = $this->getElement("heading_manage_edit");
	  $element->removeDecorator('Label')
		  ->removeDecorator('HtmlTag')
		  ->getDecorator('HtmlTag2')->setOption('class', 'form-wrapper-heading');
		  
	$struct = $this->getFieldStructure();

	$orderIndex = 0;

	foreach( $struct as $fskey => $map )
	{
	  $field = $map->getChild();

	  // Skip fields hidden on signup
	  if( isset($field->show) && !$field->manage_edit) {
		continue;
	  }
	  
	  // Add field and load options if necessary
	  $params = $field->getElementParams($this->getItem());

	  //$key = 'field_' . $field->field_id;
	  $key = $map->getKey();
	  
	  // If value set in processed values, set in element
	  if( !empty($this->_processedValues[$field->field_id]) )
	  {
		$params['options']['value'] = $this->_processedValues[$field->field_id];
	  }

	  if( !@is_array($params['options']['attribs']) ) {
		$params['options']['attribs'] = array();
	  }
	  
	  // Heading
	  /* 
	  if( $params['type'] == 'Heading' )
	  {
		$params['options']['value'] = Zend_Registry::get('Zend_Translate')->_($params['options']['label']);
		unset($params['options']['label']);
	  } */

	  // Order
	  // @todo this might cause problems, however it will prevent multiple orders causing elements to not show up
	  //$params['options']['order'] = $orderIndex++;
	  unset($params['options']['order'] );
	  
	  $inflectedType = Engine_Api::_()->fields()->inflectFieldType($params['type']);
	  unset($params['options']['alias']);
	  unset($params['options']['publish']);
	  
	  
	  $profileForm->addElement($inflectedType, $key, $params['options']);
	  $element = $profileForm->getElement($key);

	  if( method_exists($element, 'setFieldMeta') ) {
		$element->setFieldMeta($field);
	  }
	  
	  // Set attributes for hiding/showing fields using javscript
	  $classes = 'field_container field_'.$map->child_id.' option_'.$map->option_id.' parent_'.$map->field_id;
	  $element->setAttrib('class', $classes);

	  //
	  if( $field->canHaveDependents() ) {
		$element->setAttrib('onchange', 'changeFields(this)');
	  }

	  // Set custom error message
	  if($field->error){
		$element->addErrorMessage($field->error);
	  }

	  if( $field->isHeading() )
	  {
		$element->removeDecorator('Label')
		  ->removeDecorator('HtmlTag')
		  ->getDecorator('HtmlTag2')->setOption('class', 'form-wrapper-heading');
	  }
	}
	// add subform
	$this->addSubForms(array("profileForm" => $profileForm));
  }
  
}