<?php
/**
 * SocialEngine
 *
 * @category   Application_Extensions
 * @package    Event
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Category.php 9382 2011-10-14 00:41:45Z john $
 * @author     Jung
 */

/**
 * @category   Application_Extensions
 * @package    Event
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Event_Model_Category extends Core_Model_Item_Abstract
{
  protected $_searchTriggers = false;

  public function getUsedCount()
  {
    $eventTable = Engine_Api::_()->getItemTable('event');
    return $eventTable->select()
        ->from($eventTable, new Zend_Db_Expr('COUNT(event_id)'))
        ->where('category_id = ?', $this->category_id)
        ->query()
        ->fetchColumn();
  }

  public function isOwner($owner)
  {
    return false;
  }

  public function getOwner()
  {
    return $this;
  }
}
