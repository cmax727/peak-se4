<?php
class Advgroup_Plugin_Menus
{
  public function canCreateGroups()
  {
    // Must be logged in
    $viewer = Engine_Api::_()->user()->getViewer();
    if( !$viewer || !$viewer->getIdentity() ) {
      return false;
    }

    // Must be able to create events
    if( !Engine_Api::_()->authorization()->isAllowed('group', $viewer, 'create') ) {
      return false;
    }

    return true;
  }

  public function canViewGroups()
  {
    $viewer = Engine_Api::_()->user()->getViewer();

    // Must be able to view events
    if( !Engine_Api::_()->authorization()->isAllowed('group', $viewer, 'view') ) {
      return false;
    }

    return true;
  }

  public function onMenuInitialize_AdvgroupMainManage()
  {
    $viewer = Engine_Api::_()->user()->getViewer();

    if( !$viewer->getIdentity() )
    {
      return false;
    }
    return true;
  }

  public function onMenuInitialize_AdvgroupMainCreate()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    
    if( !$viewer->getIdentity() )
    {
      return false;
    }

    if( !Engine_Api::_()->authorization()->isAllowed('group', null, 'create') )
    {
      return false;
    }

    return true;
  }

  public function onMenuInitialize_AdvgroupManageAnnouncement()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    $allow_manage = Engine_Api::_()->authorization()->getAdapter("levels")->getAllowed('group', $viewer, 'announcement');
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }
    if( !$viewer->getIdentity() )
    {
      return false;
    }
    if(!$subject->isOwner($viewer) && !$allow_manage){
      return false;
    }
    return array(
      'label' => 'Manage Announcement',
      'icon' => 'application/modules/Advgroup/externals/images/member/promote.png',
      'route' => 'group_extended',
      'params' => array(
        'controller' => 'announcement',
        'action' => 'manage',
        'group_id' => $subject->getIdentity(),
      )
    );
    
  }
  
  public function onMenuInitialize_AdvgroupProfileEdit()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$viewer->getIdentity() || !$subject->authorization()->isAllowed($viewer, 'edit') )
    {
      return false;
    }

    if( !$subject->authorization()->isAllowed($viewer, 'edit') )
    {
      return false;
    }
    
    return array(
      'label' => 'Edit Group Details',
      'icon' => 'application/modules/Advgroup/externals/images/edit.png',
      'route' => 'group_specific',
      'params' => array(
        'controller' => 'group',
        'action' => 'edit',
        'group_id' => $subject->getIdentity(),
        'ref' => 'profile'
      )
    );
  }

  public function onMenuInitialize_AdvgroupProfileStyle()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$viewer->getIdentity() || !$subject->authorization()->isAllowed($viewer, 'edit') )
    {
      return false;
    }

    if( !$subject->authorization()->isAllowed($viewer, 'style') )
    {
      return false;
    }

    return array(
      'label' => 'Edit Group Style',
      'icon' => 'application/modules/Advgroup/externals/images/style.png',
      'class' => 'smoothbox',
      'route' => 'group_specific',
      'params' => array(
        'action' => 'style',
        'group_id' => $subject->getIdentity(),
        'format' => 'smoothbox',
      )
    );
  }

  public function onMenuInitialize_AdvgroupProfileMember()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$viewer->getIdentity() )
    {
      return false;
    }

    $row = $subject->membership()->getRow($viewer);

    // Not yet associated at all
    if( null === $row )
    {
      if( $subject->membership()->isResourceApprovalRequired() ) {
        return array(
          'label' => 'Request Membership',
          'icon' => 'application/modules/Advgroup/externals/images/member/join.png',
          'class' => 'smoothbox',
          'route' => 'group_extended',
          'params' => array(
            'controller' => 'member',
            'action' => 'request',
            'group_id' => $subject->getIdentity(),
          ),
        );
      } else {
        return array(
          'label' => 'Join Group',
          'icon' => 'application/modules/Advgroup/externals/images/member/join.png',
          'class' => 'smoothbox',
          'route' => 'group_extended',
          'params' => array(
            'controller' => 'member',
            'action' => 'join',
            'group_id' => $subject->getIdentity()
          ),
        );
      }
    }

    // Full member
    // @todo consider owner
    else if( $row->active )
    {
      if( !$subject->isOwner($viewer) ) {
        return array(
          'label' => 'Leave Group',
          'icon' => 'application/modules/Advgroup/externals/images/member/leave.png',
          'class' => 'smoothbox',
          'route' => 'group_extended',
          'params' => array(
            'controller' => 'member',
            'action' => 'leave',
            'group_id' => $subject->getIdentity()
          ),
        );
      } else {
        return array(
          'label' => 'Delete Group',
          'icon' => 'application/modules/Advgroup/externals/images/delete.png',
          'class' => 'smoothbox',
          'route' => 'group_specific',
          'params' => array(
            'action' => 'delete',
            'group_id' => $subject->getIdentity()
          ),
        );
      }
    }

    else if( !$row->resource_approved && $row->user_approved )
    {
      return array(
        'label' => 'Cancel Membership Request',
        'icon' => 'application/modules/Advgroup/externals/images/member/cancel.png',
        'class' => 'smoothbox',
        'route' => 'group_extended',
        'params' => array(
          'controller' => 'member',
          'action' => 'cancel',
          'group_id' => $subject->getIdentity()
        ),
      );
    }

    else if( !$row->user_approved && $row->resource_approved )
    {
      return array(
        array(
          'label' => 'Accept Membership Request',
          'icon' => 'application/modules/Advgroup/externals/images/member/accept.png',
          'class' => 'smoothbox',
          'route' => 'group_extended',
          'params' => array(
            'controller' => 'member',
            'action' => 'accept',
            'group_id' => $subject->getIdentity()
          ),
        ), array(
          'label' => 'Ignore Membership Request',
          'icon' => 'application/modules/Advgroup/externals/images/member/reject.png',
          'class' => 'smoothbox',
          'route' => 'group_extended',
          'params' => array(
            'controller' => 'member',
            'action' => 'reject',
            'group_id' => $subject->getIdentity()
          ),
        )
      );
    }

    else
    {
      throw new Advgroup_Model_Exception('Wow, something really strange happened.');
    }


    return false;
  }

  public function onMenuInitialize_AdvgroupProfileReport()
  {
    return false;
  }

  public function onMenuInitialize_AdvgroupProfileInvite()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();

    if( $subject->getType() !== 'group' ) {
      throw new Group_Model_Exception('Whoops, not a group!');
    }

    if( !$subject->authorization()->isAllowed($viewer, 'invite') ) {
      return false;
    }

    return array(
      'label' => 'Invite Members',
      'icon' => 'application/modules/Advgroup/externals/images/member/invite.png',
      'class' => 'smoothbox',
      'route' => 'group_extended',
      'params' => array(
        //'module' => 'group',
        'controller' => 'member',
        'action' => 'invite',
        'group_id' => $subject->getIdentity(),
        'format' => 'smoothbox',
      ),
    );
  }

  public function onMenuInitialize_AdvgroupProfileShare()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$viewer->getIdentity() )
    {
      return false;
    }
    
    return array(
      'label' => 'Share Group',
      'icon' => 'application/modules/Advgroup/externals/images/share.png',
      'class' => 'smoothbox',
      'route' => 'default',
      'params' => array(
        'module' => 'activity',
        'controller' => 'index',
        'action' => 'share',
        'type' => $subject->getType(),
        'id' => $subject->getIdentity(),
        'format' => 'smoothbox',
      ),
    );
  }

  public function onMenuInitialize_AdvgroupProfileMessage()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' ) {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$viewer->getIdentity() || !$subject->membership()->isMember($viewer) ) {
      return false;
    }

    return array(
      'label' => 'Message Members',
      'icon' => 'application/modules/Messages/externals/images/send.png',
      'route' => 'messages_general',
      'params' => array(
        'action' => 'compose',
        'to' => $subject->getIdentity(),
        'multi' => 'group'
      )
    );
  }

    public function onMenuInitialize_AdvgroupProfileInvitenew(){
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
//    $moduleTable = Engine_Api::_()->getDbTable('modules','core');
//    $select = $moduleTable->select()->where('name = ?','contactimporter')->limit(1);
//    $module = $moduleTable->fetchRow($select);
//    if($module && $module->enabled == 1) return false;
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$subject->authorization()->isAllowed($viewer, 'invite') ) {
      return false;
    }

    return array(
      'label' => 'Invite New Guests',
      'icon' => 'application/modules/Advgroup/externals/images/member/invite.png',
      'route' => 'group_extended',
      'class' => 'smoothbox',
      'params' => array(
        //'module' => 'group',
        'controller' => 'invite',
        'action' => 'invite',
        'group_id' => $subject->getIdentity(),
      )
    );
  }

  public function onMenuInitialize_AdvgroupProfileAlbum(){
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$subject->authorization()->isAllowed($viewer, 'view') ) {
      return false;
    }
     return array(
      'label' => 'Group Albums',
      'icon' => 'application/modules/Advgroup/externals/images/photo/view.png',
      'route' => 'group_extended',
      'params' => array(
        'controller' => 'album',
        'action' => 'list',
        'subject' => $subject->getGuid(),
      )
    );
  }

    public function onMenuInitialize_AdvgroupProfileDiscussion(){
     $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$subject->authorization()->isAllowed($viewer, 'view') ) {
      return false;
    }
     return array(
      'label' => 'Group Discussions',
      'icon' => 'application/modules/Advgroup/externals/images/types/post.png',
      'route' => 'group_extended',
      'params' => array(
        'controller' => 'topic',
        'action' => 'index',
        'subject' => $subject->getGuid(),
      )
    );
  }


  public function onMenuInitialize_AdvgroupProfileEvent(){
    return false;
  }
  
  public function onMenuInitialize_AdvgroupProfilePoll(){
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if( !$subject->authorization()->isAllowed($viewer, 'view') ) {
      return false;
    }
     return array(
      'label' => 'Group Polls',
      'icon' => 'application/modules/Advgroup/externals/images/poll/poll.png',
      'route' => 'group_extended',
      'params' => array(
        'controller' => 'poll',
        'action' => 'list',
        'subject' => $subject->getGuid(),
      )
    );
  }
  public function onMenuInitialize_AdvgroupProfileUsefulLink(){
    $viewer = Engine_Api::_()->user()->getViewer();
    $subject = Engine_Api::_()->core()->getSubject();
    if( $subject->getType() !== 'group' )
    {
      throw new Advgroup_Model_Exception('Whoops, not a group!');
    }

    if(!$subject->isOwner($viewer)) {
      return false;
    }
     return array(
      'label' => 'Group Useful Links',
      'icon' => 'application/modules/Advgroup/externals/images/edit.png',
      'route' => 'group_link',
      'params' => array(
        'action' => 'manage',
        'subject' => $subject->getGuid(),
      )
    );
  }
  
  public function onMenuInitialize_AdvgroupProfileInviteContactImport(){
      return false;
//    $viewer = Engine_Api::_()->user()->getViewer();
//    $subject = Engine_Api::_()->core()->getSubject();
//    $moduleTable = Engine_Api::_()->getDbTable('modules','core');
//    $select = $moduleTable->select()->where('name = ?','contactimporter')->limit(1);
//    $module = $moduleTable->fetchRow($select);
//    if(!$module || $module->enabled == 0) return false;
//    if( $subject->getType() !== 'group' )
//    {
//      throw new Advgroup_Model_Exception('Whoops, not a group!');
//    }
//
//    if( !$subject->authorization()->isAllowed($viewer, 'invite') ) {
//      return false;
//    }
//
//    return array(
//      'label' => 'Invite New Guests',
//      'icon' => 'application/modules/Advgroup/externals/images/member/invite.png',
//      'route' => 'contactimporter',
//      'params'=> array( 'group_id'=> $subject->getIdentity(),),
//    );
  }
}