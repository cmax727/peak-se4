<?php
/**
 * SocialEngine
 *
 * @category   Application_Extensions
 * @package    Album
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Album.php 9071 2011-07-20 23:43:30Z john $
 * @author     Sami
 */

/**
 * @category   Application_Extensions
 * @package    Album
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Album_Model_Album extends Core_Model_Item_Abstract
{
  protected $_parent_type = 'user';

  protected $_owner_type = 'user';

  protected $_parent_is_owner = true;

  public function getHref($params = array())
  {
	$params = array_merge(array(
	  'route' => 'album_specific',
	  'reset' => true,
	  'album_id' => $this->getIdentity(),
	), $params);
	$route = $params['route'];
	$reset = $params['reset'];
	unset($params['route']);
	unset($params['reset']);
	return Zend_Controller_Front::getInstance()->getRouter()
	  ->assemble($params, $route, $reset);
  }

  public function getPhotoUrl($type = null)
  {
	if( empty($this->photo_id) ) {
	  $photoTable = Engine_Api::_()->getItemTable('album_photo');
	  $photoInfo = $photoTable->select()
		  ->from($photoTable, array('photo_id', 'file_id'))
		  ->where('album_id = ?', $this->album_id)
		  ->order('order ASC')
		  ->limit(1)
		  ->query()
		  ->fetch();
	  if( !empty($photoInfo) ) {
		$this->photo_id = $photo_id = $photoInfo['photo_id'];
		$this->save();
		$file_id = $photoInfo['file_id'];
	  } else {
		return;
	  }
	} else {
	  $photoTable = Engine_Api::_()->getItemTable('album_photo');
	  $file_id = $photoTable->select()
		  ->from($photoTable, 'file_id')
		  ->where('photo_id = ?', $this->photo_id)
		  ->query()
		  ->fetchColumn();
	}

	if( !$file_id ) {
	  return;
	}

	$file = Engine_Api::_()->getItemTable('storage_file')->getFile($file_id, $type);
	if( !$file ) {
	  return;
	}

	return $file->map();
  }
  
  public function getFirstPhoto()
  {
	$photoTable = Engine_Api::_()->getItemTable('album_photo');
	$select = $photoTable->select()
		->where('album_id = ?', $this->album_id)
		->order('order ASC')
		->limit(1);
	return $photoTable->fetchRow($select);
  }
  
  public function getLastPhoto()
  {
	$photoTable = Engine_Api::_()->getItemTable('album_photo');
	$select = $photoTable->select()
		->where('album_id = ?', $this->album_id)
		->order('order DESC')
		->limit(1);
	return $photoTable->fetchRow($select);
  }
  
  public function count()
  {
	$photoTable = Engine_Api::_()->getItemTable('album_photo');
	return $photoTable->select()
		->from($photoTable, new Zend_Db_Expr('COUNT(photo_id)'))
		->where('album_id = ?', $this->album_id)
		->limit(1)
		->query()
		->fetchColumn();
  }
  
  /**
   * Gets a proxy object for the comment handler
   *
   * @return Engine_ProxyObject
   **/
  public function comments()
  {
	return new Engine_ProxyObject($this, Engine_Api::_()->getDbtable('comments', 'core'));
  }


  /**
   * Gets a proxy object for the like handler
   *
   * @return Engine_ProxyObject
   **/
  public function likes()
  {
	return new Engine_ProxyObject($this, Engine_Api::_()->getDbtable('likes', 'core'));
  }
  
  protected function _postDelete()
  {
	$photoTable = Engine_Api::_()->getItemTable('album_photo');
	$photoSelect = $photoTable->select()
		->where('album_id = ?', $this->getIdentity())
		;
	foreach( $photoTable->fetchAll($photoSelect) as $photo ) {
	  $photo->skipAlbumDeleteHook = true;
	  try {
		$photo->delete();
	  } catch( Exception $e ) {
		// Silence
	  }
	}
	
	parent::_postDelete();
  }
  
  //?? -- check if user's networks intersect with $this album creator's network  in user's $action permission.'
  public function isAllowed_1($ser, $action){
	if ( ! $user instanceof User_Model_User ){
		return false;
	}
	// check if created by this $user
	
	/*
	if ( $this->owner_id == $user->getIdentity()){
		return true;
	} */

	if ($user->isAdmin() )
		return true;
	
	$albumPermi = Engine_Api::_()->authorization()->getPermission($user, 'album', $action) ;
	if ( $albumPermi == 2) {//all 
		return true;
	}else if ( $albumPermi == 0){ //none of permi
		return false;
	}else if ( $albumPermi == 1){ // tied networks
	
		//check if this album is created by one in user's network(s).
		$user_nIds = Engine_Api::_()->getDbtable('membership', 'network')->getMembershipsOfIds($user);
		$a_user = Engine_Api::_()->getItem('user', $this->owner_id);
		$albumcreator_nIds = Engine_Api::_()->getDbtable('membership', 'network')->getMembershipsOfIds($a_user);	
		$result = array_intersect($user_nIds, $albumcreator_nIds);
		
		if ( empty($result))
			return false;
		else
			return true;
	}
	
  }
  //??
  
  //?? -- check user's network with $this album's tied network and user's $action permission.'
  public function isAllowed($user, $action){
	if ( ! $user instanceof User_Model_User ){
		return false;
	}
	// check if created by this $user
	
	/*
	if ( $this->owner_id == $user->getIdentity()){
		return true;
	} */

	if ($user->isAdmin() )
		return true;
	
	$albumPermi = Engine_Api::_()->authorization()->getPermission($user, 'album', $action) ;
	if ( $albumPermi == 2) {//all 
		return true;
	}else if ( $albumPermi == 0){ //none of permi
		return false;
	}else if ( $albumPermi == 1){ // tied networks
	
		//check if this album is created by one in user's network(s).
		$user_nIds = Engine_Api::_()->getDbtable('membership', 'network')->getMembershipsOfIds($user);
		
		$nets = $this->getTiedNetworks();
		$albumcreator_nIds  = array();
		foreach ($nets as $net){
			$albumcreator_nIds[] = $net->network_id;  
		}
	  $result = array_intersect($user_nIds, $albumcreator_nIds);
		
		if ( empty($result))
			return false;
		else
			return true;
	}
	
  }
  
  //parameter should be network() or network_id()
  public function setTiedNetworks($networks = array()){
	  // clear all;
	  $where = "resource_id={$this->getIdentity()}";
	  Engine_Api::_()->getDbTable("networks","album")
				->delete($where);
				
	  // add
	  $rTable = Engine_Api::_()->getDbTable("networks","album")	  ;
	  foreach ( $networks as $net){
		if ( $net instanceof Core_Model_Item_Abstract){
			$net = $net->getIdentity();
		}
		$row = $rTable->createRow();
		
		$row->network_id = $net;
		$row->resource_id = $this->album_id;
		
		$row->save();
	  }
  }
  
  public function addTiedNetwork($net){
	  
  }
  public function removeTiedNetwork($net){
	  
  }
  
  public function getTiedNetworks(){
	  $netTb = Engine_Api::_()->getDbTable("networks", "network");
	  
	  $rTable = Engine_Api::_()->getDbTable("networks","album");
	  
	  $select = $netTb->select()
				->from( array("a" => $netTb->info('name')))
				->join("{$rTable->info('name')} as r", " a.network_id=r.network_id ", array())
				->where("resource_id=?", $this->getIdentity());
	  
	  $networks =  Engine_Api::_()->getDbTable("networks", "network")->fetchAll($select);
	  return $networks;
  }
  
}
