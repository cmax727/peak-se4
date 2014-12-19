<?php
class Advgroup_Model_Category extends Core_Model_Item_Abstract
{
  protected $_searchTriggers = false;
  
  public function getTable()
  {
    if( null === $this->_table ) {
      $this->_table = Engine_Api::_()->getDbtable('categories', 'advgroup');
    }

    return $this->_table;
  }

  public function getUsedCount()
  {
    $eventTable = Engine_Api::_()->getItemTable('group');
    return $eventTable->select()
        ->from($eventTable, new Zend_Db_Expr('COUNT(group_id)'))
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
