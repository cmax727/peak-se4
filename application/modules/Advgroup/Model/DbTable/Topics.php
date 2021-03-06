<?php
class Advgroup_Model_DbTable_Topics extends Engine_Db_Table
{
  protected  $_name = 'group_topics';
  protected $_rowClass = 'Advgroup_Model_Topic';

  public function getTopicsPaginator($params = array())
  {
    return Zend_Paginator::factory($this->getTopicsSelect($params));
  }
  
  public function getTopicsSelect($params = array()){
    $table = Engine_Api::_()->getItemTable('advgroup_topic');
    $tableName = $table->info('name');

    $select = $table
      ->select()
      ->from($tableName)
      ->order('sticky DESC');

    //Search
    if(!empty($params['search'])){
      $select->where('title LIKE ?','%'.$params['search'].'%');
    }
    // Closed
    if(isset($params['closed']) && $params['closed'] !== '') {
      $select->where('closed = ?', $params['closed']);
    }
    
    // User
    if( !empty($params['user_id']) ) {
      $select
        ->where('user_id = ?', $params['user_id']);
    }

    //Group
    if(isset ($params['group_id'])){
        $select
        ->where('group_id = ?', $params['group_id']);
    }

    // Order
    switch( $params['order'] ) {
      case 'view':
          $select -> order('view_count DESC');
     break;
      case 'reply':
          $select -> order ('post_count DESC');
      break;
      case 'modified_date':
          $select -> order ('modified_date DESC');
      break;
      case 'recent':
      default:
          $select -> order('creation_date DESC');
      break;
    }
    return $select;
  }
}