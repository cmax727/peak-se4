<?php
class Advgroup_Widget_GroupsTopPostersController extends Engine_Content_Widget_Abstract
{
   public function indexAction(){
      if(!Engine_Api::_()->core()->hasSubject()) return $this->setNoRender();
      if(!$group = Engine_Api::_()->core()->getSubject('group')) return $this->setNoRender();

      $table = Engine_Api::_()->getItemTable('advgroup_post');
      $name = $table->info('name');
      $select = $table->select()->from($name,"$name.*,COUNT(post_id) as post_count")
                ->where("$name.group_id = ?", $group->group_id) -> group("$name.user_id") -> order("COUNT($name.post_id) DESC")->limit(10);
      $this->view->items = $items = $table->fetchAll($select);
      if(count($items)<=0) return $this->setNoRender();
   }
}
?>