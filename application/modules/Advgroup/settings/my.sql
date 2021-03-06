-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_links`
--
CREATE TABLE IF NOT EXISTS `engine4_group_links`(
  `link_id` int(11) unsigned NOT NULL auto_increment,
  `group_id` int(11) unsigned NOT NULL,
  `owner_id` int(11) unsigned NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link_content`varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL,
   PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_announcements`
--
CREATE TABLE IF NOT EXISTS `engine4_group_announcements` (
  `announcement_id` int(11) unsigned NOT NULL auto_increment,
  `group_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NULL,
  PRIMARY KEY  (`announcement_id`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_invites`
--
CREATE TABLE IF NOT EXISTS `engine4_group_invites` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `message` text NOT NULL,
  `new_user_id` int(11) unsigned NOT NULL default '0',
  `group_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_polls`
--
CREATE TABLE IF NOT EXISTS `engine4_group_polls` (
  `poll_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `group_id`int(11) unsigned NOT NULL,
  `is_closed` tinyint(1) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `creation_date` datetime NOT NULL,
  `view_count` int(11) unsigned NOT NULL default '0',
  `comment_count` int(11) unsigned NOT NULL default '0',
  `vote_count` int(11) unsigned NOT NULL default '0',
  `search` tinyint(1) NOT NULL default '1',
  `closed` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`poll_id`),
  KEY `user_id` (`user_id`),
  KEY `is_closed` (`is_closed`),
  KEY `creation_date` (`creation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_poll_options`
--
CREATE TABLE IF NOT EXISTS `engine4_group_poll_options` (
  `poll_option_id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) unsigned NOT NULL,
  `poll_option` text NOT NULL,
  `votes` smallint(4) unsigned NOT NULL,
  PRIMARY KEY  (`poll_option_id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_poll_votes`
--
CREATE TABLE IF NOT EXISTS `engine4_group_poll_votes` (
  `poll_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `poll_option_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`poll_id`,`user_id`),
  KEY `poll_option_id` (`poll_option_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_field_maps`
--
CREATE TABLE IF NOT EXISTS `engine4_group_fields_maps` (
  `field_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `order` smallint(6) NOT NULL,
  PRIMARY KEY (`field_id`,`option_id`,`child_id`),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_field_meta`
--
CREATE TABLE IF NOT EXISTS `engine4_group_fields_meta` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `display` tinyint(1) unsigned NOT NULL,
  `search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `order` smallint(3) unsigned NOT NULL DEFAULT '999',
  `config` text NOT NULL,
  `validators` text COLLATE utf8_unicode_ci,
  `filters` text COLLATE utf8_unicode_ci,
  `style` text COLLATE utf8_unicode_ci,
  `error` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_field_options`
--
CREATE TABLE IF NOT EXISTS `engine4_group_fields_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '999',
  PRIMARY KEY (`option_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_field_searchs`
--
CREATE TABLE IF NOT EXISTS `engine4_group_fields_search` (
  `item_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `price` (`price`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- --------------------------------------------------------
--
-- Table structure for table `engine4_group_field_values`
--
CREATE TABLE IF NOT EXISTS `engine4_group_fields_values` (
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `index` smallint(3) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`item_id`,`field_id`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- --------------------------------------------------------
--
-- Add colmun for table `engine4_group_albums`
--
ALTER TABLE `engine4_group_albums` ADD COLUMN `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `group_id`;
-- --------------------------------------------------------
--
-- Add colmun for table `engine4_group_albums`
--
ALTER TABLE `engine4_group_groups` ADD COLUMN `featured` tinyint(1) NOT NULL default '0' AFTER `approval`;
-- --------------------------------------------------------
--
-- Dumping data for table `engine4_core_modules`
--
INSERT IGNORE INTO `engine4_core_modules` (`name`, `title`, `description`, `version`, `enabled`, `type`) VALUES  
('advgroup', 'Advgroup', 'Advanced Groups', '4.02', 1, 'extra') ;
-- --------------------------------------------------------
--
-- Dumping data for table `engine4_core_jobtypes`
--

INSERT IGNORE INTO `engine4_core_jobtypes` (`title`, `type`, `module`, `plugin`, `priority`) VALUES
('Rebuild Group Privacy', 'advgroup_maintenance_rebuild_privacy', 'advgroup', 'Advgroup_Plugin_Job_Maintenance_RebuildPrivacy', 50);
-- --------------------------------------------------------
--
-- Dumping data for table `engine4_core_mailtemplates`
--
INSERT IGNORE INTO `engine4_core_mailtemplates` (`type`, `module`, `vars`) VALUES
('notify_advgroup_accepted', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
('notify_advgroup_approve', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
('notify_advgroup_discussion_reply', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
('notify_advgroup_discussion_response', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
('notify_advgroup_invite', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
('notify_advgroup_promote', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
('notify_advgroup_invite_nonmembers', 'advgroup', '[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[object_link],[code],[group_link],[group_title],[message]');
-- --------------------------------------------------------
--
-- Dumping data for table `engine4_core_menus`
--
INSERT IGNORE INTO `engine4_core_menus` (`name`, `type`, `title`) VALUES
('advgroup_main', 'standard', 'Advanced Group Main Navigation Menu'),
('advgroup_profile', 'standard', 'Advanced Group Profile Options Menu');
-- --------------------------------------------------------
--
-- Dumping data for table `engine4_core_menuitems`
--
INSERT IGNORE INTO `engine4_core_menuitems` (`name`, `module`, `label`, `plugin`, `params`, `menu`, `submenu`, `order`) VALUES
('core_main_advgroup', 'advgroup', 'Groups', '', '{"route":"group_general"}', 'core_main', '', 6),

('core_sitemap_advgroup', 'advgroup', 'Groups', '', '{"route":"group_general"}', 'core_sitemap', '', 6),

('advgroup_main_browse', 'advgroup', 'Browse Groups', '', '{"route":"group_general","action":"browse"}', 'advgroup_main', '', 1),
('advgroup_main_manage', 'advgroup', 'My Groups', 'Advgroup_Plugin_Menus', '{"route":"group_general","action":"manage"}', 'advgroup_main', '', 2),
('advgroup_main_create', 'advgroup', 'Create New Group', 'Advgroup_Plugin_Menus', '{"route":"group_general","action":"create"}', 'advgroup_main', '', 3),

('advgroup_quick_create', 'advgroup', 'Create New Group', 'Advgroup_Plugin_Menus::canCreateGroups', '{"route":"group_general","action":"create","class":"buttonlink icon_group_new"}', 'advgroup_quick', '', 1),

('advgroup_manage_announcement','advgroup','Announcement','Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1),
('advgroup_profile_edit', 'advgroup', 'Edit Profile', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1),
('advgroup_profile_style', 'advgroup', 'Edit Styles', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 2),

('advgroup_profile_member', 'advgroup', 'Member', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 3),
('advgroup_profile_report', 'advgroup', 'Report Group', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 4),
('advgroup_profile_share', 'advgroup', 'Share', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 5),
('advgroup_profile_message', 'advgroup', 'Message Members', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 6),
('advgroup_profile_invite', 'advgroup', 'Invite', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 7),
('advgroup_profile_invitenew', 'advgroup', 'Invite New Guests', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 8),
('advgroup_profile_invite_contact_import','advgroup','Invite Using Contact Importer','Advgroup_Plugin_Menus','','advgroup_profile','',9),
('advgroup_profile_album', 'advgroup', 'Group Photo Albums', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 10),
('advgroup_profile_discussion', 'advgroup', 'Group Discussions', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 11),
('advgroup_profile_event', 'advgroup', 'Group Events', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 12),
('advgroup_profile_poll', 'advgroup', 'Group Polls', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 13),
('advgroup_profile_useful_link', 'advgroup', 'Group Useful Links', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 14),

('core_admin_main_plugins_advgroup', 'advgroup', 'Advanced Groups', '', '{"route":"admin_default","module":"advgroup","controller":"manage"}', 'core_admin_main_plugins', '', 999),

('advgroup_admin_main_manage', 'advgroup', 'Manage Groups', '', '{"route":"admin_default","module":"advgroup","controller":"manage"}', 'advgroup_admin_main', '', 1),
('advgroup_admin_main_global', 'advgroup', 'Global Settings', '', '{"route":"admin_default","module":"advgroup","controller":"global"}', 'advgroup_admin_main', '', 2),
('advgroup_admin_main_level', 'advgroup', 'Member Level Settings', '', '{"route":"admin_default","module":"advgroup","controller":"settings","action":"level"}', 'advgroup_admin_main', '', 3),
('advgroup_admin_main_categories', 'advgroup', 'Teams', '', '{"route":"admin_default","module":"advgroup","controller":"settings","action":"categories"}', 'advgroup_admin_main', '', 4),
('advgroup_admin_main_fields', 'advgroup', 'Profile Fields', '', '{"route":"admin_default","module":"advgroup","controller":"fields"}', 'advgroup_admin_main', '', 5),

('authorization_admin_level_advgroup', 'advgroup', 'Advanced Groups', '', '{"route":"admin_default","module":"advgroup","controller":"settings","action":"level"}', 'authorization_admin_level', '', 999),
('mobi_browse_advgroup', 'advgroup', 'Advanced Groups', '', '{"route":"group_general"}', 'mobi_browse', '', 8);
-- --------------------------------------------------------

--
-- Dumping data for table `engine4_activity_actiontypes`
--

INSERT IGNORE INTO `engine4_activity_actiontypes` (`type`, `module`, `body`, `enabled`, `displayable`, `attachable`, `commentable`, `shareable`, `is_generated`) VALUES
('advgroup_create', 'advgroup', '{item:$subject} created a new group:', 1, 5, 1, 1, 1, 1),
('advgroup_join', 'advgroup', '{item:$subject} joined the group {item:$object}', 1, 3, 1, 1, 1, 1),
('advgroup_promote', 'advgroup', '{item:$subject} has been made an officer for the group {item:$object}', 1, 3, 1, 1, 1, 1),
('advgroup_topic_create', 'advgroup', '{item:$subject} posted a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}', 1, 3, 1, 1, 1, 1),
('advgroup_topic_reply', 'advgroup', '{item:$subject} replied to a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}', 1, 3, 1, 1, 1, 1),
('advgroup_photo_upload', 'advgroup', '{item:$subject} added {var:$count} photo(s).', 1, 3, 2, 1, 1, 1),
('advgroup_poll_new', 'advgroup', '{item:$subject} created a new poll:', 1, 3, 1, 1, 1, 1);

-- --------------------------------------------------------
--
-- Dumping data for table `engine4_activity_notificationtypes`
--

INSERT IGNORE INTO `engine4_activity_notificationtypes` (`type`, `module`, `body`, `is_request`, `handler`) VALUES
('advgroup_discussion_response', 'advgroup', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you created.', 0, ''),
('advgroup_discussion_reply', 'advgroup', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you posted on.', 0, ''),
('advgroup_invite', 'advgroup', '{item:$subject} has invited you to the group {item:$object}.', 1, 'advgroup.widget.request-group'),
('advgroup_approve', 'advgroup', '{item:$subject} has requested to join the group {item:$object}.', 0, ''),
('advgroup_accepted', 'advgroup', 'Your request to join the group {item:$subject} has been approved.', 0, ''),
('advgroup_promote', 'advgroup', 'You were promoted to officer in the group {item:$object}.', 0, ''),
('advgroup_poll_comment', 'advgroup', '{item:$subject} commented on {item:$owner}''s {item:$object:advgroup_poll}.', 0,''),
('advgroup_poll_like', 'advgroup', '{item:$subject} liked {item:$owner}''s {item:$object:advgroup_poll}.', 0,'')
;
-- --------------------------------------------------------
--
-- Dumping data for table `engine4_activity_notificationtypes`
--
INSERT IGNORE INTO `engine4_core_settings` (`name` , `value`) VALUES
('advgroup.pollmaxoptions', '15'),
('advgroup.pollshowpiechart', '0'),
('advgroup.pollcanchangevote', '1');
-- --------------------------------------------------------
--
-- Dumping data for table `engine4_authorization_permissions`
--

-- ALL
-- auth_view, auth_comment, auth_photo,auth_poll
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'advgroup_poll' as `type`,
    'auth_comment' as `name`,
    5 as `value`,
    '["registered", "member", "officer"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'auth_view' as `name`,
    5 as `value`,
    '["everyone", "registered", "member"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'auth_comment' as `name`,
    5 as `value`,
    '["registered", "member", "officer"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'auth_photo' as `name`,
    5 as `value`,
    '["registered", "member", "officer"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'auth_event' as `name`,
    5 as `value`,
    '["registered", "member", "officer"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'auth_poll' as `name`,
    5 as `value`,
    '["registered", "member", "officer"]' as `params`
  FROM `engine4_authorization_levels` WHERE `type` NOT IN('public');
-- ADMIN, MODERATOR
-- create, delete, edit, view, comment, photo, style, invite
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'create' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'delete' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'edit' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'view' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'comment' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'photo.edit' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'topic.edit' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'album' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'photo' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'event' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'style' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'invite' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'numberPhoto' as `name`,
    0 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'numberAlbum' as `name`,
    3 as `value`,
    100 as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'poll' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'poll.edit' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'advgroup_poll' as `type`,
    'comment' as `name`,
    2 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('moderator', 'admin');
-- USER
-- create, delete, edit, invite, view, comment, photo, style, invite, photo.edit, topic.edit
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'create' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'delete' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'edit' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'view' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'comment' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'album' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'photo' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'event' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'style' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'invite' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'photo.edit' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'topic.edit' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'numberPhoto' as `name`,
    3 as `value`,
    50 as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'numberAlbum' as `name`,
    3 as `value`,
    20 as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'advgroup_poll' as `type`,
    'comment' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'poll' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'poll.edit' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('user');
-- PUBLIC
-- view
INSERT IGNORE INTO `engine4_authorization_permissions`
  SELECT
    level_id as `level_id`,
    'group' as `type`,
    'view' as `name`,
    1 as `value`,
    NULL as `params`
  FROM `engine4_authorization_levels` WHERE `type` IN('public');

