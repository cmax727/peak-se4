<?php
class Advgroup_Widget_ProfileGroupAnnouncementsController extends Engine_Content_Widget_Abstract
{
  public function indexAction(){
     // Get paginator
        // Don't render this if not authorized
    if( !Engine_Api::_()->core()->hasSubject() ) {
      return $this->setNoRender();
    }
    $group = Engine_Api::_()->core()->getSubject();

    $table = Engine_Api::_()->getDbtable('announcements', 'advgroup');
    $select = $table->select()
      ->where('group_id = ?',$group->group_id)
      ->order('modified_date DESC')
            ->limit(1);
      ;

    $announcement = $table->fetchRow($select);

    // Hide if nothing to show
    if( !$announcement ) {
      return $this->setNoRender();
    }

    $this->view->announcement = $announcement;
  }
}
?>