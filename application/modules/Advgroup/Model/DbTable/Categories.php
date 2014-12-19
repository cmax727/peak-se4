<?php
class Advgroup_Model_DbTable_Categories extends Engine_Db_Table
{
  protected $_name = 'group_categories';
  protected $_rowClass = 'Advgroup_Model_Category';

  public function getCategories(){
    $select = $this->select()->order("title ASC");
    return $this->fetchAll($select);
  }
  public function getCategoriesAssoc()
  {
    $stmt = $this->select()
        ->from($this, array('category_id', 'title'))
        ->order('title ASC')
        ->query();
    
    $data = array();
    $data[0] ="";
    foreach( $stmt->fetchAll() as $category ) {
      $data[$category['category_id']] = $category['title'];
    }
    
    return $data;
  }
}