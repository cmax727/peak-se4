<?php
/**
 * SocialEngine--Paule
 *
 * @category   Application_Core
 * @package    User
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Account.php 9557 2011-12-16 23:55:36Z john $
 * @author     John
 */

/**
 * @category   Application_Core
 * @package    User
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Network_Plugin_Signup_Network extends Core_Plugin_FormSequence_Abstract
{
  protected $_name = 'Network';

  protected $_formClass = 'Network_Form_Signup_Network';

  protected $_script = array('signup/network.tpl', 'network');
  //

  protected $_adminFormClass = 'Network_Form_Admin_Signup_Network';

  protected $_adminScript = array('admin-signup/network.tpl', 'network');

  public function init()
  {
   
  }

  public function getForm()
  {
	if( null === $this->_form ) {
	  $form = parent::getForm();
	  // @todo gateway and package check
	  $this->_form = $form;
	}
	return $this->_form;
  }

  public function onSubmit(Zend_Controller_Request_Abstract $request)
  {
	return parent::onSubmit($request);
  }

  public function onProcess()
  { //??
	// In this case, the step was placed before the account step.
	// Register a hook to this method for onUserCreateAfter
	$settings = Engine_Api::_()->getApi('settings', 'core');
	$data = $this->getSession()->data;

	// Add email and code to invite session if available
	
	// Create user
	// Note: you must assign this to the registry before calling save or it
	// will not be available to the plugin in the hook
	$this->_registry->user = $user = Engine_Api::_()->getDbtable('users', 'user')->createRow();
	
	//generate pseudo random ID
	$uidValidator = new Zend_Validate_Db_NoRecordExists(
		Engine_Db_Table::getTablePrefix() . 'users', //table
		'user_id'                                     //field
	);

	$user_id = mt_rand();
	while ( !$uidValidator->isValid($user_id)){
		$user_id = mt_rand();	 
	}
	$data['user_id']=$user_id;
	
	//create and save user ??
	$user->setFromArray($data);
	$user->save();
	
	// add network
	foreach( array($data['network_id']) as $id ) {
	  $network = Engine_Api::_()->getItem('network', $id);
	  $network->membership()->addMember($user)
		  ->setUserApproved($user)
		  ->setResourceApproved($user);
	}
	
  }

  public function onAdminProcess($form)
  {
	$step_table = Engine_Api::_()->getDbtable('signup', 'user');
	$step_row = $step_table->fetchRow($step_table->select()->where('class = ?', 'Network_Plugin_Signup_Network'));
	$step_row->enable = $form->getValue('enable');
	$step_row->save();
  }
}