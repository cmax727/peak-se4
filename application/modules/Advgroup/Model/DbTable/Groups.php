<?php
class Advgroup_Model_DbTable_Groups extends Engine_Db_Table
{
  protected $_name = 'group_groups';
  protected $_rowClass = 'Advgroup_Model_Group';
  
  public function getGroupPaginator($params = array())
  {
    return Zend_Paginator::factory($this->getGroupSelect($params));
  }
  
  public function getGroupSelect($params = array())
  {
    $groupTable = Engine_Api::_()->getItemTable('group');
    $groupName = $groupTable->info('name');
    $select = $groupTable->select()->from($groupName);
   if( !empty($params['order']) && $params['order'] === 'most_active'){
       $topicTable = Engine_Api::_()->getItemTable('advgroup_topic');
       $topicName =$topicTable ->info('name');
       $select  ->setIntegrityCheck(false)
                ->joinLeft($topicName, "$topicName.group_id = $groupName.group_id","$topicName.topic_id")
                ->group("$groupName.group_id")
                ->order("COUNT('topic_id') DESC");
    }
    else {
       // Order
      if( !empty($params['order'])) {
        $select->order($params['order']);
      } else {
        $select->order('creation_date DESC');
      }
    }
    // Search
    if( isset($params['search']) ) {
      $select->where("$groupName.search = ?", (bool) $params['search']);
    }

    //Search Text
     if( !empty($params['text']) ){
       $select->where("$groupName.title LIKE ? OR $groupName.description LIKE ? ", '%'.$params['text'].'%');
     }
    // User-based
    if( !empty($params['owner']) && $params['owner'] instanceof Core_Model_Item_Abstract ) {
      $select->where("$groupName.user_id = ?", $params['owner']->getIdentity());
    } else if( !empty($params['user_id']) ) {
      $select->where("$groupName.user_id = ?", $params['user_id']);
    } else if( !empty($params['users']) && is_array($params['users']) ) {
      foreach( $params['users'] as &$id ) if( !is_numeric($id) ) $id = 0;
      $params['users'] = array_filter($params['users']);
      $select->where("$groupName.user_id IN(\'".join("', '", $params['users'])."\')");
    }
    //Group_based
    if(!empty($params['group_ids']) && is_array($params['group_ids'])){
      $select->where("$groupName.group_id IN(?)",$params['group_ids']);
    }
    
    // Category
    if( !empty($params['category_id']) ) {
      $select->where("$groupName.category_id = ?", $params['category_id']);
    }
    return $select;
  }
}