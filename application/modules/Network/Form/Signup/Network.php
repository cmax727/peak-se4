<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Network
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Network.php 8544 2011-03-02 00:15:57Z jung $
 * @author     Sami
 * @author     John
 */

/**
 * @category   Application_Core
 * @package    Network
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Network_Form_Signup_Network extends Engine_Form
{
	public function init()
  	{  
  		$settings = Engine_Api::_()->getApi('settings', 'core');
	    $tabIndex = 1;
	    
	    // Init form
	    $this->setTitle('Select Network');
	    
	/*     // Init level
	    $levelMultiOptions = array(); //0 => ' ');
	    $levels = Engine_Api::_()->getDbtable('levels', 'authorization')->fetchAll();
	    foreach( $levels as $row ) {
	      $levelMultiOptions[$row->level_id] = $row->getTitle();
	    }
	    $this->addElement('Select', 'level_id', array(
	      'label' => 'Member Level',
	      'multiOptions' => $levelMultiOptions
	    ));
     */
     
	    // Init Network ??
	    $networkMultiOptions = array(''=>''); //0 => ' ');
	    $networks = Engine_Api::_()->getDbtable('networks', 'network')->fetchAll();
	    foreach( $networks as $row ) {
	      $networkMultiOptions[$row->network_id] = $row->getTitle();
	    }
	    $this->addElement('Select', 'network_id', array(
	      'description' => "Network you want to take part",      
	      'label' => 'Network ',
	      'required' => true,
          'allowEmpty' => false,
          'multiOptions' => $networkMultiOptions
	    ));
	    
	    $this->network_id->getDecorator('Description')->setOptions(array('placement' => 'APPEND'));
	    // Init submit
	    $this->addElement('Button', 'submit', array(
	      'label' => 'Continue',
	      'type' => 'submit',
	      'ignore' => true,
	      'tabindex' => $tabIndex++,
	    ));
	    
  	}
}
