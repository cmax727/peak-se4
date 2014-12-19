<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Messages
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Message.php 7418 2010-09-20 00:18:02Z john $
 * @author     John
 */

/**
 * @category   Application_Core
 * @package    Messages
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Messages_Model_Message extends Core_Model_Item_Abstract
{
  protected $_searchTriggers = false;

  public function getHref($params = array())
  {
	$params = array_merge(array(
	  'route' => 'messages_general',
	  'reset' => true,
	  'action' => 'view',
	  'id' => $this->conversation_id,
	  'message_id' => $this->getIdentity()
	), $params);
	$route = $params['route'];
	$reset = $params['reset'];
	unset($params['route']);
	unset($params['reset']);
	return Zend_Controller_Front::getInstance()->getRouter()
	  ->assemble($params, $route, $reset);
  }

  public function getAttachment()
  {
	if( !empty($this->attachment_type) && !empty($this->attachment_id) )
	{
	  return Engine_Api::_()->getItem($this->attachment_type, $this->attachment_id);
	}
  }
  
  //??saf
  public static function isMsgAllowed($user, $targetID, $type='user')
  {
	$msgPermission = Engine_Api::_()->authorization()->getPermission($user, 'messages', 'auth2') ;
	
	if ($msgPermission == "everyone" || $user->isAdmin())  
		 return true;
	if ($msgPermission == "none" )
		return false;
	
	if ( $type == 'network'){
		if ( $msgPermission == "users_net"){
			$Nselect = Engine_Api::_()->getDbtable('membership', 'network')->getMembershipsOfSelect($user);						
		}else
			return false;
	}else {// $type == 'user'
		$userTable = Engine_Api::_()->getItemTable('user');
		$mTbName = Engine_Api::_()->getDbtable('membership', 'network')->info('name');
		
		$select = $userTable->select()->from(array('u'=>$userTable->info('name')), 
				array('user_id',));
		$select->where("u.user_id in (select distinct m.user_id from $mTbName m
			where  m.resource_id in  (
				select m2.resource_id from $mTbName m2 where m2.user_id = {$user->user_id}
				)
			)"
		);
		$availableUserIds = $select->query()->fetchAll();
		if ( in_array($targetID, $availableUserIds) )
			return true;
		else
			return false;
	 }
  }
  //?/saf
  public static function getAvailableNetworks($user){
	$msgPermission = Engine_Api::_()->authorization()->getPermission($user, 'messages', 'auth2') ;
	$Nselect  = "";
	if ($msgPermission == "everyone" || $user->isAdmin()) {
		$Nselect = Engine_Api::_()->getDbtable('networks', 'network')->select();
	}else if ( $msgPermission == "users_net") {
		$Nselect = Engine_Api::_()->getDbtable('membership', 'network')->getMembershipsOfSelect($user);
	}else{
		$Nselect = Engine_Api::_()->getDbtable('networks', 'network')->select()->where("1=2");
	}
	$Nselect->order('title');
	$networks = Engine_Api::_()->getDbtable('networks', 'network')->fetchAll($Nselect);
	return $networks;	  
  }
}