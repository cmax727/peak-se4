<?php
class Advgroup_Widget_FeaturedGroupsController extends Engine_Content_Widget_Abstract
{
 public function indexAction(){
   $headScript = new Zend_View_Helper_HeadScript();
   $headScript -> appendFile('application/modules/Advgroup/externals/scripts/jquery-1.5.1.min.js');
   $headScript -> appendFile('application/modules/Advgroup/externals/scripts/jquery.divslideshow-1.2-min.js');
   $table = Engine_Api::_()->getItemTable('group');
   $select = $table->select()->where('featured = 1')->order(" RAND() ")->limit(6);
   $this->view->groups = $groups = $table->fetchAll($select);
 }
}
?>