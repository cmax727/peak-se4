<?php
class Advgroup_Widget_ProfileAlbumsController extends Engine_Content_Widget_Abstract{
  protected $_childCount;
  public function indexAction(){

    // Don't render this if not authorized
    $this->view->viewer = $viewer = Engine_Api::_()->user()->getViewer();  
    if( !Engine_Api::_()->core()->hasSubject() ) {
      return $this->setNoRender();
    }

    // Get subject and check auth
    $this->view->group = $subject = Engine_Api::_()->core()->getSubject('group');
    if( !$subject->authorization()->isAllowed($viewer, 'view') ) {
      return $this->setNoRender();
    }
    
    // Get paginator
    $table = Engine_Api::_()->getItemTable('advgroup_album');
    $select = $table->select()->where("group_id = ?",$subject->group_id)->order('modified_date DESC');
    $this->view->paginator = $paginator = Zend_Paginator::factory($select);
    $canUpload = $subject->authorization()->isAllowed(null,  'photo');

    //Check Photo Album Create Authorization
    $levelPhotoUpload = Engine_Api::_()->authorization()->getAdapter('levels')->getAllowed('group', $viewer, 'photo');
    $levelAlbumUpload = Engine_Api::_()->authorization()->getAdapter('levels')->getAllowed('group', $viewer, 'album');

    if(!$levelPhotoUpload) $levelUpload = false;
    else {
      if(!$levelAlbumUpload) $levelUpload = false;
      else $levelUpload = true;
    }

    //Check Full Upload Authorization:
    if($canUpload && $levelUpload) {
      $this->view->canUpload = true;
    }
    else{
      $this->view->canUpload = false;
    }
    
    // Set item count per page and current page number
    $paginator->setItemCountPerPage($this->_getParam('itemCountPerPage', 3));
    $paginator->setCurrentPageNumber($this->_getParam('page', 1));

    // Add count to title if configured
    if( $this->_getParam('titleCount', false) && $paginator->getTotalItemCount() > 0 ) {
      $this->_childCount = $paginator->getTotalItemCount();
    }
  }
  
  public function getChildCount()
  {
    return $this->_childCount;
  }
}
?>
