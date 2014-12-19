<?php
class Advgroup_Model_DbTable_Invites extends Engine_Db_Table
{
  protected $_name = 'group_invites';

  public function sendInvites(User_Model_User $user, $recipients, $message, $group_id)
  {
    $settings = Engine_Api::_()->getApi('settings', 'core');
    
    // Check recipients
    if( is_string($recipients) ) {
      $recipients = preg_split("/[\s,]+/", $recipients);
    }
    if( is_array($recipients) ) {
      $recipients = array_map('strtolower', array_unique(array_filter(array_map('trim', $recipients))));
    }
    if( !is_array($recipients) || empty($recipients) ) {
      return 0;
    }
    
    // Only allow a certain number for now
    $max = $settings->getSetting('invite.max', 10);
    if( count($recipients) > $max ) {
      $recipients = array_slice($recipients, 0, $max);
    }

    // Check message
    $message = trim($message);
    
    // Get tables
    $userTable = Engine_Api::_()->getItemTable('user');
    $inviteTable = $this;
    $inviteOnlySetting = $settings->getSetting('user.signup.inviteonly', 0);

    // Get ones that are already members
    $alreadyMembers = $userTable->fetchAll(array('email IN(?)' => $recipients));
    $alreadyMemberEmails = array();
    $alreadyMemberIds = array();
    foreach( $alreadyMembers as $alreadyMember ) {
      if( in_array(strtolower($alreadyMember->email), $recipients) ) {
        $alreadyMemberEmails[] = strtolower($alreadyMember->email);
        $alreadyMemberIds[] = $alreadyMember->user_id;
      }
    }
    $alreadyMemberIds = array_unique($alreadyMemberIds);
    // Remove the ones that are already members
    $recipients = array_diff($recipients, $alreadyMemberEmails);
    $emailsSent = 0;
    $group = Engine_Api::_()->getItem('group', $group_id);
    // Send them invites
    foreach( $recipients as $recipient ) {
      // start inserting database entry
      // generate unique invite code and confirm it truly is unique
      do {
        $inviteCode = substr(md5(rand(0, 999) . $recipient), 10, 7);
      } while( null !== $inviteTable->fetchRow(array('code = ?' => $inviteCode)) );

      $row = $inviteTable->createRow();
      $row->user_id = $user->getIdentity();
      $row->recipient = $recipient;
      $row->code = $inviteCode;
      $row->timestamp = new Zend_Db_Expr('NOW()');
      $row->message = $message;
      $row->group_id = $group_id;
      $row->save();
      if($inviteOnlySetting == 2){
        $SEinviteTable = Engine_Api::_()->getDbTable('invites','invite');
        $SErow = $SEinviteTable->createRow();
        $SErow->user_id = $user->getIdentity();
        $SErow->recipient = $recipient;
        $SErow->code = $inviteCode;
        $SErow->timestamp = new Zend_Db_Expr('NOW()');
        $SErow->message = $message;
        $SErow->group_id = $group_id;
        $SErow->save();
      }
      try {
        
        $inviteUrl = ( _ENGINE_SSL ? 'https://' : 'http://' )
          . $_SERVER['HTTP_HOST']
          . Zend_Controller_Front::getInstance()->getRouter()->assemble(array(
              'module' => 'advgroup',
              'controller' => 'signup',
              'action'=>'signup',
            ), 'default', true)
          . '?'
          . http_build_query(array('code' => $inviteCode, 'email' => $recipient, 'group_id'=>$group_id))
          ;
        $inviteUrl = "<a href ='".$inviteUrl."' target='_blank'>$inviteUrl</a>";
        $message = str_replace('%invite_url%', $inviteUrl, $message);
        
        // Send mail
        $mailType = ( $inviteOnlySetting == 2 ? 'notify_advgroup_invite_nonmembers' : 'notify_advgroup_invite_nonmembers' );
        $mailParams = array(
          'host' => $_SERVER['HTTP_HOST'],
          'email' => $recipient,
          'date' => time(),
          'sender_email' => $user->email,
          'sender_title' => $user->getTitle(),
          'sender_link' => $user->getHref(),
          'sender_photo' => $user->getPhotoUrl('thumb.icon'),
          'message' => $message,
          'object_link' => $inviteUrl,
          'group_title'=> $group->getTitle(),
          'code' => $inviteCode,
        );

        Engine_Api::_()->getApi('mail', 'core')->sendSystem(
          $recipient,
          $mailType,
          $mailParams
        );
        
      } catch( Exception $e ) {
        // Silence
        if( APPLICATION_ENV == 'development' ) {
          throw $e;
        }
        continue;
      }
      
      $emailsSent++;
    }

    $user->invites_used += $emailsSent;
    $user->save();

    $ret = array();
    $ret['emailsSent'] = $emailsSent;
    $ret['alreadyMemberIds'] = $alreadyMemberIds;
    return $ret;
  }
  
  public function sendInvites_CSV(User_Model_User $user, $recipients, $message, $group_id)
  {
    $settings = Engine_Api::_()->getApi('settings', 'core');
    
    // Check recipients
    if( is_string($recipients) ) {
      $recipients = preg_split("/[\s,]+/", $recipients);
    }
    if( is_array($recipients) ) {
      $recipients = array_map('strtolower', array_unique(array_filter(array_map('trim', $recipients))));
    }
    if( !is_array($recipients) || empty($recipients) ) {
      return 0;
    }
    // Check message
    $message = trim($message);
    
    // Get tables
    $userTable = Engine_Api::_()->getItemTable('user');
    $inviteTable = $this;
    $inviteOnlySetting = $settings->getSetting('user.signup.inviteonly', 0);

    // Get ones that are already members
    $alreadyMembers = $userTable->fetchAll(array('email IN(?)' => $recipients));
    $alreadyMemberEmails = array();
    $alreadyMemberIds = array();
    foreach( $alreadyMembers as $alreadyMember ) {
      if( in_array(strtolower($alreadyMember->email), $recipients) ) {
        $alreadyMemberEmails[] = strtolower($alreadyMember->email);
        $alreadyMemberIds[] = $alreadyMember->user_id;
      }
    }
    $alreadyMemberIds = array_unique($alreadyMemberIds);
    // Remove the ones that are already members
    $recipients = array_diff($recipients, $alreadyMemberEmails);
    $emailsSent = 0;
    $group = Engine_Api::_()->getItem('group', $group_id);
    // Send them invites
    foreach( $recipients as $recipient ) {
      // start inserting database entry
      // generate unique invite code and confirm it truly is unique
      do {
        $inviteCode = substr(md5(rand(0, 999) . $recipient), 10, 7);
      } while( null !== $inviteTable->fetchRow(array('code = ?' => $inviteCode)) );

      $row = $inviteTable->createRow();
      $row->user_id = $user->getIdentity();
      $row->recipient = $recipient;
      $row->code = $inviteCode;
      $row->timestamp = new Zend_Db_Expr('NOW()');
      $row->message = $message;
      $row->group_id = $group_id;
      $row->save();
      
      if($inviteOnlySetting == 2){
        $SEinviteTable = Engine_Api::_()->getDbTable('invites','invite');
        $SErow = $SEinviteTable->createRow();
        $SErow->user_id = $user->getIdentity();
        $SErow->recipient = $recipient;
        $SErow->code = $inviteCode;
        $SErow->timestamp = new Zend_Db_Expr('NOW()');
        $SErow->message = $message;
        $SErow->group_id = $group_id;
        $SErow->save();
      }

      try {
        
        $inviteUrl = ( _ENGINE_SSL ? 'https://' : 'http://' )
          . $_SERVER['HTTP_HOST']
          . Zend_Controller_Front::getInstance()->getRouter()->assemble(array(
              'module' => 'advgroup',
              'controller' => 'signup',
              'action'=>'signup',
            ), 'default', true)
          . '?'
          . http_build_query(array('code' => $inviteCode, 'email' => $recipient, 'group_id'=>$group_id))
          ;
        $inviteUrl = "<a href ='".$inviteUrl."' target='_blank'>$inviteUrl</a>";
        $message = str_replace('%invite_url%', $inviteUrl, $message);
        
        // Send mail
        $mailType = ( $inviteOnlySetting == 2 ? 'notify_advgroup_invite_nonmembers' : 'notify_advgroup_invite_nonmembers' );
        $mailParams = array(
          'host' => $_SERVER['HTTP_HOST'],
          'email' => $recipient,
          'date' => time(),
          'sender_email' => $user->email,
          'sender_title' => $user->getTitle(),
          'sender_link' => $user->getHref(),
          'sender_photo' => $user->getPhotoUrl('thumb.icon'),
          'message' => $message,
          'object_link' => $inviteUrl,
          'group_title'=> $group->getTitle(),
          'code' => $inviteCode,
        );

        Engine_Api::_()->getApi('mail', 'core')->sendSystem(
          $recipient,
          $mailType,
          $mailParams
        );
        
      } catch( Exception $e ) {
        // Silence
        if( APPLICATION_ENV == 'development' ) {
          throw $e;
        }
        continue;
      }
      
      $emailsSent++;
    }

    $user->invites_used += $emailsSent;
    $user->save();

    $ret = array();
    $ret['emailsSent'] = $emailsSent;
    $ret['alreadyMemberIds'] = $alreadyMemberIds;
    return $ret;
  }
  public function sendUnlimitedInvites(User_Model_User $user, $recipients, $message, $group_id)
  {
    $settings = Engine_Api::_()->getApi('settings', 'core');
    
    // Check recipients
    if( is_string($recipients) ) {
      $recipients = preg_split("/[\s,]+/", $recipients);
    }
    if( is_array($recipients) ) {
      $recipients = array_map('strtolower', array_unique(array_filter(array_map('trim', $recipients))));
    }
    if( !is_array($recipients) || empty($recipients) ) {
      return 0;
    }
    
    // Check message
    $message = trim($message);
    
    // Get tables
    $userTable = Engine_Api::_()->getItemTable('user');
    $inviteTable = $this;
    $inviteOnlySetting = $settings->getSetting('user.signup.inviteonly', 0);

    // Get ones that are already members
    $alreadyMembers = $userTable->fetchAll(array('email IN(?)' => $recipients));
    $alreadyMemberEmails = array();
    $alreadyMemberIds = array();
    foreach( $alreadyMembers as $alreadyMember ) {
      if( in_array(strtolower($alreadyMember->email), $recipients) ) {
        $alreadyMemberEmails[] = strtolower($alreadyMember->email);
        $alreadyMemberIds[] = $alreadyMember->user_id;
      }
    }
    $alreadyMemberIds = array_unique($alreadyMemberIds);
    // Remove the ones that are already members
    $recipients = array_diff($recipients, $alreadyMemberEmails);
    $emailsSent = 0;
    $group = Engine_Api::_()->getItem('group', $group_id);
    // Send them invites
    foreach( $recipients as $recipient ) {
      // start inserting database entry
      // generate unique invite code and confirm it truly is unique
      do {
        $inviteCode = substr(md5(rand(0, 999) . $recipient), 10, 7);
      } while( null !== $inviteTable->fetchRow(array('code = ?' => $inviteCode)) );

      $row = $inviteTable->createRow();
      $row->user_id = $user->getIdentity();
      $row->recipient = $recipient;
      $row->code = $inviteCode;
      $row->timestamp = new Zend_Db_Expr('NOW()');
      $row->message = $message;
      $row->group_id = $group_id;
      $row->save();

      if($inviteOnlySetting == 2){
        $SEinviteTable = Engine_Api::_()->getDbTable('invites','invite');
        $SErow = $SEinviteTable->createRow();
        $SErow->user_id = $user->getIdentity();
        $SErow->recipient = $recipient;
        $SErow->code = $inviteCode;
        $SErow->timestamp = new Zend_Db_Expr('NOW()');
        $SErow->message = $message;
        $SErow->save();
      }
      
      try {
        
        $inviteUrl =( _ENGINE_SSL ? 'https://' : 'http://' )
          . $_SERVER['HTTP_HOST']
          . Zend_Controller_Front::getInstance()->getRouter()->assemble(array(
              'module' => 'advgroup',
              'controller' => 'signup',
              'action'=>'signup',
            ), 'default', true)
          . '?'
          . http_build_query(array('code' => $inviteCode, 'email' => $recipient, 'group_id'=>$group_id))
          ;
        $inviteUrl = "<a href ='".$inviteUrl."' target='_blank'>$inviteUrl</a>";
        $message = str_replace('%invite_url%', $inviteUrl, $message);
        
        // Send mail
        $mailType = ( $inviteOnlySetting == 2 ? 'notify_advgroup_invite_nonmembers' : 'notify_advgroup_invite_nonmembers' );
        $mailParams = array(
          'host' => $_SERVER['HTTP_HOST'],
          'email' => $recipient,
          'date' => time(),
          'sender_email' => $user->email,
          'sender_title' => $user->getTitle(),
          'sender_link' => $user->getHref(),
          'sender_photo' => $user->getPhotoUrl('thumb.icon'),
          'message' => $message,
          'object_link' => $inviteUrl,
          'group_title'=> $group->getTitle(),
          'code' => $inviteCode,
        );

        Engine_Api::_()->getApi('mail', 'core')->sendSystem(
          $recipient,
          $mailType,
          $mailParams
        );
        
      } catch( Exception $e ) {
        // Silence
        if( APPLICATION_ENV == 'development' ) {
          throw $e;
        }
        continue;
      }
      
      $emailsSent++;
    }

    $user->invites_used += $emailsSent;
    $user->save();

    $ret = array();
    $ret['emailsSent'] = $emailsSent;
    $ret['alreadyMemberIds'] = $alreadyMemberIds;
    return $ret;
  }
}