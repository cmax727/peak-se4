<?php

/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Authorization
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Edit.php 8412 2011-02-08 23:24:28Z john $
 * @author     John
 */

/**
 * @category   Application_Core
 * @package    Authorization
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Authorization_Form_Admin_Level_Editgallery extends Authorization_Form_Admin_Level_Abstract
{ //??
  protected $_usertype;
  public function  setUsertype($type){
	  $this->_usertype = $type;
  }
  public function  getUsertype(){
	  return $this->_usertype ;
  }
  
  public function init()
  {
	parent::init();

	// My stuff
	$this
		->setTitle('Gallery Member Level Settings')
		->setDescription("AUTHORIZATION_FORM_ADMIN_LEVEL_EDIT_GALLERY_DESCRIPTION");
	
	if ( $this->isPublic())
		return;
	
	// Element: create
	  $this->addElement('Radio', 'create', array(
		'label' => 'Allow Creation of Photo Albums?',
		'description' => 'ALBUM_FORM_ADMIN_LEVEL_CREATE_DESCRIPTION',
		'value' => 1,
		'multiOptions' => array(
		  1 => 'Yes, allow creation of photo albums.',
		  0 => 'No, do not allow photo album to be created.'
		),
		'value' => 1,
	  ));
	  
	// Element: delete
	  $this->addElement('Radio', 'delete', array(
		'label' => 'Allow Deletion of Photo Albums?',
		'description' => 'Do you want to let members of this level delete photo albums?',
		'multiOptions' => array(
		  2 => 'Yes, allow members to delete all photo albums.',
		  1 => 'Yes, allow members to delete only galleries tied to user\'s network(s).',
		  0 => 'No, do not allow members to delete their photo albums.',
		),
		'value' => ( $this->isModerator() ? 2 : 1 ),
	  ));
	  if( !$this->isModerator() ) {
		unset($this->delete->options[2]);
	  }	
	  // Element: style
	$this->addElement('Radio', 'view', array(
		'label' => 'Allow Viewing',
		'required' => true,
		'description'=>'Do you want to let members of this level view photo albums?',
		'multiOptions' => array(
		  2 => 'Yes, allow members in this level to view all galleries.',
		  1 => 'Yes, allow to view only galleries tied to user\'s network(s).',
		  0 => 'No, do not allow to view any galleries.'
		),
		'value' => 1,
	  ));
	  if( !$this->isModerator() ) {
		unset($this->getElement('style')->options[2]);
	  }
	   $this->view->getDecorator('Description')->setOption('placement', 'PREPEND');  
	  // Element: delete
	  $this->addElement('Radio', 'edit', array(
		'label' => 'Allow Editing',
		'description'=>'Do you want to let members of this level edit photo albums?',
		'multiOptions' => array(
		  2 => 'Yes, allow members in this level to edit all galleries.',
		  1 => 'Yes, allow members to edit only galleries tied to user\'s network(s).',
		  0 => 'No, do not allow to edit any galleries.',
		),
		'value' => 1,
	  ));
	  $this->edit->getDecorator('Description')->setOption('placement', 'PREPEND');  
	  
	  if( $this->_usertype == 'admin' ) { //admin always have full permissions
		unset($this->edit->options[0]);
		unset($this->edit->options[1]);
		
		unset($this->view->options[0]);
		unset($this->view->options[1]);
	  }
	
	
  }
}