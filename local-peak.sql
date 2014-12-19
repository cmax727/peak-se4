-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.12


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema peak_
--

CREATE DATABASE IF NOT EXISTS peak_;
USE peak_;

--
-- Definition of table `engine4_activity_actions`
--

DROP TABLE IF EXISTS `engine4_activity_actions`;
CREATE TABLE `engine4_activity_actions` (
  `action_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `subject_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) unsigned NOT NULL,
  `object_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `date` datetime NOT NULL,
  `attachment_count` smallint(3) unsigned NOT NULL DEFAULT '0',
  `comment_count` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `like_count` mediumint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `SUBJECT` (`subject_type`,`subject_id`),
  KEY `OBJECT` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_actions`
--

/*!40000 ALTER TABLE `engine4_activity_actions` DISABLE KEYS */;
INSERT INTO `engine4_activity_actions` (`action_id`,`type`,`subject_type`,`subject_id`,`object_type`,`object_id`,`body`,`params`,`date`,`attachment_count`,`comment_count`,`like_count`) VALUES 
 (1,'advgroup_create','user',1,'group',1,'','[]','2012-01-04 22:46:37',1,0,0),
 (2,'advgroup_create','user',1,'group',2,'','[]','2012-01-04 22:47:47',1,0,0),
 (3,'advgroup_create','user',1,'group',3,'','[]','2012-01-04 22:48:40',1,0,0),
 (4,'advgroup_create','user',1,'group',4,'','[]','2012-01-04 22:50:22',1,0,0),
 (5,'advgroup_create','user',1,'group',5,'','[]','2012-01-04 22:51:17',1,0,0),
 (6,'advgroup_create','user',1,'group',6,'','[]','2012-01-04 23:21:57',1,0,0),
 (10,'event_create','user',1,'event',1,'','[]','2012-01-05 00:56:46',1,0,0),
 (11,'signup','user',6,'user',6,'','[]','2012-01-11 22:45:36',0,0,0),
 (12,'signup','user',7,'user',7,'','[]','2012-01-23 22:57:57',0,0,0),
 (13,'signup','user',8,'user',8,'','[]','2012-01-23 23:18:17',0,0,0),
 (14,'signup','user',9,'user',9,'','[]','2012-01-24 00:53:42',0,0,0),
 (15,'signup','user',11,'user',11,'','[]','2012-01-25 14:55:47',0,0,0),
 (16,'signup','user',962724476,'user',962724476,'','[]','2012-01-25 19:37:00',0,0,0),
 (17,'signup','user',1365141341,'user',1365141341,'','[]','2012-01-25 19:45:37',0,0,0),
 (18,'signup','user',1365141342,'user',1365141342,'','[]','2012-01-25 20:11:12',0,0,0),
 (19,'signup','user',1365141343,'user',1365141343,'','[]','2012-01-25 20:13:54',0,0,0),
 (25,'signup','user',90665149,'user',90665149,'','[]','2012-01-26 22:37:04',0,0,0),
 (26,'signup','user',787906286,'user',787906286,'','[]','2012-01-26 22:38:17',0,0,0),
 (27,'signup','user',1617777672,'user',1617777672,'','[]','2012-01-27 02:57:47',0,0,0),
 (28,'signup','user',370267116,'user',370267116,'','[]','2012-01-27 03:00:20',0,0,0),
 (29,'signup','user',1720049785,'user',1720049785,'','[]','2012-01-27 03:01:35',0,0,0),
 (30,'signup','user',1897958929,'user',1897958929,'','[]','2012-01-27 03:36:34',0,0,0),
 (31,'signup','user',1454445489,'user',1454445489,'','[]','2012-01-27 03:37:54',0,0,0),
 (32,'signup','user',1378354621,'user',1378354621,'','[]','2012-01-27 05:18:47',0,0,0),
 (33,'signup','user',144946255,'user',144946255,'','[]','2012-01-27 05:38:03',0,0,0),
 (34,'signup','user',1826907472,'user',1826907472,'','[]','2012-01-27 05:43:54',0,0,0),
 (35,'signup','user',806665847,'user',806665847,'','[]','2012-01-27 17:01:15',0,0,0),
 (36,'signup','user',1542221578,'user',1542221578,'','[]','2012-01-27 17:04:56',0,0,0),
 (37,'profile_photo_update','user',1542221578,'user',1542221578,'{item:$subject} added a new profile photo.','[]','2012-01-27 17:36:20',1,0,0),
 (38,'signup','user',1884272687,'user',1884272687,'','[]','2012-01-30 02:34:53',0,0,0),
 (39,'signup','user',976972162,'user',976972162,'','[]','2012-01-30 03:09:28',0,0,0),
 (40,'signup','user',2036342406,'user',2036342406,'','[]','2012-01-30 03:49:52',0,0,0),
 (42,'signup','user',1519581937,'user',1519581937,'','[]','2012-01-30 11:07:28',0,0,0),
 (43,'signup','user',1165849088,'user',1165849088,'','[]','2012-01-30 18:39:31',0,0,0),
 (45,'signup','user',644538342,'user',644538342,'','[]','2012-01-31 21:23:01',0,0,0),
 (46,'signup','user',1173216455,'user',1173216455,'','[]','2012-01-31 21:24:39',0,0,0),
 (47,'signup','user',673259212,'user',673259212,'','[]','2012-01-31 21:28:19',0,0,0),
 (49,'signup','user',1680664888,'user',1680664888,'','[]','2012-01-31 21:58:07',0,0,0);
/*!40000 ALTER TABLE `engine4_activity_actions` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_actionsettings`
--

DROP TABLE IF EXISTS `engine4_activity_actionsettings`;
CREATE TABLE `engine4_activity_actionsettings` (
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_actionsettings`
--

/*!40000 ALTER TABLE `engine4_activity_actionsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_activity_actionsettings` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_actiontypes`
--

DROP TABLE IF EXISTS `engine4_activity_actiontypes`;
CREATE TABLE `engine4_activity_actiontypes` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `displayable` tinyint(1) NOT NULL DEFAULT '3',
  `attachable` tinyint(1) NOT NULL DEFAULT '1',
  `commentable` tinyint(1) NOT NULL DEFAULT '1',
  `shareable` tinyint(1) NOT NULL DEFAULT '1',
  `is_generated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_actiontypes`
--

/*!40000 ALTER TABLE `engine4_activity_actiontypes` DISABLE KEYS */;
INSERT INTO `engine4_activity_actiontypes` (`type`,`module`,`body`,`enabled`,`displayable`,`attachable`,`commentable`,`shareable`,`is_generated`) VALUES 
 ('advgroup_create','advgroup','{item:$subject} created a new group:',1,5,1,1,1,1),
 ('advgroup_join','advgroup','{item:$subject} joined the group {item:$object}',1,3,1,1,1,1),
 ('advgroup_photo_upload','advgroup','{item:$subject} added {var:$count} photo(s).',1,3,2,1,1,1),
 ('advgroup_poll_new','advgroup','{item:$subject} created a new poll:',1,3,1,1,1,1),
 ('advgroup_promote','advgroup','{item:$subject} has been made an officer for the group {item:$object}',1,3,1,1,1,1),
 ('advgroup_topic_create','advgroup','{item:$subject} posted a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}',1,3,1,1,1,1),
 ('advgroup_topic_reply','advgroup','{item:$subject} replied to a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}',1,3,1,1,1,1),
 ('event_create','event','{item:$subject} created a new event:',1,5,1,1,1,1),
 ('event_join','event','{item:$subject} joined the event {item:$object}',1,3,1,1,1,1),
 ('event_photo_upload','event','{item:$subject} added {var:$count} photo(s).',1,3,2,1,1,1),
 ('event_topic_create','event','{item:$subject} posted a {item:$object:topic} in the event {itemParent:$object:event}: {body:$body}',1,3,1,1,1,1),
 ('event_topic_reply','event','{item:$subject} replied to a {item:$object:topic} in the event {itemParent:$object:event}: {body:$body}',1,3,1,1,1,1),
 ('friends','user','{item:$subject} is now friends with {item:$object}.',1,3,0,1,1,1),
 ('friends_follow','user','{item:$subject} is now following {item:$object}.',1,3,0,1,1,1),
 ('group_create','group','{item:$subject} created a new group:',1,5,1,1,1,1),
 ('group_join','group','{item:$subject} joined the group {item:$object}',1,3,1,1,1,1),
 ('group_photo_upload','group','{item:$subject} added {var:$count} photo(s).',1,3,2,1,1,1),
 ('group_promote','group','{item:$subject} has been made an officer for the group {item:$object}',1,3,1,1,1,1),
 ('group_topic_create','group','{item:$subject} posted a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}',1,3,1,1,1,1),
 ('group_topic_reply','group','{item:$subject} replied to a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}',1,3,1,1,1,1),
 ('login','user','{item:$subject} has signed in.',0,1,0,1,1,1),
 ('logout','user','{item:$subject} has signed out.',0,1,0,1,1,1),
 ('network_join','network','{item:$subject} joined the network {item:$object}',1,3,1,1,1,1),
 ('post','user','{actors:$subject:$object}: {body:$body}',1,7,1,1,1,0),
 ('post_self','user','{item:$subject} {body:$body}',1,5,1,1,1,0),
 ('profile_photo_update','user','{item:$subject} has added a new profile photo.',1,5,1,1,1,1),
 ('signup','user','{item:$subject} has just signed up. Say hello!',1,5,0,1,1,1),
 ('status','user','{item:$subject} {body:$body}',1,5,0,1,4,0),
 ('tagged','user','{item:$subject} tagged {item:$object} in a {var:$label}:',1,7,1,1,0,1);
/*!40000 ALTER TABLE `engine4_activity_actiontypes` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_attachments`
--

DROP TABLE IF EXISTS `engine4_activity_attachments`;
CREATE TABLE `engine4_activity_attachments` (
  `attachment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` int(11) unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `mode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachment_id`),
  KEY `action_id` (`action_id`),
  KEY `type_id` (`type`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_attachments`
--

/*!40000 ALTER TABLE `engine4_activity_attachments` DISABLE KEYS */;
INSERT INTO `engine4_activity_attachments` (`attachment_id`,`action_id`,`type`,`id`,`mode`) VALUES 
 (1,1,'group',1,1),
 (2,2,'group',2,1),
 (3,3,'group',3,1),
 (4,4,'group',4,1),
 (5,5,'group',5,1),
 (6,6,'group',6,1),
 (7,10,'event',1,1),
 (8,37,'storage_file',21,1);
/*!40000 ALTER TABLE `engine4_activity_attachments` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_comments`
--

DROP TABLE IF EXISTS `engine4_activity_comments`;
CREATE TABLE `engine4_activity_comments` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `like_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `resource_type` (`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_comments`
--

/*!40000 ALTER TABLE `engine4_activity_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_activity_comments` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_likes`
--

DROP TABLE IF EXISTS `engine4_activity_likes`;
CREATE TABLE `engine4_activity_likes` (
  `like_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `resource_id` (`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_likes`
--

/*!40000 ALTER TABLE `engine4_activity_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_activity_likes` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_notifications`
--

DROP TABLE IF EXISTS `engine4_activity_notifications`;
CREATE TABLE `engine4_activity_notifications` (
  `notification_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `subject_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) unsigned NOT NULL,
  `object_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `mitigated` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `LOOKUP` (`user_id`,`date`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `object` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_notifications`
--

/*!40000 ALTER TABLE `engine4_activity_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_activity_notifications` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_notificationsettings`
--

DROP TABLE IF EXISTS `engine4_activity_notificationsettings`;
CREATE TABLE `engine4_activity_notificationsettings` (
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_notificationsettings`
--

/*!40000 ALTER TABLE `engine4_activity_notificationsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_activity_notificationsettings` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_notificationtypes`
--

DROP TABLE IF EXISTS `engine4_activity_notificationtypes`;
CREATE TABLE `engine4_activity_notificationtypes` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_request` tinyint(1) NOT NULL DEFAULT '0',
  `handler` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_notificationtypes`
--

/*!40000 ALTER TABLE `engine4_activity_notificationtypes` DISABLE KEYS */;
INSERT INTO `engine4_activity_notificationtypes` (`type`,`module`,`body`,`is_request`,`handler`,`default`) VALUES 
 ('advgroup_accepted','advgroup','Your request to join the group {item:$subject} has been approved.',0,'',1),
 ('advgroup_approve','advgroup','{item:$subject} has requested to join the group {item:$object}.',0,'',1),
 ('advgroup_discussion_reply','advgroup','{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you posted on.',0,'',1),
 ('advgroup_discussion_response','advgroup','{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you created.',0,'',1),
 ('advgroup_invite','advgroup','{item:$subject} has invited you to the group {item:$object}.',1,'advgroup.widget.request-group',1),
 ('advgroup_poll_comment','advgroup','{item:$subject} commented on {item:$owner}\'s {item:$object:advgroup_poll}.',0,'',1),
 ('advgroup_poll_like','advgroup','{item:$subject} liked {item:$owner}\'s {item:$object:advgroup_poll}.',0,'',1),
 ('advgroup_promote','advgroup','You were promoted to officer in the group {item:$object}.',0,'',1),
 ('commented','activity','{item:$subject} has commented on your {item:$object:$label}.',0,'',1),
 ('commented_commented','activity','{item:$subject} has commented on a {item:$object:$label} you commented on.',0,'',1),
 ('event_accepted','event','Your request to join the event {item:$subject} has been approved.',0,'',1),
 ('event_approve','event','{item:$subject} has requested to join the event {item:$object}.',0,'',1),
 ('event_discussion_reply','event','{item:$subject} has {item:$object:posted} on a {itemParent:$object::event topic} you posted on.',0,'',1),
 ('event_discussion_response','event','{item:$subject} has {item:$object:posted} on a {itemParent:$object::event topic} you created.',0,'',1),
 ('event_invite','event','{item:$subject} has invited you to the event {item:$object}.',1,'event.widget.request-event',1),
 ('friend_accepted','user','You and {item:$subject} are now friends.',0,'',1),
 ('friend_follow','user','{item:$subject} is now following you.',0,'',1),
 ('friend_follow_accepted','user','You are now following {item:$subject}.',0,'',1),
 ('friend_follow_request','user','{item:$subject} has requested to follow you.',1,'user.friends.request-follow',1),
 ('friend_request','user','{item:$subject} has requested to be your friend.',1,'user.friends.request-friend',1),
 ('group_accepted','group','Your request to join the group {item:$subject} has been approved.',0,'',1),
 ('group_approve','group','{item:$subject} has requested to join the group {item:$object}.',0,'',1),
 ('group_discussion_reply','group','{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you posted on.',0,'',1),
 ('group_discussion_response','group','{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you created.',0,'',1),
 ('group_invite','group','{item:$subject} has invited you to the group {item:$object}.',1,'group.widget.request-group',1),
 ('group_promote','group','You were promoted to officer in the group {item:$object}.',0,'',1),
 ('liked','activity','{item:$subject} likes your {item:$object:$label}.',0,'',1),
 ('liked_commented','activity','{item:$subject} has commented on a {item:$object:$label} you liked.',0,'',1),
 ('message_new','messages','{item:$subject} has sent you a {item:$object:message}.',0,'',1),
 ('post_user','user','{item:$subject} has posted on your {item:$object:profile}.',0,'',1),
 ('tagged','user','{item:$subject} tagged you in a {item:$object:$label}.',0,'',1);
/*!40000 ALTER TABLE `engine4_activity_notificationtypes` ENABLE KEYS */;


--
-- Definition of table `engine4_activity_stream`
--

DROP TABLE IF EXISTS `engine4_activity_stream`;
CREATE TABLE `engine4_activity_stream` (
  `target_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `target_id` int(11) unsigned NOT NULL,
  `subject_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) unsigned NOT NULL,
  `object_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`target_type`,`target_id`,`action_id`),
  KEY `SUBJECT` (`subject_type`,`subject_id`,`action_id`),
  KEY `OBJECT` (`object_type`,`object_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_stream`
--

/*!40000 ALTER TABLE `engine4_activity_stream` DISABLE KEYS */;
INSERT INTO `engine4_activity_stream` (`target_type`,`target_id`,`subject_type`,`subject_id`,`object_type`,`object_id`,`type`,`action_id`) VALUES 
 ('event',1,'user',1,'event',1,'event_create',10),
 ('everyone',0,'user',1,'group',2,'advgroup_create',2),
 ('everyone',0,'user',1,'group',3,'advgroup_create',3),
 ('everyone',0,'user',1,'group',4,'advgroup_create',4),
 ('group',1,'user',1,'group',1,'advgroup_create',1),
 ('group',2,'user',1,'group',2,'advgroup_create',2),
 ('group',3,'user',1,'group',3,'advgroup_create',3),
 ('group',4,'user',1,'group',4,'advgroup_create',4),
 ('group',5,'user',1,'group',5,'advgroup_create',5),
 ('group',6,'user',1,'group',6,'advgroup_create',6),
 ('members',1,'user',1,'event',1,'event_create',10),
 ('members',6,'user',6,'user',6,'signup',11),
 ('members',7,'user',7,'user',7,'signup',12),
 ('members',8,'user',8,'user',8,'signup',13),
 ('members',9,'user',9,'user',9,'signup',14),
 ('members',11,'user',11,'user',11,'signup',15),
 ('members',90665149,'user',90665149,'user',90665149,'signup',25),
 ('members',144946255,'user',144946255,'user',144946255,'signup',33),
 ('members',370267116,'user',370267116,'user',370267116,'signup',28),
 ('members',644538342,'user',644538342,'user',644538342,'signup',45),
 ('members',673259212,'user',673259212,'user',673259212,'signup',47),
 ('members',787906286,'user',787906286,'user',787906286,'signup',26),
 ('members',806665847,'user',806665847,'user',806665847,'signup',35),
 ('members',962724476,'user',962724476,'user',962724476,'signup',16),
 ('members',976972162,'user',976972162,'user',976972162,'signup',39),
 ('members',1165849088,'user',1165849088,'user',1165849088,'signup',43),
 ('members',1173216455,'user',1173216455,'user',1173216455,'signup',46),
 ('members',1365141341,'user',1365141341,'user',1365141341,'signup',17),
 ('members',1365141342,'user',1365141342,'user',1365141342,'signup',18),
 ('members',1365141343,'user',1365141343,'user',1365141343,'signup',19),
 ('members',1378354621,'user',1378354621,'user',1378354621,'signup',32),
 ('members',1454445489,'user',1454445489,'user',1454445489,'signup',31),
 ('members',1519581937,'user',1519581937,'user',1519581937,'signup',42),
 ('members',1542221578,'user',1542221578,'user',1542221578,'signup',36),
 ('members',1542221578,'user',1542221578,'user',1542221578,'profile_photo_update',37),
 ('members',1617777672,'user',1617777672,'user',1617777672,'signup',27),
 ('members',1680664888,'user',1680664888,'user',1680664888,'signup',49),
 ('members',1720049785,'user',1720049785,'user',1720049785,'signup',29),
 ('members',1826907472,'user',1826907472,'user',1826907472,'signup',34),
 ('members',1884272687,'user',1884272687,'user',1884272687,'signup',38),
 ('members',1897958929,'user',1897958929,'user',1897958929,'signup',30),
 ('members',2036342406,'user',2036342406,'user',2036342406,'signup',40),
 ('network',8,'user',806665847,'user',806665847,'signup',35),
 ('network',8,'user',1884272687,'user',1884272687,'signup',38),
 ('network',8,'user',2036342406,'user',2036342406,'signup',40),
 ('network',8,'user',1519581937,'user',1519581937,'signup',42),
 ('network',8,'user',1165849088,'user',1165849088,'signup',43),
 ('network',8,'user',644538342,'user',644538342,'signup',45),
 ('network',8,'user',1680664888,'user',1680664888,'signup',49),
 ('network',9,'user',1826907472,'user',1826907472,'signup',34),
 ('network',10,'user',976972162,'user',976972162,'signup',39),
 ('network',12,'user',1542221578,'user',1542221578,'signup',36),
 ('network',12,'user',1542221578,'user',1542221578,'profile_photo_update',37),
 ('network',13,'user',673259212,'user',673259212,'signup',47),
 ('network',15,'user',1173216455,'user',1173216455,'signup',46),
 ('owner',1,'user',1,'group',1,'advgroup_create',1),
 ('owner',1,'user',1,'group',2,'advgroup_create',2),
 ('owner',1,'user',1,'group',3,'advgroup_create',3),
 ('owner',1,'user',1,'group',4,'advgroup_create',4),
 ('owner',1,'user',1,'group',5,'advgroup_create',5),
 ('owner',1,'user',1,'group',6,'advgroup_create',6),
 ('owner',1,'user',1,'event',1,'event_create',10),
 ('owner',6,'user',6,'user',6,'signup',11),
 ('owner',7,'user',7,'user',7,'signup',12),
 ('owner',8,'user',8,'user',8,'signup',13),
 ('owner',9,'user',9,'user',9,'signup',14),
 ('owner',11,'user',11,'user',11,'signup',15),
 ('owner',90665149,'user',90665149,'user',90665149,'signup',25),
 ('owner',144946255,'user',144946255,'user',144946255,'signup',33),
 ('owner',370267116,'user',370267116,'user',370267116,'signup',28),
 ('owner',644538342,'user',644538342,'user',644538342,'signup',45),
 ('owner',673259212,'user',673259212,'user',673259212,'signup',47),
 ('owner',787906286,'user',787906286,'user',787906286,'signup',26),
 ('owner',806665847,'user',806665847,'user',806665847,'signup',35),
 ('owner',962724476,'user',962724476,'user',962724476,'signup',16),
 ('owner',976972162,'user',976972162,'user',976972162,'signup',39),
 ('owner',1165849088,'user',1165849088,'user',1165849088,'signup',43),
 ('owner',1173216455,'user',1173216455,'user',1173216455,'signup',46),
 ('owner',1365141341,'user',1365141341,'user',1365141341,'signup',17),
 ('owner',1365141342,'user',1365141342,'user',1365141342,'signup',18),
 ('owner',1365141343,'user',1365141343,'user',1365141343,'signup',19),
 ('owner',1378354621,'user',1378354621,'user',1378354621,'signup',32),
 ('owner',1454445489,'user',1454445489,'user',1454445489,'signup',31),
 ('owner',1519581937,'user',1519581937,'user',1519581937,'signup',42),
 ('owner',1542221578,'user',1542221578,'user',1542221578,'signup',36),
 ('owner',1542221578,'user',1542221578,'user',1542221578,'profile_photo_update',37),
 ('owner',1617777672,'user',1617777672,'user',1617777672,'signup',27),
 ('owner',1680664888,'user',1680664888,'user',1680664888,'signup',49),
 ('owner',1720049785,'user',1720049785,'user',1720049785,'signup',29),
 ('owner',1826907472,'user',1826907472,'user',1826907472,'signup',34),
 ('owner',1884272687,'user',1884272687,'user',1884272687,'signup',38),
 ('owner',1897958929,'user',1897958929,'user',1897958929,'signup',30),
 ('owner',2036342406,'user',2036342406,'user',2036342406,'signup',40),
 ('parent',1,'user',1,'group',1,'advgroup_create',1),
 ('parent',1,'user',1,'group',2,'advgroup_create',2),
 ('parent',1,'user',1,'group',3,'advgroup_create',3),
 ('parent',1,'user',1,'group',4,'advgroup_create',4),
 ('parent',1,'user',1,'group',5,'advgroup_create',5),
 ('parent',1,'user',1,'group',6,'advgroup_create',6),
 ('parent',1,'user',1,'event',1,'event_create',10),
 ('parent',6,'user',6,'user',6,'signup',11),
 ('parent',7,'user',7,'user',7,'signup',12),
 ('parent',8,'user',8,'user',8,'signup',13),
 ('parent',9,'user',9,'user',9,'signup',14),
 ('parent',11,'user',11,'user',11,'signup',15),
 ('parent',90665149,'user',90665149,'user',90665149,'signup',25),
 ('parent',144946255,'user',144946255,'user',144946255,'signup',33),
 ('parent',370267116,'user',370267116,'user',370267116,'signup',28),
 ('parent',644538342,'user',644538342,'user',644538342,'signup',45),
 ('parent',673259212,'user',673259212,'user',673259212,'signup',47),
 ('parent',787906286,'user',787906286,'user',787906286,'signup',26),
 ('parent',806665847,'user',806665847,'user',806665847,'signup',35),
 ('parent',962724476,'user',962724476,'user',962724476,'signup',16),
 ('parent',976972162,'user',976972162,'user',976972162,'signup',39),
 ('parent',1165849088,'user',1165849088,'user',1165849088,'signup',43),
 ('parent',1173216455,'user',1173216455,'user',1173216455,'signup',46),
 ('parent',1365141341,'user',1365141341,'user',1365141341,'signup',17),
 ('parent',1365141342,'user',1365141342,'user',1365141342,'signup',18),
 ('parent',1365141343,'user',1365141343,'user',1365141343,'signup',19),
 ('parent',1378354621,'user',1378354621,'user',1378354621,'signup',32),
 ('parent',1454445489,'user',1454445489,'user',1454445489,'signup',31),
 ('parent',1519581937,'user',1519581937,'user',1519581937,'signup',42),
 ('parent',1542221578,'user',1542221578,'user',1542221578,'signup',36),
 ('parent',1542221578,'user',1542221578,'user',1542221578,'profile_photo_update',37),
 ('parent',1617777672,'user',1617777672,'user',1617777672,'signup',27),
 ('parent',1680664888,'user',1680664888,'user',1680664888,'signup',49),
 ('parent',1720049785,'user',1720049785,'user',1720049785,'signup',29),
 ('parent',1826907472,'user',1826907472,'user',1826907472,'signup',34),
 ('parent',1884272687,'user',1884272687,'user',1884272687,'signup',38),
 ('parent',1897958929,'user',1897958929,'user',1897958929,'signup',30),
 ('parent',2036342406,'user',2036342406,'user',2036342406,'signup',40),
 ('registered',0,'user',1,'group',1,'advgroup_create',1),
 ('registered',0,'user',1,'group',2,'advgroup_create',2),
 ('registered',0,'user',1,'group',3,'advgroup_create',3),
 ('registered',0,'user',1,'group',4,'advgroup_create',4);
/*!40000 ALTER TABLE `engine4_activity_stream` ENABLE KEYS */;


--
-- Definition of table `engine4_announcement_announcements`
--

DROP TABLE IF EXISTS `engine4_announcement_announcements`;
CREATE TABLE `engine4_announcement_announcements` (
  `announcement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`announcement_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_announcement_announcements`
--

/*!40000 ALTER TABLE `engine4_announcement_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_announcement_announcements` ENABLE KEYS */;


--
-- Definition of table `engine4_authorization_allow`
--

DROP TABLE IF EXISTS `engine4_authorization_allow`;
CREATE TABLE `engine4_authorization_allow` (
  `resource_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `action` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `role` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `role_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`resource_type`,`resource_id`,`action`,`role`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_authorization_allow`
--

/*!40000 ALTER TABLE `engine4_authorization_allow` DISABLE KEYS */;
INSERT INTO `engine4_authorization_allow` (`resource_type`,`resource_id`,`action`,`role`,`role_id`,`value`,`params`) VALUES 
 ('event',1,'comment','everyone',0,1,NULL),
 ('event',1,'comment','member',0,1,NULL),
 ('event',1,'comment','owner_member',0,1,NULL),
 ('event',1,'comment','owner_member_member',0,1,NULL),
 ('event',1,'comment','owner_network',0,1,NULL),
 ('event',1,'comment','registered',0,1,NULL),
 ('event',1,'invite','member',0,1,NULL),
 ('event',1,'photo','everyone',0,1,NULL),
 ('event',1,'photo','member',0,1,NULL),
 ('event',1,'photo','owner_member',0,1,NULL),
 ('event',1,'photo','owner_member_member',0,1,NULL),
 ('event',1,'photo','owner_network',0,1,NULL),
 ('event',1,'photo','registered',0,1,NULL),
 ('event',1,'view','everyone',0,1,NULL),
 ('event',1,'view','member',0,1,NULL),
 ('event',1,'view','member_requested',0,1,NULL),
 ('event',1,'view','owner_member',0,1,NULL),
 ('event',1,'view','owner_member_member',0,1,NULL),
 ('event',1,'view','owner_network',0,1,NULL),
 ('event',1,'view','registered',0,1,NULL),
 ('group',1,'comment','advgroup_list',1,1,NULL),
 ('group',1,'comment','member',0,1,NULL),
 ('group',1,'event','advgroup_list',1,1,NULL),
 ('group',1,'invite','advgroup_list',1,1,NULL),
 ('group',1,'photo','advgroup_list',1,1,NULL),
 ('group',1,'photo','member',0,1,NULL),
 ('group',1,'photo.edit','advgroup_list',1,1,NULL),
 ('group',1,'topic.edit','advgroup_list',1,1,NULL),
 ('group',1,'view','advgroup_list',1,1,NULL),
 ('group',1,'view','member',0,1,NULL),
 ('group',1,'view','member_requested',0,1,NULL),
 ('group',1,'view','registered',0,1,NULL),
 ('group',2,'comment','advgroup_list',2,1,NULL),
 ('group',2,'comment','member',0,1,NULL),
 ('group',2,'event','advgroup_list',2,1,NULL),
 ('group',2,'invite','advgroup_list',2,1,NULL),
 ('group',2,'photo','advgroup_list',2,1,NULL),
 ('group',2,'photo','member',0,1,NULL),
 ('group',2,'photo.edit','advgroup_list',2,1,NULL),
 ('group',2,'topic.edit','advgroup_list',2,1,NULL),
 ('group',2,'view','advgroup_list',2,1,NULL),
 ('group',2,'view','everyone',0,1,NULL),
 ('group',2,'view','member',0,1,NULL),
 ('group',2,'view','member_requested',0,1,NULL),
 ('group',2,'view','registered',0,1,NULL),
 ('group',3,'comment','advgroup_list',3,1,NULL),
 ('group',3,'comment','member',0,1,NULL),
 ('group',3,'event','advgroup_list',3,1,NULL),
 ('group',3,'invite','advgroup_list',3,1,NULL),
 ('group',3,'photo','advgroup_list',3,1,NULL),
 ('group',3,'photo','member',0,1,NULL),
 ('group',3,'photo.edit','advgroup_list',3,1,NULL),
 ('group',3,'topic.edit','advgroup_list',3,1,NULL),
 ('group',3,'view','advgroup_list',3,1,NULL),
 ('group',3,'view','everyone',0,1,NULL),
 ('group',3,'view','member',0,1,NULL),
 ('group',3,'view','member_requested',0,1,NULL),
 ('group',3,'view','registered',0,1,NULL),
 ('group',4,'comment','advgroup_list',4,1,NULL),
 ('group',4,'comment','member',0,1,NULL),
 ('group',4,'event','advgroup_list',4,1,NULL),
 ('group',4,'invite','advgroup_list',4,1,NULL),
 ('group',4,'photo','advgroup_list',4,1,NULL),
 ('group',4,'photo','member',0,1,NULL),
 ('group',4,'photo.edit','advgroup_list',4,1,NULL),
 ('group',4,'topic.edit','advgroup_list',4,1,NULL),
 ('group',4,'view','advgroup_list',4,1,NULL),
 ('group',4,'view','everyone',0,1,NULL),
 ('group',4,'view','member',0,1,NULL),
 ('group',4,'view','member_requested',0,1,NULL),
 ('group',4,'view','registered',0,1,NULL),
 ('group',5,'comment','advgroup_list',5,1,NULL),
 ('group',5,'comment','member',0,1,NULL),
 ('group',5,'event','advgroup_list',5,1,NULL),
 ('group',5,'invite','advgroup_list',5,1,NULL),
 ('group',5,'photo','advgroup_list',5,1,NULL),
 ('group',5,'photo','member',0,1,NULL),
 ('group',5,'photo.edit','advgroup_list',5,1,NULL),
 ('group',5,'topic.edit','advgroup_list',5,1,NULL),
 ('group',5,'view','advgroup_list',5,1,NULL),
 ('group',5,'view','everyone',0,1,NULL),
 ('group',5,'view','member',0,1,NULL),
 ('group',5,'view','member_requested',0,1,NULL),
 ('group',5,'view','registered',0,1,NULL),
 ('group',6,'comment','advgroup_list',6,1,NULL),
 ('group',6,'comment','member',0,1,NULL),
 ('group',6,'event','advgroup_list',6,1,NULL),
 ('group',6,'invite','advgroup_list',6,1,NULL),
 ('group',6,'photo','advgroup_list',6,1,NULL),
 ('group',6,'photo','member',0,1,NULL),
 ('group',6,'photo.edit','advgroup_list',6,1,NULL),
 ('group',6,'topic.edit','advgroup_list',6,1,NULL),
 ('group',6,'view','advgroup_list',6,1,NULL),
 ('group',6,'view','everyone',0,1,NULL),
 ('group',6,'view','member',0,1,NULL),
 ('group',6,'view','member_requested',0,1,NULL),
 ('group',6,'view','registered',0,1,NULL),
 ('user',1,'comment','everyone',0,1,NULL),
 ('user',1,'comment','member',0,1,NULL),
 ('user',1,'comment','network',0,1,NULL),
 ('user',1,'comment','registered',0,1,NULL),
 ('user',1,'view','everyone',0,1,NULL),
 ('user',1,'view','member',0,1,NULL),
 ('user',1,'view','network',0,1,NULL),
 ('user',1,'view','registered',0,1,NULL),
 ('user',6,'comment','network',0,1,NULL),
 ('user',6,'view','everyone',0,1,NULL),
 ('user',6,'view','member',0,1,NULL),
 ('user',6,'view','network',0,1,NULL),
 ('user',6,'view','registered',0,1,NULL),
 ('user',7,'comment','network',0,1,NULL),
 ('user',7,'view','everyone',0,1,NULL),
 ('user',7,'view','member',0,1,NULL),
 ('user',7,'view','network',0,1,NULL),
 ('user',7,'view','registered',0,1,NULL),
 ('user',8,'comment','network',0,1,NULL),
 ('user',8,'view','everyone',0,1,NULL),
 ('user',8,'view','member',0,1,NULL),
 ('user',8,'view','network',0,1,NULL),
 ('user',8,'view','registered',0,1,NULL),
 ('user',9,'comment','network',0,1,NULL),
 ('user',9,'view','everyone',0,1,NULL),
 ('user',9,'view','member',0,1,NULL),
 ('user',9,'view','network',0,1,NULL),
 ('user',9,'view','registered',0,1,NULL),
 ('user',10,'comment','network',0,1,NULL),
 ('user',10,'view','everyone',0,1,NULL),
 ('user',10,'view','member',0,1,NULL),
 ('user',10,'view','network',0,1,NULL),
 ('user',10,'view','registered',0,1,NULL),
 ('user',11,'comment','network',0,1,NULL),
 ('user',11,'view','everyone',0,1,NULL),
 ('user',11,'view','member',0,1,NULL),
 ('user',11,'view','network',0,1,NULL),
 ('user',11,'view','registered',0,1,NULL),
 ('user',78938821,'comment','network',0,1,NULL),
 ('user',78938821,'view','everyone',0,1,NULL),
 ('user',78938821,'view','member',0,1,NULL),
 ('user',78938821,'view','network',0,1,NULL),
 ('user',78938821,'view','registered',0,1,NULL),
 ('user',90665149,'comment','network',0,1,NULL),
 ('user',90665149,'view','everyone',0,1,NULL),
 ('user',90665149,'view','member',0,1,NULL),
 ('user',90665149,'view','network',0,1,NULL),
 ('user',90665149,'view','registered',0,1,NULL),
 ('user',144946255,'comment','network',0,1,NULL),
 ('user',144946255,'view','everyone',0,1,NULL),
 ('user',144946255,'view','member',0,1,NULL),
 ('user',144946255,'view','network',0,1,NULL),
 ('user',144946255,'view','registered',0,1,NULL),
 ('user',370267116,'comment','network',0,1,NULL),
 ('user',370267116,'view','everyone',0,1,NULL),
 ('user',370267116,'view','member',0,1,NULL),
 ('user',370267116,'view','network',0,1,NULL),
 ('user',370267116,'view','registered',0,1,NULL),
 ('user',644538342,'comment','network',0,1,NULL),
 ('user',644538342,'view','everyone',0,1,NULL),
 ('user',644538342,'view','member',0,1,NULL),
 ('user',644538342,'view','network',0,1,NULL),
 ('user',644538342,'view','registered',0,1,NULL),
 ('user',673259212,'comment','network',0,1,NULL),
 ('user',673259212,'view','everyone',0,1,NULL),
 ('user',673259212,'view','member',0,1,NULL),
 ('user',673259212,'view','network',0,1,NULL),
 ('user',673259212,'view','registered',0,1,NULL),
 ('user',787906286,'comment','network',0,1,NULL),
 ('user',787906286,'view','everyone',0,1,NULL),
 ('user',787906286,'view','member',0,1,NULL),
 ('user',787906286,'view','network',0,1,NULL),
 ('user',787906286,'view','registered',0,1,NULL),
 ('user',806665847,'comment','network',0,1,NULL),
 ('user',806665847,'view','everyone',0,1,NULL),
 ('user',806665847,'view','member',0,1,NULL),
 ('user',806665847,'view','network',0,1,NULL),
 ('user',806665847,'view','registered',0,1,NULL),
 ('user',962724475,'comment','network',0,1,NULL),
 ('user',962724475,'view','everyone',0,1,NULL),
 ('user',962724475,'view','member',0,1,NULL),
 ('user',962724475,'view','network',0,1,NULL),
 ('user',962724475,'view','registered',0,1,NULL),
 ('user',962724476,'comment','network',0,1,NULL),
 ('user',962724476,'view','everyone',0,1,NULL),
 ('user',962724476,'view','member',0,1,NULL),
 ('user',962724476,'view','network',0,1,NULL),
 ('user',962724476,'view','registered',0,1,NULL),
 ('user',976972162,'comment','network',0,1,NULL),
 ('user',976972162,'view','everyone',0,1,NULL),
 ('user',976972162,'view','member',0,1,NULL),
 ('user',976972162,'view','network',0,1,NULL),
 ('user',976972162,'view','registered',0,1,NULL),
 ('user',1134281355,'comment','network',0,1,NULL),
 ('user',1134281355,'view','everyone',0,1,NULL),
 ('user',1134281355,'view','member',0,1,NULL),
 ('user',1134281355,'view','network',0,1,NULL),
 ('user',1134281355,'view','registered',0,1,NULL),
 ('user',1165849088,'comment','network',0,1,NULL),
 ('user',1165849088,'view','everyone',0,1,NULL),
 ('user',1165849088,'view','member',0,1,NULL),
 ('user',1165849088,'view','network',0,1,NULL),
 ('user',1165849088,'view','registered',0,1,NULL),
 ('user',1173216455,'comment','network',0,1,NULL),
 ('user',1173216455,'view','everyone',0,1,NULL),
 ('user',1173216455,'view','member',0,1,NULL),
 ('user',1173216455,'view','network',0,1,NULL),
 ('user',1173216455,'view','registered',0,1,NULL),
 ('user',1365141340,'comment','network',0,1,NULL),
 ('user',1365141340,'view','everyone',0,1,NULL),
 ('user',1365141340,'view','member',0,1,NULL),
 ('user',1365141340,'view','network',0,1,NULL),
 ('user',1365141340,'view','registered',0,1,NULL),
 ('user',1365141341,'comment','network',0,1,NULL),
 ('user',1365141341,'view','everyone',0,1,NULL),
 ('user',1365141341,'view','member',0,1,NULL),
 ('user',1365141341,'view','network',0,1,NULL),
 ('user',1365141341,'view','registered',0,1,NULL),
 ('user',1365141342,'comment','network',0,1,NULL),
 ('user',1365141342,'view','everyone',0,1,NULL),
 ('user',1365141342,'view','member',0,1,NULL),
 ('user',1365141342,'view','network',0,1,NULL),
 ('user',1365141342,'view','registered',0,1,NULL),
 ('user',1365141343,'comment','network',0,1,NULL),
 ('user',1365141343,'view','everyone',0,1,NULL),
 ('user',1365141343,'view','member',0,1,NULL),
 ('user',1365141343,'view','network',0,1,NULL),
 ('user',1365141343,'view','registered',0,1,NULL),
 ('user',1378354621,'comment','network',0,1,NULL),
 ('user',1378354621,'view','everyone',0,1,NULL),
 ('user',1378354621,'view','member',0,1,NULL),
 ('user',1378354621,'view','network',0,1,NULL),
 ('user',1378354621,'view','registered',0,1,NULL),
 ('user',1454445489,'comment','network',0,1,NULL),
 ('user',1454445489,'view','everyone',0,1,NULL),
 ('user',1454445489,'view','member',0,1,NULL),
 ('user',1454445489,'view','network',0,1,NULL),
 ('user',1454445489,'view','registered',0,1,NULL),
 ('user',1519581937,'comment','network',0,1,NULL),
 ('user',1519581937,'view','everyone',0,1,NULL),
 ('user',1519581937,'view','member',0,1,NULL),
 ('user',1519581937,'view','network',0,1,NULL),
 ('user',1519581937,'view','registered',0,1,NULL),
 ('user',1542221578,'comment','network',0,1,NULL),
 ('user',1542221578,'view','everyone',0,1,NULL),
 ('user',1542221578,'view','member',0,1,NULL),
 ('user',1542221578,'view','network',0,1,NULL),
 ('user',1542221578,'view','registered',0,1,NULL),
 ('user',1617777672,'comment','network',0,1,NULL),
 ('user',1617777672,'view','everyone',0,1,NULL),
 ('user',1617777672,'view','member',0,1,NULL),
 ('user',1617777672,'view','network',0,1,NULL),
 ('user',1617777672,'view','registered',0,1,NULL),
 ('user',1680664888,'comment','network',0,1,NULL),
 ('user',1680664888,'view','everyone',0,1,NULL),
 ('user',1680664888,'view','member',0,1,NULL),
 ('user',1680664888,'view','network',0,1,NULL),
 ('user',1680664888,'view','registered',0,1,NULL),
 ('user',1720049785,'comment','network',0,1,NULL),
 ('user',1720049785,'view','everyone',0,1,NULL),
 ('user',1720049785,'view','member',0,1,NULL),
 ('user',1720049785,'view','network',0,1,NULL),
 ('user',1720049785,'view','registered',0,1,NULL),
 ('user',1826907472,'comment','network',0,1,NULL),
 ('user',1826907472,'view','everyone',0,1,NULL),
 ('user',1826907472,'view','member',0,1,NULL),
 ('user',1826907472,'view','network',0,1,NULL),
 ('user',1826907472,'view','registered',0,1,NULL),
 ('user',1884272687,'comment','network',0,1,NULL),
 ('user',1884272687,'view','everyone',0,1,NULL),
 ('user',1884272687,'view','member',0,1,NULL),
 ('user',1884272687,'view','network',0,1,NULL),
 ('user',1884272687,'view','registered',0,1,NULL),
 ('user',1897958929,'comment','network',0,1,NULL),
 ('user',1897958929,'view','everyone',0,1,NULL),
 ('user',1897958929,'view','member',0,1,NULL),
 ('user',1897958929,'view','network',0,1,NULL),
 ('user',1897958929,'view','registered',0,1,NULL),
 ('user',2036342406,'comment','network',0,1,NULL),
 ('user',2036342406,'view','everyone',0,1,NULL),
 ('user',2036342406,'view','member',0,1,NULL),
 ('user',2036342406,'view','network',0,1,NULL),
 ('user',2036342406,'view','registered',0,1,NULL);
/*!40000 ALTER TABLE `engine4_authorization_allow` ENABLE KEYS */;


--
-- Definition of table `engine4_authorization_levels`
--

DROP TABLE IF EXISTS `engine4_authorization_levels`;
CREATE TABLE `engine4_authorization_levels` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('public','user','moderator','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `flag` enum('default','superadmin','public') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_authorization_levels`
--

/*!40000 ALTER TABLE `engine4_authorization_levels` DISABLE KEYS */;
INSERT INTO `engine4_authorization_levels` (`level_id`,`title`,`description`,`type`,`flag`) VALUES 
 (1,'Peak Board Members and Super Admins','Users of this level can modify all of your settings and data.  This level cannot be modified or deleted.','admin','superadmin'),
 (3,'Coaches','Users of this level may edit user-side content.','moderator',''),
 (4,'Players and Parents','This is the default user level.  New users are assigned to it automatically.','user','default'),
 (5,'Public and Scouts','Settings for this level apply to users who have not logged in.','public','public');
/*!40000 ALTER TABLE `engine4_authorization_levels` ENABLE KEYS */;


--
-- Definition of table `engine4_authorization_permissions`
--

DROP TABLE IF EXISTS `engine4_authorization_permissions`;
CREATE TABLE `engine4_authorization_permissions` (
  `level_id` int(11) unsigned NOT NULL,
  `type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `value` tinyint(3) NOT NULL DEFAULT '0',
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`level_id`,`type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_authorization_permissions`
--

/*!40000 ALTER TABLE `engine4_authorization_permissions` DISABLE KEYS */;
INSERT INTO `engine4_authorization_permissions` (`level_id`,`type`,`name`,`value`,`params`) VALUES 
 (1,'admin','view',1,NULL),
 (1,'advgroup_poll','auth_comment',5,'[\"registered\", \"member\", \"officer\"]'),
 (1,'advgroup_poll','comment',2,NULL),
 (1,'announcement','create',1,NULL),
 (1,'announcement','delete',2,NULL),
 (1,'announcement','edit',2,NULL),
 (1,'announcement','view',2,NULL),
 (1,'core_link','create',1,NULL),
 (1,'core_link','delete',2,NULL),
 (1,'core_link','view',2,NULL),
 (1,'event','auth_comment',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (1,'event','auth_photo',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (1,'event','auth_view',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (1,'event','comment',2,NULL),
 (1,'event','create',1,NULL),
 (1,'event','delete',2,NULL),
 (1,'event','edit',2,NULL),
 (1,'event','invite',1,NULL),
 (1,'event','photo',1,NULL),
 (1,'event','style',1,NULL),
 (1,'event','view',2,NULL),
 (1,'general','activity',2,NULL),
 (1,'general','style',2,NULL),
 (1,'group','album',1,NULL),
 (1,'group','auth_comment',5,'[\"registered\", \"member\", \"officer\"]'),
 (1,'group','auth_event',5,'[\"registered\", \"member\", \"officer\"]'),
 (1,'group','auth_photo',5,'[\"registered\", \"member\", \"officer\"]'),
 (1,'group','auth_poll',5,'[\"registered\", \"member\", \"officer\"]'),
 (1,'group','auth_view',5,'[\"everyone\", \"registered\", \"member\"]'),
 (1,'group','comment',2,NULL),
 (1,'group','create',1,NULL),
 (1,'group','delete',2,NULL),
 (1,'group','edit',2,NULL),
 (1,'group','event',1,NULL),
 (1,'group','invite',1,NULL),
 (1,'group','numberAlbum',3,'100'),
 (1,'group','numberPhoto',0,NULL),
 (1,'group','photo',1,NULL),
 (1,'group','photo.edit',2,NULL),
 (1,'group','poll',1,NULL),
 (1,'group','poll.edit',2,NULL),
 (1,'group','style',1,NULL),
 (1,'group','topic.edit',2,NULL),
 (1,'group','view',2,NULL),
 (1,'messages','auth',3,'friends'),
 (1,'messages','create',1,NULL),
 (1,'user','activity',1,NULL),
 (1,'user','auth_comment',5,'[\"registered\",\"network\",\"member\",\"owner\"]'),
 (1,'user','auth_view',5,'[\"everyone\",\"registered\",\"network\",\"member\",\"owner\"]'),
 (1,'user','block',1,NULL),
 (1,'user','comment',2,NULL),
 (1,'user','commenthtml',3,''),
 (1,'user','create',1,NULL),
 (1,'user','delete',2,NULL),
 (1,'user','description',3,'Users of this level can modify all of your settings and data.  This level cannot be modified or deleted.'),
 (1,'user','edit',2,NULL),
 (1,'user','quota',0,NULL),
 (1,'user','search',1,NULL),
 (1,'user','status',1,NULL),
 (1,'user','style',2,NULL),
 (1,'user','title',3,'Peak Board Members and Super Admins'),
 (1,'user','username',0,NULL),
 (1,'user','view',2,NULL),
 (3,'advgroup_poll','auth_comment',5,'[\"registered\", \"member\", \"officer\"]'),
 (3,'advgroup_poll','comment',2,NULL),
 (3,'announcement','view',1,NULL),
 (3,'core_link','create',1,NULL),
 (3,'core_link','delete',2,NULL),
 (3,'core_link','view',2,NULL),
 (3,'event','auth_comment',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (3,'event','auth_photo',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (3,'event','auth_view',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (3,'event','comment',2,NULL),
 (3,'event','create',1,NULL),
 (3,'event','delete',2,NULL),
 (3,'event','edit',2,NULL),
 (3,'event','invite',1,NULL),
 (3,'event','photo',1,NULL),
 (3,'event','style',1,NULL),
 (3,'event','view',2,NULL),
 (3,'general','activity',2,NULL),
 (3,'general','style',2,NULL),
 (3,'group','album',1,NULL),
 (3,'group','auth_comment',5,'[\"registered\", \"member\", \"officer\"]'),
 (3,'group','auth_event',5,'[\"registered\", \"member\", \"officer\"]'),
 (3,'group','auth_photo',5,'[\"registered\", \"member\", \"officer\"]'),
 (3,'group','auth_poll',5,'[\"registered\", \"member\", \"officer\"]'),
 (3,'group','auth_view',5,'[\"everyone\", \"registered\", \"member\"]'),
 (3,'group','comment',2,NULL),
 (3,'group','create',1,NULL),
 (3,'group','delete',2,NULL),
 (3,'group','edit',2,NULL),
 (3,'group','event',1,NULL),
 (3,'group','invite',1,NULL),
 (3,'group','numberAlbum',3,'100'),
 (3,'group','numberPhoto',0,NULL),
 (3,'group','photo',1,NULL),
 (3,'group','photo.edit',2,NULL),
 (3,'group','poll',1,NULL),
 (3,'group','poll.edit',2,NULL),
 (3,'group','style',1,NULL),
 (3,'group','topic.edit',2,NULL),
 (3,'group','view',2,NULL),
 (3,'messages','auth',3,'everyone'),
 (3,'messages','create',1,NULL),
 (3,'user','activity',1,NULL),
 (3,'user','auth_comment',5,'[\"network\"]'),
 (3,'user','auth_view',5,'[\"everyone\",\"registered\",\"network\",\"member\",\"owner\"]'),
 (3,'user','block',0,NULL),
 (3,'user','comment',2,NULL),
 (3,'user','commenthtml',3,''),
 (3,'user','create',1,NULL),
 (3,'user','delete',0,NULL),
 (3,'user','description',3,'Users of this level may edit user-side content.'),
 (3,'user','edit',2,NULL),
 (3,'user','quota',0,NULL),
 (3,'user','search',1,NULL),
 (3,'user','status',1,NULL),
 (3,'user','style',2,NULL),
 (3,'user','title',3,'Coaches'),
 (3,'user','username',0,NULL),
 (3,'user','view',2,NULL),
 (4,'advgroup_poll','auth_comment',5,'[\"registered\", \"member\", \"officer\"]'),
 (4,'advgroup_poll','comment',1,NULL),
 (4,'announcement','view',1,NULL),
 (4,'core_link','create',1,NULL),
 (4,'core_link','delete',1,NULL),
 (4,'core_link','view',1,NULL),
 (4,'event','auth_comment',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (4,'event','auth_photo',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (4,'event','auth_view',5,'[\"everyone\",\"owner_network\",\"owner_member_member\",\"owner_member\",\"parent_member\",\"member\",\"owner\"]'),
 (4,'event','comment',1,NULL),
 (4,'event','create',1,NULL),
 (4,'event','delete',1,NULL),
 (4,'event','edit',1,NULL),
 (4,'event','invite',1,NULL),
 (4,'event','photo',1,NULL),
 (4,'event','style',1,NULL),
 (4,'event','view',1,NULL),
 (4,'general','style',1,NULL),
 (4,'group','album',1,NULL),
 (4,'group','auth_comment',5,'[\"registered\", \"member\", \"officer\"]'),
 (4,'group','auth_event',5,'[\"registered\", \"member\", \"officer\"]'),
 (4,'group','auth_photo',5,'[\"registered\", \"member\", \"officer\"]'),
 (4,'group','auth_poll',5,'[\"registered\", \"member\", \"officer\"]'),
 (4,'group','auth_view',5,'[\"everyone\", \"registered\", \"member\"]'),
 (4,'group','comment',1,NULL),
 (4,'group','create',1,NULL),
 (4,'group','delete',1,NULL),
 (4,'group','edit',1,NULL),
 (4,'group','event',1,NULL),
 (4,'group','invite',1,NULL),
 (4,'group','numberAlbum',3,'20'),
 (4,'group','numberPhoto',3,'50'),
 (4,'group','photo',1,NULL),
 (4,'group','photo.edit',1,NULL),
 (4,'group','poll',1,NULL),
 (4,'group','poll.edit',1,NULL),
 (4,'group','style',1,NULL),
 (4,'group','topic.edit',1,NULL),
 (4,'group','view',1,NULL),
 (4,'messages','auth',3,'everyone'),
 (4,'messages','create',1,NULL),
 (4,'user','auth_comment',5,'[\"network\"]'),
 (4,'user','auth_view',5,'[\"everyone\",\"registered\",\"network\",\"member\",\"owner\"]'),
 (4,'user','block',0,NULL),
 (4,'user','comment',1,NULL),
 (4,'user','commenthtml',3,''),
 (4,'user','create',1,NULL),
 (4,'user','delete',1,NULL),
 (4,'user','description',3,'This is the default user level.  New users are assigned to it automatically.'),
 (4,'user','edit',1,NULL),
 (4,'user','quota',0,NULL),
 (4,'user','search',0,NULL),
 (4,'user','status',1,NULL),
 (4,'user','style',1,NULL),
 (4,'user','title',3,'Players and Parents'),
 (4,'user','username',1,NULL),
 (4,'user','view',1,NULL),
 (5,'announcement','view',1,NULL),
 (5,'core_link','view',1,NULL),
 (5,'event','view',1,NULL),
 (5,'group','view',1,NULL),
 (5,'messages','auth',0,NULL),
 (5,'messages','create',0,NULL),
 (5,'user','description',3,'Settings for this level apply to users who have not logged in.'),
 (5,'user','title',3,'Public and Scouts'),
 (5,'user','view',1,NULL);
/*!40000 ALTER TABLE `engine4_authorization_permissions` ENABLE KEYS */;


--
-- Definition of table `engine4_core_adcampaigns`
--

DROP TABLE IF EXISTS `engine4_core_adcampaigns`;
CREATE TABLE `engine4_core_adcampaigns` (
  `adcampaign_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `end_settings` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `limit_view` int(11) unsigned NOT NULL DEFAULT '0',
  `limit_click` int(11) unsigned NOT NULL DEFAULT '0',
  `limit_ctr` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `network` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  `clicks` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`adcampaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_adcampaigns`
--

/*!40000 ALTER TABLE `engine4_core_adcampaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_adcampaigns` ENABLE KEYS */;


--
-- Definition of table `engine4_core_adphotos`
--

DROP TABLE IF EXISTS `engine4_core_adphotos`;
CREATE TABLE `engine4_core_adphotos` (
  `adphoto_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`adphoto_id`),
  KEY `ad_id` (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_adphotos`
--

/*!40000 ALTER TABLE `engine4_core_adphotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_adphotos` ENABLE KEYS */;


--
-- Definition of table `engine4_core_ads`
--

DROP TABLE IF EXISTS `engine4_core_ads`;
CREATE TABLE `engine4_core_ads` (
  `ad_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `ad_campaign` int(11) unsigned NOT NULL,
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  `clicks` int(11) unsigned NOT NULL DEFAULT '0',
  `media_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html_code` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`),
  KEY `ad_campaign` (`ad_campaign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_ads`
--

/*!40000 ALTER TABLE `engine4_core_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_ads` ENABLE KEYS */;


--
-- Definition of table `engine4_core_auth`
--

DROP TABLE IF EXISTS `engine4_core_auth`;
CREATE TABLE `engine4_core_auth` (
  `id` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `expires` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`user_id`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_auth`
--

/*!40000 ALTER TABLE `engine4_core_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_auth` ENABLE KEYS */;


--
-- Definition of table `engine4_core_bannedemails`
--

DROP TABLE IF EXISTS `engine4_core_bannedemails`;
CREATE TABLE `engine4_core_bannedemails` (
  `bannedemail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bannedemail_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_bannedemails`
--

/*!40000 ALTER TABLE `engine4_core_bannedemails` DISABLE KEYS */;
INSERT INTO `engine4_core_bannedemails` (`bannedemail_id`,`email`) VALUES 
 (1,'');
/*!40000 ALTER TABLE `engine4_core_bannedemails` ENABLE KEYS */;


--
-- Definition of table `engine4_core_bannedips`
--

DROP TABLE IF EXISTS `engine4_core_bannedips`;
CREATE TABLE `engine4_core_bannedips` (
  `bannedip_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start` varbinary(16) NOT NULL,
  `stop` varbinary(16) NOT NULL,
  PRIMARY KEY (`bannedip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_bannedips`
--

/*!40000 ALTER TABLE `engine4_core_bannedips` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_bannedips` ENABLE KEYS */;


--
-- Definition of table `engine4_core_bannedusernames`
--

DROP TABLE IF EXISTS `engine4_core_bannedusernames`;
CREATE TABLE `engine4_core_bannedusernames` (
  `bannedusername_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bannedusername_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_bannedusernames`
--

/*!40000 ALTER TABLE `engine4_core_bannedusernames` DISABLE KEYS */;
INSERT INTO `engine4_core_bannedusernames` (`bannedusername_id`,`username`) VALUES 
 (1,'');
/*!40000 ALTER TABLE `engine4_core_bannedusernames` ENABLE KEYS */;


--
-- Definition of table `engine4_core_bannedwords`
--

DROP TABLE IF EXISTS `engine4_core_bannedwords`;
CREATE TABLE `engine4_core_bannedwords` (
  `bannedword_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bannedword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_bannedwords`
--

/*!40000 ALTER TABLE `engine4_core_bannedwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_bannedwords` ENABLE KEYS */;


--
-- Definition of table `engine4_core_comments`
--

DROP TABLE IF EXISTS `engine4_core_comments`;
CREATE TABLE `engine4_core_comments` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `resource_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `like_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `resource_type` (`resource_type`,`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_comments`
--

/*!40000 ALTER TABLE `engine4_core_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_comments` ENABLE KEYS */;


--
-- Definition of table `engine4_core_content`
--

DROP TABLE IF EXISTS `engine4_core_content`;
CREATE TABLE `engine4_core_content` (
  `content_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'widget',
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `parent_content_id` int(11) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `params` text COLLATE utf8_unicode_ci,
  `attribs` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`content_id`),
  KEY `page_id` (`page_id`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=713 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_content`
--

/*!40000 ALTER TABLE `engine4_core_content` DISABLE KEYS */;
INSERT INTO `engine4_core_content` (`content_id`,`page_id`,`type`,`name`,`parent_content_id`,`order`,`params`,`attribs`) VALUES 
 (100,1,'container','main',NULL,1,'',NULL),
 (110,1,'widget','core.menu-mini',100,1,'',NULL),
 (111,1,'widget','core.menu-logo',100,2,'',NULL),
 (112,1,'widget','core.menu-main',100,3,'',NULL),
 (200,2,'container','main',NULL,1,'',NULL),
 (210,2,'widget','core.menu-footer',200,2,'',NULL),
 (300,3,'container','main',NULL,2,'[\"\"]',NULL),
 (310,3,'container','left',300,4,'[\"\"]',NULL),
 (311,3,'container','right',300,5,'[\"\"]',NULL),
 (312,3,'container','middle',300,6,'[\"\"]',NULL),
 (320,3,'widget','user.login-or-signup',310,4,'[\"\"]',NULL),
 (321,3,'widget','user.list-online',310,5,'{\"title\":\"%s Members Online\"}',NULL),
 (322,3,'widget','core.statistics',310,6,'{\"title\":\"Network Stats\"}',NULL),
 (330,3,'widget','user.list-signups',311,11,'{\"title\":\"Newest Members\"}',NULL),
 (331,3,'widget','user.list-popular',311,12,'{\"title\":\"Popular Members\"}',NULL),
 (340,3,'widget','announcement.list-announcements',312,8,'{\"title\":\"Announcements\"}',NULL),
 (341,3,'widget','activity.feed',312,9,'{\"title\":\"What\'s New\"}',NULL),
 (400,4,'container','main',NULL,1,'',NULL),
 (410,4,'container','left',400,1,'',NULL),
 (411,4,'container','right',400,2,'',NULL),
 (412,4,'container','middle',400,3,'',NULL),
 (420,4,'widget','user.home-photo',410,1,'',NULL),
 (421,4,'widget','user.home-links',410,2,'',NULL),
 (422,4,'widget','user.list-online',410,3,'{\"title\":\"%s Members Online\"}',NULL),
 (423,4,'widget','core.statistics',410,4,'{\"title\":\"Network Stats\"}',NULL),
 (430,4,'widget','activity.list-requests',411,1,'{\"title\":\"Requests\"}',NULL),
 (431,4,'widget','user.list-signups',411,2,'{\"title\":\"Newest Members\"}',NULL),
 (432,4,'widget','user.list-popular',411,3,'{\"title\":\"Popular Members\"}',NULL),
 (440,4,'widget','announcement.list-announcements',412,1,'',NULL),
 (441,4,'widget','activity.feed',412,2,'{\"title\":\"What\'s New\"}',NULL),
 (500,5,'container','main',NULL,1,'',NULL),
 (510,5,'container','left',500,1,'',NULL),
 (511,5,'container','middle',500,3,'',NULL),
 (520,5,'widget','user.profile-photo',510,1,'',NULL),
 (521,5,'widget','user.profile-options',510,2,'',NULL),
 (522,5,'widget','user.profile-friends-common',510,3,'{\"title\":\"Mutual Friends\"}',NULL),
 (523,5,'widget','user.profile-info',510,4,'{\"title\":\"Member Info\"}',NULL),
 (530,5,'widget','user.profile-status',511,1,'',NULL),
 (531,5,'widget','core.container-tabs',511,2,'{\"max\":\"6\"}',NULL),
 (540,5,'widget','activity.feed',531,1,'{\"title\":\"Updates\"}',NULL),
 (541,5,'widget','user.profile-fields',531,2,'{\"title\":\"Info\"}',NULL),
 (542,5,'widget','user.profile-friends',531,3,'{\"title\":\"Friends\",\"titleCount\":true}',NULL),
 (546,5,'widget','core.profile-links',531,7,'{\"title\":\"Links\",\"titleCount\":true}',NULL),
 (547,6,'container','main',NULL,1,NULL,NULL),
 (548,6,'container','middle',547,2,NULL,NULL),
 (549,6,'widget','core.content',548,1,NULL,NULL),
 (550,7,'container','main',NULL,1,NULL,NULL),
 (551,7,'container','middle',550,2,NULL,NULL),
 (552,7,'widget','core.content',551,1,NULL,NULL),
 (553,8,'container','main',NULL,1,NULL,NULL),
 (554,8,'container','middle',553,2,NULL,NULL),
 (555,8,'widget','core.content',554,1,NULL,NULL),
 (556,9,'container','main',NULL,1,NULL,NULL),
 (557,9,'container','middle',556,1,NULL,NULL),
 (558,9,'widget','core.content',557,1,NULL,NULL),
 (559,10,'container','main',NULL,1,NULL,NULL),
 (560,10,'container','middle',559,1,NULL,NULL),
 (561,10,'widget','core.content',560,1,NULL,NULL),
 (562,11,'container','main',NULL,1,NULL,NULL),
 (563,11,'container','middle',562,1,NULL,NULL),
 (564,11,'widget','core.content',563,1,NULL,NULL),
 (565,12,'container','main',NULL,1,NULL,NULL),
 (566,12,'container','middle',565,1,NULL,NULL),
 (567,12,'widget','core.content',566,1,NULL,NULL),
 (568,13,'container','main',NULL,1,NULL,NULL),
 (569,13,'container','middle',568,1,NULL,NULL),
 (570,13,'widget','core.content',569,2,NULL,NULL),
 (571,13,'widget','messages.menu',569,1,NULL,NULL),
 (572,14,'container','main',NULL,1,NULL,NULL),
 (573,14,'container','middle',572,1,NULL,NULL),
 (574,14,'widget','core.content',573,2,NULL,NULL),
 (575,14,'widget','messages.menu',573,1,NULL,NULL),
 (576,15,'container','main',NULL,1,'',NULL),
 (577,15,'widget','core.menu-logo',576,2,'',NULL),
 (578,15,'widget','mobi.mobi-menu-main',576,3,'',NULL),
 (579,16,'container','main',NULL,1,'',NULL),
 (580,16,'widget','mobi.mobi-footer',579,2,'',NULL),
 (581,17,'container','main',NULL,1,'',NULL),
 (582,17,'container','middle',581,2,'',NULL),
 (583,17,'widget','user.login-or-signup',582,3,'',NULL),
 (584,18,'container','main',NULL,1,'',NULL),
 (585,18,'container','middle',584,2,'',NULL),
 (586,18,'widget','activity.feed',585,3,'',NULL),
 (587,19,'container','main',NULL,1,'',NULL),
 (588,19,'container','middle',587,2,'',NULL),
 (589,19,'widget','user.profile-photo',588,3,'',NULL),
 (590,19,'widget','user.profile-status',588,4,'',NULL),
 (591,19,'widget','mobi.mobi-profile-options',588,5,'',NULL),
 (592,19,'widget','core.container-tabs',588,6,'{\"max\":6}',NULL),
 (593,19,'widget','activity.feed',592,7,'{\"title\":\"What\'s New\"}',NULL),
 (594,19,'widget','user.profile-fields',592,8,'{\"title\":\"Info\"}',NULL),
 (595,19,'widget','user.profile-friends',592,9,'{\"title\":\"Friends\",\"titleCount\":true}',NULL),
 (596,20,'container','main',NULL,1,'',NULL),
 (597,20,'container','middle',596,2,'',NULL),
 (598,20,'widget','event.profile-status',597,3,'',NULL),
 (599,20,'widget','event.profile-photo',597,4,'',NULL),
 (600,20,'widget','event.profile-info',597,5,'',NULL),
 (601,20,'widget','event.profile-rsvp',597,6,'',NULL),
 (602,20,'widget','core.container-tabs',597,7,'{\"max\":6}',NULL),
 (603,20,'widget','activity.feed',602,8,'{\"title\":\"What\'s New\"}',NULL),
 (604,20,'widget','event.profile-members',602,9,'{\"title\":\"Guests\",\"titleCount\":true}',NULL),
 (605,21,'container','main',NULL,1,'',NULL),
 (606,21,'container','middle',605,3,'',NULL),
 (607,21,'container','left',605,1,'',NULL),
 (608,21,'widget','core.container-tabs',606,2,'{\"max\":\"6\"}',NULL),
 (609,21,'widget','event.profile-status',606,1,'',NULL),
 (610,21,'widget','event.profile-photo',607,1,'',NULL),
 (611,21,'widget','event.profile-options',607,2,'',NULL),
 (612,21,'widget','event.profile-info',607,3,'',NULL),
 (613,21,'widget','event.profile-rsvp',607,4,'',NULL),
 (614,21,'widget','activity.feed',608,1,'{\"title\":\"Updates\"}',NULL),
 (615,21,'widget','event.profile-members',608,2,'{\"title\":\"Guests\",\"titleCount\":true}',NULL),
 (616,21,'widget','event.profile-photos',608,3,'{\"title\":\"Photos\",\"titleCount\":true}',NULL),
 (617,21,'widget','event.profile-discussions',608,4,'{\"title\":\"Discussions\",\"titleCount\":true}',NULL),
 (618,21,'widget','core.profile-links',608,5,'{\"title\":\"Links\",\"titleCount\":true}',NULL),
 (619,4,'widget','event.home-upcoming',411,1,'{\"title\":\"Upcoming Events\",\"titleCount\":true}',NULL),
 (620,5,'widget','event.profile-events',531,8,'{\"title\":\"Events\",\"titleCount\":true}',NULL),
 (621,22,'container','top',NULL,1,NULL,NULL),
 (622,22,'container','main',NULL,2,NULL,NULL),
 (623,22,'container','middle',621,1,NULL,NULL),
 (624,22,'container','middle',622,2,NULL,NULL),
 (625,22,'container','right',622,1,NULL,NULL),
 (626,22,'widget','event.browse-menu',623,1,NULL,NULL),
 (627,22,'widget','core.content',624,1,NULL,NULL),
 (628,22,'widget','event.browse-search',625,1,NULL,NULL),
 (629,22,'widget','event.browse-menu-quick',625,2,NULL,NULL),
 (630,5,'widget','advgroup.profile-groups',531,9,'{\"title\":\"Groups\",\"titleCount\":true}',NULL),
 (631,23,'container','main',NULL,1,'',NULL),
 (632,23,'container','middle',631,3,'',NULL),
 (633,23,'container','left',631,1,'',NULL),
 (634,23,'widget','core.container-tabs',632,2,'{\"max\":\"6\"}',NULL),
 (635,23,'widget','group.profile-status',632,1,'',NULL),
 (636,23,'widget','group.profile-photo',633,1,'',NULL),
 (637,23,'widget','group.profile-options',633,2,'',NULL),
 (638,23,'widget','group.profile-info',633,3,'',NULL),
 (639,23,'widget','activity.feed',634,1,'{\"title\":\"Updates\"}',NULL),
 (640,23,'widget','group.profile-members',634,2,'{\"title\":\"Members\",\"titleCount\":true}',NULL),
 (641,23,'widget','group.profile-photos',634,3,'{\"title\":\"Photos\",\"titleCount\":true}',NULL),
 (642,23,'widget','group.profile-discussions',634,4,'{\"title\":\"Discussions\",\"titleCount\":true}',NULL),
 (643,23,'widget','core.profile-links',634,5,'{\"title\":\"Links\",\"titleCount\":true}',NULL),
 (644,23,'widget','group.profile-events',634,6,'{\"title\":\"Events\",\"titleCount\":true}',NULL),
 (645,24,'container','main',NULL,1,'',NULL),
 (646,24,'container','middle',645,2,'',NULL),
 (647,24,'widget','group.profile-status',646,3,'',NULL),
 (648,24,'widget','group.profile-photo',646,4,'',NULL),
 (649,24,'widget','group.profile-info',646,5,'',NULL),
 (650,24,'widget','core.container-tabs',646,6,'{\"max\":6}',NULL),
 (651,24,'widget','activity.feed',650,7,'{\"title\":\"What\'s New\"}',NULL),
 (652,24,'widget','group.profile-members',650,8,'{\"title\":\"Members\",\"titleCount\":true}',NULL),
 (653,25,'container','top',NULL,1,NULL,NULL),
 (654,25,'container','main',NULL,2,NULL,NULL),
 (655,25,'container','middle',653,1,NULL,NULL),
 (656,25,'container','middle',654,2,NULL,NULL),
 (657,25,'container','right',654,1,NULL,NULL),
 (658,25,'widget','group.browse-menu',655,1,NULL,NULL),
 (659,25,'widget','core.content',656,1,NULL,NULL),
 (660,25,'widget','group.browse-search',657,1,NULL,NULL),
 (661,25,'widget','group.browse-menu-quick',657,2,NULL,NULL),
 (662,26,'container','top',NULL,1,'',NULL),
 (663,26,'container','middle',662,6,'',NULL),
 (664,26,'widget','advgroup.groups-menu',663,1,'',NULL),
 (665,26,'container','main',NULL,2,'',NULL),
 (666,26,'container','middle',665,6,'',NULL),
 (667,26,'container','right',665,5,'',NULL),
 (668,26,'widget','advgroup.featured-groups',666,7,'{\"title\":\"Featured Groups\"}',NULL),
 (669,26,'widget','core.container-tabs',666,8,'{\"max\":\"6\"}',NULL),
 (670,26,'widget','advgroup.list-recent-groups',669,9,'{\"title\":\"Newest Groups\"}',NULL),
 (671,26,'widget','advgroup.list-popular-groups',669,10,'{\"title\":\"Popular Groups\"}',NULL),
 (672,26,'widget','advgroup.list-active-groups',669,11,'{\"title\":\"Active Groups\"}',NULL),
 (673,26,'widget','advgroup.groups-search',667,7,'',NULL),
 (674,26,'widget','advgroup.overall-statistic',667,8,'{\"title\":\"Statistics\"}',NULL),
 (675,27,'container','top',NULL,1,'',NULL),
 (676,27,'container','middle',675,6,'',NULL),
 (677,27,'widget','advgroup.groups-menu',676,7,'',NULL),
 (678,27,'container','main',NULL,2,'',NULL),
 (679,27,'container','middle',678,6,'',NULL),
 (680,27,'widget','advgroup.groups-listing',679,7,'',NULL),
 (681,27,'container','right',678,5,'',NULL),
 (682,27,'widget','advgroup.groups-search',681,7,'',NULL),
 (683,28,'container','main',NULL,1,'',NULL),
 (684,28,'container','left',683,1,'',NULL),
 (685,28,'container','middle',683,3,'',NULL),
 (686,28,'container','right',683,2,'',NULL),
 (687,28,'widget','advgroup.profile-info',685,1,'',NULL),
 (688,28,'widget','advgroup.profile-group-announcements',685,2,'{\"title\":\"Announcement\"}',NULL),
 (689,28,'widget','core.container-tabs',685,3,'{\"max\":\"8\"}',NULL),
 (690,28,'widget','advgroup.profile-photo',684,1,'',NULL),
 (691,28,'widget','advgroup.profile-options',684,2,'',NULL),
 (692,28,'widget','advgroup.profile-statistic',684,3,'',NULL),
 (693,28,'widget','activity.feed',689,1,'{\"title\":\"Updates\"}',NULL),
 (694,28,'widget','advgroup.profile-members',689,2,'{\"title\":\"Members\",\"titleCount\":true}',NULL),
 (695,28,'widget','advgroup.profile-discussions',689,3,'{\"title\":\"Discussions\",\"titleCount\":true}',NULL),
 (696,28,'widget','advgroup.profile-events',689,4,'{\"title\":\"Events\",\"titleCount\":true}',NULL),
 (697,28,'widget','advgroup.profile-useful-links',689,5,'{\"title\":\"Useful Links\",\"titleCount\":true}',NULL),
 (698,28,'widget','core.profile-links',689,6,'{\"title\":\"Shared Links\",\"titleCount\":true}',NULL),
 (699,28,'widget','advgroup.suggested-poll',686,2,'{\"title\":\"Suggested Poll\"}',NULL),
 (700,28,'widget','advgroup.profile-albums',686,2,'{\"title\":\"Recent Albums\",\"titleCount\":true}',NULL),
 (701,28,'widget','advgroup.groups-top-posters',686,3,'{\"title\":\"Top Posters\"}',NULL),
 (702,29,'container','main',NULL,1,'',NULL),
 (703,29,'container','middle',702,2,'',NULL),
 (704,29,'widget','advgroup.profile-status',703,3,'',NULL),
 (705,29,'widget','advgroup.profile-photo',703,4,'',NULL),
 (706,29,'widget','advgroup.profile-info',703,5,'',NULL),
 (707,29,'widget','core.container-tabs',703,6,'{\"max\":6}',NULL),
 (708,29,'widget','activity.feed',707,7,'{\"title\":\"What\'s New\"}',NULL),
 (709,29,'widget','advgroup.profile-members',707,8,'{\"title\":\"Members\",\"titleCount\":true}',NULL),
 (710,5,'widget','group.profile-groups',531,9,'{\"title\":\"Groups\",\"titleCount\":true}',NULL),
 (711,3,'widget','clock',310,3,'[]',NULL),
 (712,3,'widget','clock',310,3,'[]',NULL);
/*!40000 ALTER TABLE `engine4_core_content` ENABLE KEYS */;


--
-- Definition of table `engine4_core_geotags`
--

DROP TABLE IF EXISTS `engine4_core_geotags`;
CREATE TABLE `engine4_core_geotags` (
  `geotag_id` int(11) unsigned NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`geotag_id`),
  KEY `latitude` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_geotags`
--

/*!40000 ALTER TABLE `engine4_core_geotags` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_geotags` ENABLE KEYS */;


--
-- Definition of table `engine4_core_jobs`
--

DROP TABLE IF EXISTS `engine4_core_jobs`;
CREATE TABLE `engine4_core_jobs` (
  `job_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jobtype_id` int(10) unsigned NOT NULL,
  `state` enum('pending','active','sleeping','failed','cancelled','completed','timeout') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `is_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `progress` decimal(5,4) unsigned NOT NULL DEFAULT '0.0000',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `started_date` datetime DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `priority` mediumint(9) NOT NULL DEFAULT '100',
  `data` text COLLATE utf8_unicode_ci,
  `messages` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`job_id`),
  KEY `jobtype_id` (`jobtype_id`),
  KEY `state` (`state`),
  KEY `is_complete` (`is_complete`,`priority`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_jobs`
--

/*!40000 ALTER TABLE `engine4_core_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_jobs` ENABLE KEYS */;


--
-- Definition of table `engine4_core_jobtypes`
--

DROP TABLE IF EXISTS `engine4_core_jobtypes`;
CREATE TABLE `engine4_core_jobtypes` (
  `jobtype_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `form` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `priority` mediumint(9) NOT NULL DEFAULT '100',
  `multi` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`jobtype_id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_jobtypes`
--

/*!40000 ALTER TABLE `engine4_core_jobtypes` DISABLE KEYS */;
INSERT INTO `engine4_core_jobtypes` (`jobtype_id`,`title`,`type`,`module`,`plugin`,`form`,`enabled`,`priority`,`multi`) VALUES 
 (1,'Download File','file_download','core','Core_Plugin_Job_FileDownload','Core_Form_Admin_Job_FileDownload',1,100,1),
 (2,'Upload File','file_upload','core','Core_Plugin_Job_FileUpload','Core_Form_Admin_Job_FileUpload',1,100,1),
 (3,'Rebuild Activity Privacy','activity_maintenance_rebuild_privacy','activity','Activity_Plugin_Job_Maintenance_RebuildPrivacy',NULL,1,50,1),
 (4,'Rebuild Member Privacy','user_maintenance_rebuild_privacy','user','User_Plugin_Job_Maintenance_RebuildPrivacy',NULL,1,50,1),
 (5,'Rebuild Network Membership','network_maintenance_rebuild_membership','network','Network_Plugin_Job_Maintenance_RebuildMembership',NULL,1,50,1),
 (6,'Storage Transfer','storage_transfer','core','Storage_Plugin_Job_Transfer','Core_Form_Admin_Job_Generic',1,100,1),
 (7,'Storage Cleanup','storage_cleanup','core','Storage_Plugin_Job_Cleanup','Core_Form_Admin_Job_Generic',1,100,1),
 (8,'Rebuild Event Privacy','event_maintenance_rebuild_privacy','event','Event_Plugin_Job_Maintenance_RebuildPrivacy',NULL,1,50,1),
 (9,'Rebuild Group Privacy','group_maintenance_rebuild_privacy','group','Group_Plugin_Job_Maintenance_RebuildPrivacy',NULL,1,50,1),
 (10,'Rebuild Group Privacy','advgroup_maintenance_rebuild_privacy','advgroup','Advgroup_Plugin_Job_Maintenance_RebuildPrivacy',NULL,1,50,1);
/*!40000 ALTER TABLE `engine4_core_jobtypes` ENABLE KEYS */;


--
-- Definition of table `engine4_core_languages`
--

DROP TABLE IF EXISTS `engine4_core_languages`;
CREATE TABLE `engine4_core_languages` (
  `language_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fallback` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `order` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_languages`
--

/*!40000 ALTER TABLE `engine4_core_languages` DISABLE KEYS */;
INSERT INTO `engine4_core_languages` (`language_id`,`code`,`name`,`fallback`,`order`) VALUES 
 (1,'en','English','en',1);
/*!40000 ALTER TABLE `engine4_core_languages` ENABLE KEYS */;


--
-- Definition of table `engine4_core_likes`
--

DROP TABLE IF EXISTS `engine4_core_likes`;
CREATE TABLE `engine4_core_likes` (
  `like_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `resource_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `resource_type` (`resource_type`,`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_likes`
--

/*!40000 ALTER TABLE `engine4_core_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_likes` ENABLE KEYS */;


--
-- Definition of table `engine4_core_links`
--

DROP TABLE IF EXISTS `engine4_core_links`;
CREATE TABLE `engine4_core_links` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `owner_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `owner_id` int(11) unsigned NOT NULL,
  `view_count` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`link_id`),
  KEY `owner` (`owner_type`,`owner_id`),
  KEY `parent` (`parent_type`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_links`
--

/*!40000 ALTER TABLE `engine4_core_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_links` ENABLE KEYS */;


--
-- Definition of table `engine4_core_listitems`
--

DROP TABLE IF EXISTS `engine4_core_listitems`;
CREATE TABLE `engine4_core_listitems` (
  `listitem_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`listitem_id`),
  KEY `list_id` (`list_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_listitems`
--

/*!40000 ALTER TABLE `engine4_core_listitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_listitems` ENABLE KEYS */;


--
-- Definition of table `engine4_core_lists`
--

DROP TABLE IF EXISTS `engine4_core_lists`;
CREATE TABLE `engine4_core_lists` (
  `list_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `owner_id` int(11) unsigned NOT NULL,
  `child_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `child_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`list_id`),
  KEY `owner_type` (`owner_type`,`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_lists`
--

/*!40000 ALTER TABLE `engine4_core_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_lists` ENABLE KEYS */;


--
-- Definition of table `engine4_core_log`
--

DROP TABLE IF EXISTS `engine4_core_log`;
CREATE TABLE `engine4_core_log` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `plugin` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(2) NOT NULL DEFAULT '6',
  `priorityName` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INFO',
  PRIMARY KEY (`message_id`),
  KEY `domain` (`domain`,`timestamp`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_log`
--

/*!40000 ALTER TABLE `engine4_core_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_log` ENABLE KEYS */;


--
-- Definition of table `engine4_core_mail`
--

DROP TABLE IF EXISTS `engine4_core_mail`;
CREATE TABLE `engine4_core_mail` (
  `mail_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('system','zend') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(3) DEFAULT '100',
  `recipient_count` int(11) unsigned DEFAULT '0',
  `recipient_total` int(10) NOT NULL DEFAULT '0',
  `creation_time` datetime NOT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_mail`
--

/*!40000 ALTER TABLE `engine4_core_mail` DISABLE KEYS */;
INSERT INTO `engine4_core_mail` (`mail_id`,`type`,`body`,`priority`,`recipient_count`,`recipient_total`,`creation_time`) VALUES 
 (25,'system','a:2:{s:4:\"type\";s:26:\"core_verification_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"op2vb.com\";s:5:\"email\";s:15:\"odesk@op2vb.com\";s:4:\"date\";i:1326321779;s:15:\"recipient_title\";s:6:\"admin2\";s:14:\"recipient_link\";s:20:\"/peak/profile/admin2\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:83:\"/peak/signup/verify/email/odesk%40op2vb.com/verify/c064c063f5790a253147095ff934038e\";s:8:\"password\";s:10:\"667281c8cf\";}}',100,1,0,'2012-01-11 22:42:59'),
 (26,'system','a:2:{s:4:\"type\";s:21:\"user_account_approved\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"op2vb.com\";s:5:\"email\";s:15:\"odesk@op2vb.com\";s:4:\"date\";i:1326321936;s:15:\"recipient_title\";s:7:\"Admin 2\";s:14:\"recipient_link\";s:20:\"/peak/profile/admin2\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:11:\"/peak/login\";}}',100,1,0,'2012-01-11 22:45:36'),
 (27,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"op2vb.com\";s:5:\"email\";s:15:\"odesk@op2vb.com\";s:4:\"date\";i:1326321937;s:15:\"recipient_title\";s:7:\"Admin 2\";s:14:\"recipient_link\";s:20:\"/peak/profile/admin2\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:27:\"http://op2vb.com/peak/login\";}}',100,1,0,'2012-01-11 22:45:37'),
 (28,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:12:\"user1@ab.com\";s:4:\"date\";i:1327359478;s:15:\"recipient_title\";s:5:\"user1\";s:14:\"recipient_link\";s:15:\"/peak/profile/7\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:11:\"/peak/login\";s:8:\"password\";s:10:\"5480aa731f\";}}',100,1,0,'2012-01-23 22:57:58'),
 (29,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:12:\"user1@ab.com\";s:4:\"date\";i:1327359478;s:15:\"recipient_title\";s:5:\"aa aa\";s:14:\"recipient_link\";s:15:\"/peak/profile/7\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:11:\"/peak/login\";}}',100,1,0,'2012-01-23 22:57:58'),
 (30,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:12:\"user2@aa.com\";s:4:\"date\";i:1327360698;s:15:\"recipient_title\";s:5:\"user2\";s:14:\"recipient_link\";s:15:\"/peak/profile/8\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:11:\"/peak/login\";s:8:\"password\";s:10:\"b5d8d26f99\";}}',100,1,0,'2012-01-23 23:18:18'),
 (31,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:12:\"user2@aa.com\";s:4:\"date\";i:1327360699;s:15:\"recipient_title\";s:4:\"a aa\";s:14:\"recipient_link\";s:15:\"/peak/profile/8\";s:15:\"recipient_photo\";s:41:\"/peak/public/user/08/0008_7b07.png?c=5ff6\";s:11:\"object_link\";s:11:\"/peak/login\";}}',100,1,0,'2012-01-23 23:18:19'),
 (32,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327366422;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:15:\"/peak/profile/9\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:11:\"/peak/login\";s:8:\"password\";s:10:\"50180c6a3e\";}}',100,1,0,'2012-01-24 00:53:42'),
 (33,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327366422;s:15:\"recipient_title\";s:3:\"a a\";s:14:\"recipient_link\";s:15:\"/peak/profile/9\";s:15:\"recipient_photo\";s:41:\"/peak/public/user/0c/000c_2e3b.png?c=66dc\";s:11:\"object_link\";s:11:\"/peak/login\";}}',100,1,0,'2012-01-24 00:53:42'),
 (34,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"u4@aa.com\";s:4:\"date\";i:1327503350;s:15:\"recipient_title\";s:2:\"u4\";s:14:\"recipient_link\";s:11:\"/profile/11\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"ae041b0970\";}}',100,1,0,'2012-01-25 14:56:02'),
 (35,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"u4@aa.com\";s:4:\"date\";i:1327503362;s:15:\"recipient_title\";s:3:\"a a\";s:14:\"recipient_link\";s:11:\"/profile/11\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-25 14:56:02'),
 (36,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327520220;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:18:\"/profile/962724476\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"760b74b9f8\";}}',100,1,0,'2012-01-25 19:37:00'),
 (37,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327520220;s:15:\"recipient_title\";s:3:\"a a\";s:14:\"recipient_link\";s:18:\"/profile/962724476\";s:15:\"recipient_photo\";s:36:\"/public/user/10/0010_4f8f.jpg?c=1905\";s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-25 19:37:00'),
 (38,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327520737;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1365141341\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"b824f34654\";}}',100,1,0,'2012-01-25 19:45:38'),
 (39,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327520738;s:15:\"recipient_title\";s:3:\"2 2\";s:14:\"recipient_link\";s:19:\"/profile/1365141341\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-25 19:45:38'),
 (40,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327522272;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1365141342\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"3d50036069\";}}',100,1,0,'2012-01-25 20:11:12'),
 (41,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327522272;s:15:\"recipient_title\";s:3:\"x 4\";s:14:\"recipient_link\";s:19:\"/profile/1365141342\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-25 20:11:12'),
 (42,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327522434;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1365141343\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"e0dc5e61fe\";}}',100,1,0,'2012-01-25 20:13:54'),
 (43,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327522434;s:15:\"recipient_title\";s:3:\"a b\";s:14:\"recipient_link\";s:19:\"/profile/1365141343\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-25 20:13:54'),
 (44,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327523180;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1219894341\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"657cbc9e5d\";}}',100,1,0,'2012-01-25 20:26:21'),
 (45,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327523181;s:15:\"recipient_title\";s:7:\"111 333\";s:14:\"recipient_link\";s:19:\"/profile/1219894341\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-25 20:26:21'),
 (46,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327523269;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1544431424\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"0002dd1175\";}}',100,1,0,'2012-01-25 20:27:50'),
 (47,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327523270;s:15:\"recipient_title\";s:8:\"1111 111\";s:14:\"recipient_link\";s:19:\"/profile/1544431424\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-25 20:27:50'),
 (48,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327612964;s:15:\"recipient_title\";s:1:\"a\";s:14:\"recipient_link\";s:19:\"/profile/1842317708\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"038be30860\";}}',100,1,0,'2012-01-26 21:22:44'),
 (49,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327612964;s:15:\"recipient_title\";s:7:\"ccc ccc\";s:14:\"recipient_link\";s:19:\"/profile/1842317708\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-26 21:22:44'),
 (50,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327615261;s:15:\"recipient_title\";s:1:\"a\";s:14:\"recipient_link\";s:19:\"/profile/1663691495\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"c6ba4b2f53\";}}',100,1,0,'2012-01-26 22:01:06'),
 (51,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327615266;s:15:\"recipient_title\";s:1:\"a\";s:14:\"recipient_link\";s:19:\"/profile/1663691495\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-26 22:01:06'),
 (52,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327615444;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:18:\"/profile/403784950\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"fb689d719e\";}}',100,1,0,'2012-01-26 22:04:07'),
 (53,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327615447;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:18:\"/profile/403784950\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-26 22:04:07'),
 (54,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327617424;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:17:\"/profile/90665149\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"f313cfae2a\";}}',100,1,0,'2012-01-26 22:37:04'),
 (55,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327617424;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:17:\"/profile/90665149\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-26 22:37:04'),
 (56,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:15:\"odesk@op2vb.com\";s:4:\"date\";i:1327617497;s:15:\"recipient_title\";s:5:\"odesk\";s:14:\"recipient_link\";s:18:\"/profile/787906286\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"7692d173e3\";}}',100,1,0,'2012-01-26 22:38:17'),
 (57,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:15:\"odesk@op2vb.com\";s:4:\"date\";i:1327617497;s:15:\"recipient_title\";s:3:\"1 1\";s:14:\"recipient_link\";s:18:\"/profile/787906286\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-26 22:38:17'),
 (58,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327633067;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1617777672\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"7cb4f3c001\";}}',100,1,0,'2012-01-27 02:57:47'),
 (59,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327633067;s:15:\"recipient_title\";s:13:\"asdfasdf asdf\";s:14:\"recipient_link\";s:19:\"/profile/1617777672\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 02:57:47'),
 (60,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327633220;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:18:\"/profile/370267116\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"14e33bf5ff\";}}',100,1,0,'2012-01-27 03:00:20'),
 (61,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327633220;s:15:\"recipient_title\";s:13:\"00000000 asdf\";s:14:\"recipient_link\";s:18:\"/profile/370267116\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 03:00:20'),
 (62,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327633295;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1720049785\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"ca77f782da\";}}',100,1,0,'2012-01-27 03:01:35'),
 (63,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327633295;s:15:\"recipient_title\";s:8:\"adf asdf\";s:14:\"recipient_link\";s:19:\"/profile/1720049785\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 03:01:35'),
 (64,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327635394;s:15:\"recipient_title\";s:1:\"a\";s:14:\"recipient_link\";s:19:\"/profile/1897958929\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"e8b094c711\";}}',100,1,0,'2012-01-27 03:36:34'),
 (65,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327635394;s:15:\"recipient_title\";s:9:\"asdf asdf\";s:14:\"recipient_link\";s:19:\"/profile/1897958929\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 03:36:34'),
 (66,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327635474;s:15:\"recipient_title\";s:1:\"a\";s:14:\"recipient_link\";s:19:\"/profile/1454445489\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"563a0919bc\";}}',100,1,0,'2012-01-27 03:37:54'),
 (67,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:11:\"a@bbc.ca.bb\";s:4:\"date\";i:1327635474;s:15:\"recipient_title\";s:9:\"asdf asdf\";s:14:\"recipient_link\";s:19:\"/profile/1454445489\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 03:37:54'),
 (68,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327641527;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1378354621\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"be155c49c5\";}}',100,1,0,'2012-01-27 05:18:48'),
 (69,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327641528;s:15:\"recipient_title\";s:7:\"aa asdf\";s:14:\"recipient_link\";s:19:\"/profile/1378354621\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 05:18:48'),
 (70,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327642684;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:18:\"/profile/144946255\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"024b41b53e\";}}',100,1,0,'2012-01-27 05:38:04'),
 (71,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327642687;s:15:\"recipient_title\";s:5:\"ax ax\";s:14:\"recipient_link\";s:18:\"/profile/144946255\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 05:38:07'),
 (72,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327643034;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1826907472\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"cd36a2e8b2\";}}',100,1,0,'2012-01-27 05:43:54'),
 (73,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bb.com\";s:4:\"date\";i:1327643034;s:15:\"recipient_title\";s:7:\"x33 x55\";s:14:\"recipient_link\";s:19:\"/profile/1826907472\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 05:43:54'),
 (74,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327683675;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:18:\"/profile/806665847\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"64370646b6\";}}',100,1,0,'2012-01-27 17:01:15'),
 (75,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327683675;s:15:\"recipient_title\";s:9:\"asdf asdf\";s:14:\"recipient_link\";s:18:\"/profile/806665847\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 17:01:15'),
 (76,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327683896;s:15:\"recipient_title\";s:2:\"aa\";s:14:\"recipient_link\";s:19:\"/profile/1542221578\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"4f3eeb950c\";}}',100,1,0,'2012-01-27 17:04:56'),
 (77,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327683896;s:15:\"recipient_title\";s:15:\"abb ccc23423423\";s:14:\"recipient_link\";s:19:\"/profile/1542221578\";s:15:\"recipient_photo\";s:36:\"/public/user/14/0014_6e20.png?c=8994\";s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-27 17:04:56'),
 (78,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:4:\"date\";i:1327890893;s:15:\"recipient_title\";s:9:\"sasya8080\";s:14:\"recipient_link\";s:19:\"/profile/1884272687\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"222a7ab5e8\";}}',100,1,0,'2012-01-30 02:34:53'),
 (79,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:4:\"date\";i:1327890893;s:15:\"recipient_title\";s:17:\"asdfasdf asdfsadf\";s:14:\"recipient_link\";s:19:\"/profile/1884272687\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-30 02:34:53'),
 (80,'system','a:2:{s:4:\"type\";s:21:\"core_welcome_password\";s:6:\"params\";a:8:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:20:\"tomy.dd.83@gmail.com\";s:4:\"date\";i:1327892968;s:15:\"recipient_title\";s:10:\"tomy.dd.83\";s:14:\"recipient_link\";s:18:\"/profile/976972162\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";s:8:\"password\";s:10:\"e0c8274276\";}}',100,1,0,'2012-01-30 03:13:38'),
 (81,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:20:\"tomy.dd.83@gmail.com\";s:4:\"date\";i:1327896235;s:15:\"recipient_title\";s:3:\"a b\";s:14:\"recipient_link\";s:19:\"/profile/2036342406\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-30 04:03:55'),
 (82,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:4:\"date\";i:1327921655;s:15:\"recipient_title\";s:13:\"asdfasdf asdf\";s:14:\"recipient_link\";s:19:\"/profile/1519581937\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-30 11:07:35'),
 (83,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:9:\"aa@bc.com\";s:4:\"date\";i:1327948777;s:15:\"recipient_title\";s:3:\"123\";s:14:\"recipient_link\";s:19:\"/profile/1165849088\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-30 18:39:37'),
 (84,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:4:\"date\";i:1328044984;s:15:\"recipient_title\";s:4:\"aa b\";s:14:\"recipient_link\";s:18:\"/profile/644538342\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-31 21:23:04'),
 (85,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:4:\"date\";i:1328045081;s:15:\"recipient_title\";s:18:\"000999000 00999900\";s:14:\"recipient_link\";s:19:\"/profile/1173216455\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-31 21:24:41'),
 (86,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:4:\"date\";i:1328045305;s:15:\"recipient_title\";s:9:\"sasya8080\";s:14:\"recipient_link\";s:18:\"/profile/673259212\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-31 21:28:25'),
 (87,'system','a:2:{s:4:\"type\";s:12:\"core_welcome\";s:6:\"params\";a:7:{s:4:\"host\";s:9:\"saf.local\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:4:\"date\";i:1328047093;s:15:\"recipient_title\";s:3:\"b b\";s:14:\"recipient_link\";s:19:\"/profile/1680664888\";s:15:\"recipient_photo\";N;s:11:\"object_link\";s:6:\"/login\";}}',100,1,0,'2012-01-31 21:58:13');
/*!40000 ALTER TABLE `engine4_core_mail` ENABLE KEYS */;


--
-- Definition of table `engine4_core_mailrecipients`
--

DROP TABLE IF EXISTS `engine4_core_mailrecipients`;
CREATE TABLE `engine4_core_mailrecipients` (
  `recipient_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mail_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`recipient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_mailrecipients`
--

/*!40000 ALTER TABLE `engine4_core_mailrecipients` DISABLE KEYS */;
INSERT INTO `engine4_core_mailrecipients` (`recipient_id`,`mail_id`,`user_id`,`email`) VALUES 
 (25,25,6,NULL),
 (26,26,6,NULL),
 (27,27,6,NULL),
 (28,28,7,NULL),
 (29,29,7,NULL),
 (30,30,8,NULL),
 (31,31,8,NULL),
 (32,32,9,NULL),
 (33,33,9,NULL),
 (34,34,11,NULL),
 (35,35,11,NULL),
 (36,36,962724476,NULL),
 (37,37,962724476,NULL),
 (38,38,1365141341,NULL),
 (39,39,1365141341,NULL),
 (40,40,1365141342,NULL),
 (41,41,1365141342,NULL),
 (42,42,1365141343,NULL),
 (43,43,1365141343,NULL),
 (44,44,1219894341,NULL),
 (45,45,1219894341,NULL),
 (46,46,1544431424,NULL),
 (47,47,1544431424,NULL),
 (48,48,1842317708,NULL),
 (49,49,1842317708,NULL),
 (50,50,1663691495,NULL),
 (51,51,1663691495,NULL),
 (52,52,403784950,NULL),
 (53,53,403784950,NULL),
 (54,54,90665149,NULL),
 (55,55,90665149,NULL),
 (56,56,787906286,NULL),
 (57,57,787906286,NULL),
 (58,58,1617777672,NULL),
 (59,59,1617777672,NULL),
 (60,60,370267116,NULL),
 (61,61,370267116,NULL),
 (62,62,1720049785,NULL),
 (63,63,1720049785,NULL),
 (64,64,1897958929,NULL),
 (65,65,1897958929,NULL),
 (66,66,1454445489,NULL),
 (67,67,1454445489,NULL),
 (68,68,1378354621,NULL),
 (69,69,1378354621,NULL),
 (70,70,144946255,NULL),
 (71,71,144946255,NULL),
 (72,72,1826907472,NULL),
 (73,73,1826907472,NULL),
 (74,74,806665847,NULL),
 (75,75,806665847,NULL),
 (76,76,1542221578,NULL),
 (77,77,1542221578,NULL),
 (78,78,1884272687,NULL),
 (79,79,1884272687,NULL),
 (80,80,976972162,NULL),
 (81,81,2036342406,NULL),
 (82,82,1519581937,NULL),
 (83,83,1165849088,NULL),
 (84,84,644538342,NULL),
 (85,85,1173216455,NULL),
 (86,86,673259212,NULL),
 (87,87,1680664888,NULL);
/*!40000 ALTER TABLE `engine4_core_mailrecipients` ENABLE KEYS */;


--
-- Definition of table `engine4_core_mailtemplates`
--

DROP TABLE IF EXISTS `engine4_core_mailtemplates`;
CREATE TABLE `engine4_core_mailtemplates` (
  `mailtemplate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vars` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mailtemplate_id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_mailtemplates`
--

/*!40000 ALTER TABLE `engine4_core_mailtemplates` DISABLE KEYS */;
INSERT INTO `engine4_core_mailtemplates` (`mailtemplate_id`,`type`,`module`,`vars`) VALUES 
 (1,'header','core',''),
 (2,'footer','core',''),
 (3,'header_member','core',''),
 (4,'footer_member','core',''),
 (5,'core_contact','core','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_name],[sender_email],[sender_link],[sender_photo],[message]'),
 (6,'core_verification','core','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
 (7,'core_verification_password','core','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link],[password]'),
 (8,'core_welcome','core','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
 (9,'core_welcome_password','core','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link],[password]'),
 (10,'core_lostpassword','core','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
 (11,'notify_commented','activity','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (12,'notify_commented_commented','activity','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (13,'notify_liked','activity','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (14,'notify_liked_commented','activity','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (15,'user_account_approved','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo]'),
 (16,'notify_friend_accepted','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (17,'notify_friend_request','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (18,'notify_friend_follow_request','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (19,'notify_friend_follow_accepted','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (20,'notify_friend_follow','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (21,'notify_post_user','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (22,'notify_tagged','user','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (23,'notify_message_new','messages','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (24,'invite','invite','[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[message],[object_link],[code]'),
 (25,'invite_code','invite','[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[message],[object_link],[code]'),
 (26,'payment_subscription_active','payment','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
 (27,'payment_subscription_cancelled','payment','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
 (28,'payment_subscription_expired','payment','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
 (29,'payment_subscription_overdue','payment','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
 (30,'payment_subscription_pending','payment','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
 (31,'payment_subscription_recurrence','payment','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
 (32,'payment_subscription_refunded','payment','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
 (33,'notify_event_accepted','event','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (34,'notify_event_approve','event','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (35,'notify_event_discussion_response','event','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (36,'notify_event_discussion_reply','event','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (37,'notify_event_invite','event','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (38,'notify_group_accepted','group','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (39,'notify_group_approve','group','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (40,'notify_group_discussion_reply','group','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (41,'notify_group_discussion_response','group','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (42,'notify_group_invite','group','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (43,'notify_group_promote','group','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (44,'notify_advgroup_accepted','advgroup','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (45,'notify_advgroup_approve','advgroup','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (46,'notify_advgroup_discussion_reply','advgroup','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (47,'notify_advgroup_discussion_response','advgroup','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (48,'notify_advgroup_invite','advgroup','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (49,'notify_advgroup_promote','advgroup','[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
 (50,'notify_advgroup_invite_nonmembers','advgroup','[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[object_link],[code],[group_link],[group_title],[message]');
/*!40000 ALTER TABLE `engine4_core_mailtemplates` ENABLE KEYS */;


--
-- Definition of table `engine4_core_menuitems`
--

DROP TABLE IF EXISTS `engine4_core_menuitems`;
CREATE TABLE `engine4_core_menuitems` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `module` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `submenu` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `custom` tinyint(1) NOT NULL DEFAULT '0',
  `order` smallint(6) NOT NULL DEFAULT '999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `LOOKUP` (`name`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_menuitems`
--

/*!40000 ALTER TABLE `engine4_core_menuitems` DISABLE KEYS */;
INSERT INTO `engine4_core_menuitems` (`id`,`name`,`module`,`label`,`plugin`,`params`,`menu`,`submenu`,`enabled`,`custom`,`order`) VALUES 
 (1,'core_main_home','core','Home','User_Plugin_Menus','','core_main','',1,0,1),
 (2,'core_sitemap_home','core','Home','','{\"route\":\"default\"}','core_sitemap','',1,0,1),
 (3,'core_footer_privacy','core','Privacy','','{\"route\":\"default\",\"module\":\"core\",\"controller\":\"help\",\"action\":\"privacy\"}','core_footer','',1,0,1),
 (4,'core_footer_terms','core','Terms of Service','','{\"route\":\"default\",\"module\":\"core\",\"controller\":\"help\",\"action\":\"terms\"}','core_footer','',1,0,2),
 (5,'core_footer_contact','core','Contact','','{\"route\":\"default\",\"module\":\"core\",\"controller\":\"help\",\"action\":\"contact\"}','core_footer','',1,0,3),
 (6,'core_mini_admin','core','Admin','User_Plugin_Menus','','core_mini','',1,0,6),
 (7,'core_mini_profile','user','My Profile','User_Plugin_Menus','','core_mini','',1,0,5),
 (8,'core_mini_settings','user','Settings','User_Plugin_Menus','','core_mini','',1,0,3),
 (9,'core_mini_auth','user','Auth','User_Plugin_Menus','','core_mini','',1,0,2),
 (10,'core_mini_signup','user','Signup','User_Plugin_Menus','','core_mini','',1,0,1),
 (11,'core_admin_main_home','core','Home','','{\"route\":\"admin_default\"}','core_admin_main','',1,0,1),
 (12,'core_admin_main_manage','core','Manage','','{\"uri\":\"javascript:void(0);this.blur();\"}','core_admin_main','core_admin_main_manage',1,0,2),
 (13,'core_admin_main_settings','core','Settings','','{\"uri\":\"javascript:void(0);this.blur();\"}','core_admin_main','core_admin_main_settings',1,0,3),
 (14,'core_admin_main_plugins','core','Plugins','','{\"uri\":\"javascript:void(0);this.blur();\"}','core_admin_main','core_admin_main_plugins',1,0,4),
 (15,'core_admin_main_layout','core','Layout','','{\"uri\":\"javascript:void(0);this.blur();\"}','core_admin_main','core_admin_main_layout',1,0,5),
 (16,'core_admin_main_ads','core','Ads','','{\"uri\":\"javascript:void(0);this.blur();\"}','core_admin_main','core_admin_main_ads',1,0,6),
 (17,'core_admin_main_stats','core','Stats','','{\"uri\":\"javascript:void(0);this.blur();\"}','core_admin_main','core_admin_main_stats',1,0,8),
 (18,'core_admin_main_manage_levels','core','Member Levels','','{\"route\":\"admin_default\",\"module\":\"authorization\",\"controller\":\"level\"}','core_admin_main_manage','',1,0,2),
 (19,'core_admin_main_manage_networks','network','Networks','','{\"route\":\"admin_default\",\"module\":\"network\",\"controller\":\"manage\"}','core_admin_main_manage','',1,0,3),
 (20,'core_admin_main_manage_announcements','announcement','Announcements','','{\"route\":\"admin_default\",\"module\":\"announcement\",\"controller\":\"manage\"}','core_admin_main_manage','',1,0,4),
 (21,'core_admin_message_mail','core','Email All Members','','{\"route\":\"admin_default\",\"module\":\"core\",\"controller\":\"message\",\"action\":\"mail\"}','core_admin_main_manage','',1,0,5),
 (22,'core_admin_main_manage_reports','core','Abuse Reports','','{\"route\":\"admin_default\",\"module\":\"core\",\"controller\":\"report\"}','core_admin_main_manage','',1,0,6),
 (23,'core_admin_main_manage_packages','core','Packages & Plugins','','{\"route\":\"admin_default\",\"module\":\"core\",\"controller\":\"packages\"}','core_admin_main_manage','',1,0,7),
 (24,'core_admin_main_settings_general','core','General Settings','','{\"route\":\"core_admin_settings\",\"action\":\"general\"}','core_admin_main_settings','',1,0,1),
 (25,'core_admin_main_settings_locale','core','Locale Settings','','{\"route\":\"core_admin_settings\",\"action\":\"locale\"}','core_admin_main_settings','',1,0,1),
 (26,'core_admin_main_settings_fields','fields','Profile Questions','','{\"route\":\"admin_default\",\"module\":\"user\",\"controller\":\"fields\"}','core_admin_main_settings','',1,0,2),
 (27,'core_admin_main_settings_spam','core','Spam & Banning Tools','','{\"route\":\"core_admin_settings\",\"action\":\"spam\"}','core_admin_main_settings','',1,0,5),
 (28,'core_admin_main_settings_mailtemplates','core','Mail Templates','','{\"route\":\"admin_default\",\"controller\":\"mail\",\"action\":\"templates\"}','core_admin_main_settings','',1,0,6),
 (29,'core_admin_main_settings_mailsettings','core','Mail Settings','','{\"route\":\"admin_default\",\"controller\":\"mail\",\"action\":\"settings\"}','core_admin_main_settings','',1,0,7),
 (30,'core_admin_main_settings_performance','core','Performance & Caching','','{\"route\":\"core_admin_settings\",\"action\":\"performance\"}','core_admin_main_settings','',1,0,8),
 (31,'core_admin_main_settings_password','core','Admin Password','','{\"route\":\"core_admin_settings\",\"action\":\"password\"}','core_admin_main_settings','',1,0,9),
 (32,'core_admin_main_settings_tasks','core','Task Scheduler','','{\"route\":\"admin_default\",\"controller\":\"tasks\"}','core_admin_main_settings','',1,0,10),
 (33,'core_admin_main_layout_content','core','Layout Editor','','{\"route\":\"admin_default\",\"controller\":\"content\"}','core_admin_main_layout','',1,0,1),
 (34,'core_admin_main_layout_themes','core','Theme Editor','','{\"route\":\"admin_default\",\"controller\":\"themes\"}','core_admin_main_layout','',1,0,2),
 (35,'core_admin_main_layout_files','core','File & Media Manager','','{\"route\":\"admin_default\",\"controller\":\"files\"}','core_admin_main_layout','',1,0,3),
 (36,'core_admin_main_layout_language','core','Language Manager','','{\"route\":\"admin_default\",\"controller\":\"language\"}','core_admin_main_layout','',1,0,4),
 (37,'core_admin_main_layout_menus','core','Menu Editor','','{\"route\":\"admin_default\",\"controller\":\"menus\"}','core_admin_main_layout','',1,0,5),
 (38,'core_admin_main_ads_manage','core','Manage Ad Campaigns','','{\"route\":\"admin_default\",\"controller\":\"ads\"}','core_admin_main_ads','',1,0,1),
 (39,'core_admin_main_ads_create','core','Create New Campaign','','{\"route\":\"admin_default\",\"controller\":\"ads\",\"action\":\"create\"}','core_admin_main_ads','',1,0,2),
 (40,'core_admin_main_ads_affiliate','core','SE Affiliate Program','','{\"route\":\"admin_default\",\"controller\":\"settings\",\"action\":\"affiliate\"}','core_admin_main_ads','',1,0,3),
 (41,'core_admin_main_ads_viglink','core','VigLink','','{\"route\":\"admin_default\",\"controller\":\"settings\",\"action\":\"viglink\"}','core_admin_main_ads','',1,0,4),
 (42,'core_admin_main_stats_statistics','core','Site-wide Statistics','','{\"route\":\"admin_default\",\"controller\":\"stats\"}','core_admin_main_stats','',1,0,1),
 (43,'core_admin_main_stats_url','core','Referring URLs','','{\"route\":\"admin_default\",\"controller\":\"stats\",\"action\":\"referrers\"}','core_admin_main_stats','',1,0,2),
 (44,'core_admin_main_stats_resources','core','Server Information','','{\"route\":\"admin_default\",\"controller\":\"system\"}','core_admin_main_stats','',1,0,3),
 (45,'core_admin_main_stats_logs','core','Log Browser','','{\"route\":\"admin_default\",\"controller\":\"log\",\"action\":\"index\"}','core_admin_main_stats','',1,0,3),
 (46,'core_admin_banning_general','core','Spam & Banning Tools','','{\"route\":\"core_admin_settings\",\"action\":\"spam\"}','core_admin_banning','',1,0,1),
 (47,'adcampaign_admin_main_edit','core','Edit Settings','','{\"route\":\"admin_default\",\"module\":\"core\",\"controller\":\"ads\",\"action\":\"edit\"}','adcampaign_admin_main','',1,0,1),
 (48,'adcampaign_admin_main_manageads','core','Manage Advertisements','','{\"route\":\"admin_default\",\"module\":\"core\",\"controller\":\"ads\",\"action\":\"manageads\"}','adcampaign_admin_main','',1,0,2),
 (49,'core_admin_main_settings_activity','activity','Activity Feed Settings','','{\"route\":\"admin_default\",\"module\":\"activity\",\"controller\":\"settings\",\"action\":\"index\"}','core_admin_main_settings','',1,0,4),
 (50,'core_admin_main_settings_notifications','activity','Default Email Notifications','','{\"route\":\"admin_default\",\"module\":\"activity\",\"controller\":\"settings\",\"action\":\"notifications\"}','core_admin_main_settings','',1,0,11),
 (51,'authorization_admin_main_manage','authorization','View Member Levels','','{\"route\":\"admin_default\",\"module\":\"authorization\",\"controller\":\"level\"}','authorization_admin_main','',1,0,1),
 (52,'authorization_admin_main_level','authorization','Member Level Settings','','{\"route\":\"admin_default\",\"module\":\"authorization\",\"controller\":\"level\",\"action\":\"edit\"}','authorization_admin_main','',1,0,3),
 (53,'authorization_admin_level_main','authorization','Level Info','','{\"route\":\"admin_default\",\"module\":\"authorization\",\"controller\":\"level\",\"action\":\"edit\"}','authorization_admin_level','',1,0,1),
 (54,'core_main_user','user','Members','','{\"route\":\"user_general\",\"action\":\"browse\"}','core_main','',1,0,2),
 (55,'core_sitemap_user','user','Members','','{\"route\":\"user_general\",\"action\":\"browse\"}','core_sitemap','',1,0,2),
 (56,'user_home_updates','user','View Recent Updates','','{\"route\":\"recent_activity\",\"icon\":\"application/modules/User/externals/images/links/updates.png\"}','user_home','',1,0,1),
 (57,'user_home_view','user','View My Profile','User_Plugin_Menus','{\"route\":\"user_profile_self\",\"icon\":\"application/modules/User/externals/images/links/profile.png\"}','user_home','',1,0,2),
 (58,'user_home_edit','user','Edit My Profile','User_Plugin_Menus','{\"route\":\"user_extended\",\"module\":\"user\",\"controller\":\"edit\",\"action\":\"profile\",\"icon\":\"application/modules/User/externals/images/links/edit.png\"}','user_home','',1,0,3),
 (59,'user_home_friends','user','Browse Members','','{\"route\":\"user_general\",\"controller\":\"index\",\"action\":\"browse\",\"icon\":\"application/modules/User/externals/images/links/search.png\"}','user_home','',1,0,4),
 (60,'user_profile_edit','user','Edit Profile','User_Plugin_Menus','','user_profile','',1,0,1),
 (61,'user_profile_friend','user','Friends','User_Plugin_Menus','','user_profile','',1,0,3),
 (62,'user_profile_block','user','Block','User_Plugin_Menus','','user_profile','',1,0,4),
 (63,'user_profile_report','user','Report User','User_Plugin_Menus','','user_profile','',1,0,5),
 (64,'user_edit_profile','user','Personal Info','','{\"route\":\"user_extended\",\"module\":\"user\",\"controller\":\"edit\",\"action\":\"profile\"}','user_edit','',1,0,1),
 (65,'user_edit_photo','user','Edit My Photo','','{\"route\":\"user_extended\",\"module\":\"user\",\"controller\":\"edit\",\"action\":\"photo\"}','user_edit','',1,0,2),
 (66,'user_edit_style','user','Profile Style','','{\"route\":\"user_extended\",\"module\":\"user\",\"controller\":\"edit\",\"action\":\"style\"}','user_edit','',1,0,3),
 (67,'user_settings_general','user','General','','{\"route\":\"user_extended\",\"module\":\"user\",\"controller\":\"settings\",\"action\":\"general\"}','user_settings','',1,0,1),
 (68,'user_settings_privacy','user','Privacy','','{\"route\":\"user_extended\",\"module\":\"user\",\"controller\":\"settings\",\"action\":\"privacy\"}','user_settings','',1,0,2),
 (69,'user_settings_notifications','user','Notifications','','{\"route\":\"user_extended\",\"module\":\"user\",\"controller\":\"settings\",\"action\":\"notifications\"}','user_settings','',1,0,3),
 (70,'user_settings_password','user','Change Password','','{\"route\":\"user_extended\", \"module\":\"user\", \"controller\":\"settings\", \"action\":\"password\"}','user_settings','',1,0,5),
 (71,'user_settings_delete','user','Delete Account','User_Plugin_Menus::canDelete','{\"route\":\"user_extended\", \"module\":\"user\", \"controller\":\"settings\", \"action\":\"delete\"}','user_settings','',1,0,6),
 (72,'core_admin_main_manage_members','user','Members','','{\"route\":\"admin_default\",\"module\":\"user\",\"controller\":\"manage\"}','core_admin_main_manage','',1,0,1),
 (73,'core_admin_main_signup','user','Signup Process','','{\"route\":\"admin_default\", \"controller\":\"signup\", \"module\":\"user\"}','core_admin_main_settings','',1,0,3),
 (74,'core_admin_main_facebook','user','Facebook Integration','','{\"route\":\"admin_default\", \"action\":\"facebook\", \"controller\":\"settings\", \"module\":\"user\"}','core_admin_main_settings','',1,0,4),
 (75,'core_admin_main_twitter','user','Twitter Integration','','{\"route\":\"admin_default\", \"action\":\"twitter\", \"controller\":\"settings\", \"module\":\"user\"}','core_admin_main_settings','',1,0,4),
 (76,'core_admin_main_settings_friends','user','Friendship Settings','','{\"route\":\"admin_default\",\"module\":\"user\",\"controller\":\"settings\",\"action\":\"friends\"}','core_admin_main_settings','',1,0,6),
 (77,'user_admin_banning_logins','user','Login History','','{\"route\":\"admin_default\",\"module\":\"user\",\"controller\":\"logins\",\"action\":\"index\"}','core_admin_banning','',1,0,2),
 (78,'authorization_admin_level_user','user','Members','','{\"route\":\"admin_default\",\"module\":\"user\",\"controller\":\"settings\",\"action\":\"level\"}','authorization_admin_level','',1,0,2),
 (79,'core_mini_messages','messages','Messages','Messages_Plugin_Menus','','core_mini','',1,0,4),
 (80,'user_profile_message','messages','Send Message','Messages_Plugin_Menus','','user_profile','',1,0,2),
 (81,'authorization_admin_level_messages','messages','Messages','','{\"route\":\"admin_default\",\"module\":\"messages\",\"controller\":\"settings\",\"action\":\"level\"}','authorization_admin_level','',1,0,3),
 (82,'messages_main_inbox','messages','Inbox','','{\"route\":\"messages_general\",\"action\":\"inbox\"}','messages_main','',1,0,1),
 (83,'messages_main_outbox','messages','Sent Messages','','{\"route\":\"messages_general\",\"action\":\"outbox\"}','messages_main','',1,0,2),
 (84,'messages_main_compose','messages','Compose Message','','{\"route\":\"messages_general\",\"action\":\"compose\"}','messages_main','',1,0,3),
 (85,'user_settings_network','network','Networks','','{\"route\":\"user_extended\", \"module\":\"user\", \"controller\":\"settings\", \"action\":\"network\"}','user_settings','',1,0,3),
 (86,'core_main_invite','invite','Invite','Invite_Plugin_Menus::canInvite','{\"route\":\"default\",\"module\":\"invite\"}','core_main','',1,0,1),
 (87,'user_home_invite','invite','Invite Your Friends','Invite_Plugin_Menus::canInvite','{\"route\":\"default\",\"module\":\"invite\",\"icon\":\"application/modules/Invite/externals/images/invite.png\"}','user_home','',1,0,5),
 (88,'core_admin_main_settings_storage','core','Storage System','','{\"route\":\"admin_default\",\"module\":\"storage\",\"controller\":\"services\",\"action\":\"index\"}','core_admin_main_settings','',1,0,11),
 (89,'user_settings_payment','user','Subscription','Payment_Plugin_Menus','{\"route\":\"default\", \"module\":\"payment\", \"controller\":\"settings\", \"action\":\"index\"}','user_settings','',1,0,4),
 (90,'core_admin_main_payment','payment','Billing','','{\"uri\":\"javascript:void(0);this.blur();\"}','core_admin_main','core_admin_main_payment',1,0,7),
 (91,'core_admin_main_payment_transactions','payment','Transactions','','{\"route\":\"admin_default\",\"module\":\"payment\",\"controller\":\"index\",\"action\":\"index\"}','core_admin_main_payment','',1,0,1),
 (92,'core_admin_main_payment_settings','payment','Settings','','{\"route\":\"admin_default\",\"module\":\"payment\",\"controller\":\"settings\",\"action\":\"index\"}','core_admin_main_payment','',1,0,2),
 (93,'core_admin_main_payment_gateways','payment','Gateways','','{\"route\":\"admin_default\",\"module\":\"payment\",\"controller\":\"gateway\",\"action\":\"index\"}','core_admin_main_payment','',1,0,3),
 (94,'core_admin_main_payment_packages','payment','Plans','','{\"route\":\"admin_default\",\"module\":\"payment\",\"controller\":\"package\",\"action\":\"index\"}','core_admin_main_payment','',1,0,4),
 (95,'core_admin_main_payment_subscriptions','payment','Subscriptions','','{\"route\":\"admin_default\",\"module\":\"payment\",\"controller\":\"subscription\",\"action\":\"index\"}','core_admin_main_payment','',1,0,5),
 (96,'core_admin_plugins_younet_core','younet-core','YouNet Core','','{\"route\":\"admin_default\",\"module\":\"younet-core\",\"controller\":\"settings\",\"action\":\"yours\"}','core_admin_main_plugins','',1,0,1),
 (97,'younet_core_admin_main_yours','younet-core','Your Plugins','','{\"route\":\"admin_default\",\"module\":\"younet-core\",\"controller\":\"settings\",\"action\":\"yours\"}','younet_core_admin_main','',1,0,2),
 (98,'younet_core_admin_main_younet','younet-core','YouNet Plugins','','{\"route\":\"admin_default\",\"module\":\"younet-core\",\"controller\":\"settings\",\"action\":\"younet\"}','younet_core_admin_main','',1,0,1),
 (99,'younet_core_admin_main_info','younet-core','License Term','','{\"route\":\"admin_default\",\"module\":\"younet-core\",\"controller\":\"settings\",\"action\":\"information\"}','younet_core_admin_main','',1,0,3),
 (100,'core_footer_mobile','mobi','Mobile Site','Mobi_Plugin_Menus','','core_footer','',1,0,4),
 (101,'mobi_footer_mobile','mobi','Mobile Site','Mobi_Plugin_Menus','','mobi_footer','',1,0,1),
 (102,'mobi_footer_auth','mobi','Auth','Mobi_Plugin_Menus','','mobi_footer','',1,0,2),
 (103,'mobi_footer_signup','mobi','Sign Up','Mobi_Plugin_Menus','','mobi_footer','',1,0,3),
 (104,'mobi_main_home','mobi','Home','Mobi_Plugin_Menus','','mobi_main','',1,0,1),
 (105,'mobi_main_profile','mobi','Profile','Mobi_Plugin_Menus','','mobi_main','',1,0,2),
 (106,'mobi_main_messages','mobi','Inbox','Mobi_Plugin_Menus','','mobi_main','',1,0,3),
 (107,'mobi_main_browse','mobi','Browse','Mobi_Plugin_Menus','','mobi_main','',1,0,4),
 (108,'mobi_profile_message','mobi','Send Message','Mobi_Plugin_Menus','','mobi_profile','',1,0,1),
 (109,'mobi_profile_friend','mobi','Friends','Mobi_Plugin_Menus','','mobi_profile','',1,0,2),
 (110,'mobi_browse_members','user','Members','','{\"route\":\"user_general\",\"action\":\"browse\"}','mobi_browse','',1,0,1),
 (111,'core_main_event','event','Events','','{\"route\":\"event_general\"}','core_main','',1,0,6),
 (112,'core_sitemap_event','event','Events','','{\"route\":\"event_general\"}','core_sitemap','',1,0,6),
 (113,'event_main_upcoming','event','Upcoming Events','','{\"route\":\"event_upcoming\"}','event_main','',1,0,1),
 (114,'event_main_past','event','Past Events','','{\"route\":\"event_past\"}','event_main','',1,0,2),
 (115,'event_main_manage','event','My Events','Event_Plugin_Menus','{\"route\":\"event_general\",\"action\":\"manage\"}','event_main','',1,0,3),
 (116,'event_main_create','event','Create New Event','Event_Plugin_Menus','{\"route\":\"event_general\",\"action\":\"create\"}','event_main','',1,0,4),
 (117,'event_quick_create','event','Create New Event','Event_Plugin_Menus::canCreateEvents','{\"route\":\"event_general\",\"action\":\"create\",\"class\":\"buttonlink icon_event_new\"}','event_quick','',1,0,1),
 (118,'event_profile_edit','event','Edit Profile','Event_Plugin_Menus','','event_profile','',1,0,1),
 (119,'event_profile_style','event','Edit Styles','Event_Plugin_Menus','','event_profile','',1,0,2),
 (120,'event_profile_member','event','Member','Event_Plugin_Menus','','event_profile','',1,0,3),
 (121,'event_profile_report','event','Report Event','Event_Plugin_Menus','','event_profile','',1,0,4),
 (122,'event_profile_share','event','Share','Event_Plugin_Menus','','event_profile','',1,0,5),
 (123,'event_profile_invite','event','Invite','Event_Plugin_Menus','','event_profile','',1,0,6),
 (124,'event_profile_message','event','Message Members','Event_Plugin_Menus','','event_profile','',1,0,7),
 (125,'event_profile_delete','event','Delete Event','Event_Plugin_Menus','','event_profile','',1,0,8),
 (126,'core_admin_main_plugins_event','event','Events','','{\"route\":\"admin_default\",\"module\":\"event\",\"controller\":\"manage\"}','core_admin_main_plugins','',1,0,999),
 (127,'event_admin_main_manage','event','Manage Events','','{\"route\":\"admin_default\",\"module\":\"event\",\"controller\":\"manage\"}','event_admin_main','',1,0,1),
 (128,'event_admin_main_level','event','Member Level Settings','','{\"route\":\"admin_default\",\"module\":\"event\",\"controller\":\"settings\",\"action\":\"level\"}','event_admin_main','',1,0,2),
 (129,'event_admin_main_categories','event','Categories','','{\"route\":\"admin_default\",\"module\":\"event\",\"controller\":\"settings\",\"action\":\"categories\"}','event_admin_main','',1,0,3),
 (130,'authorization_admin_level_event','event','Events','','{\"route\":\"admin_default\",\"module\":\"event\",\"controller\":\"level\",\"action\":\"index\"}','authorization_admin_level','',1,0,999),
 (131,'mobi_browse_event','event','Events','','{\"route\":\"event_general\"}','mobi_browse','',1,0,7),
 (132,'core_main_group','group','Groups','','{\"route\":\"group_general\"}','core_main','',1,0,6),
 (133,'core_sitemap_group','group','Groups','','{\"route\":\"group_general\"}','core_sitemap','',1,0,6),
 (134,'group_main_browse','group','Browse Groups','','{\"route\":\"group_general\",\"action\":\"browse\"}','group_main','',1,0,1),
 (135,'group_main_manage','group','My Groups','Group_Plugin_Menus','{\"route\":\"group_general\",\"action\":\"manage\"}','group_main','',1,0,2),
 (136,'group_main_create','group','Create New Group','Group_Plugin_Menus','{\"route\":\"group_general\",\"action\":\"create\"}','group_main','',1,0,3),
 (137,'group_quick_create','group','Create New Group','Group_Plugin_Menus::canCreateGroups','{\"route\":\"group_general\",\"action\":\"create\",\"class\":\"buttonlink icon_group_new\"}','group_quick','',1,0,1),
 (138,'group_profile_edit','group','Edit Profile','Group_Plugin_Menus','','group_profile','',1,0,1),
 (139,'group_profile_style','group','Edit Styles','Group_Plugin_Menus','','group_profile','',1,0,2),
 (140,'group_profile_member','group','Member','Group_Plugin_Menus','','group_profile','',1,0,3),
 (141,'group_profile_report','group','Report Group','Group_Plugin_Menus','','group_profile','',1,0,4),
 (142,'group_profile_share','group','Share','Group_Plugin_Menus','','group_profile','',1,0,5),
 (143,'group_profile_invite','group','Invite','Group_Plugin_Menus','','group_profile','',1,0,6),
 (144,'group_profile_message','group','Message Members','Group_Plugin_Menus','','group_profile','',1,0,7),
 (145,'core_admin_main_plugins_group','group','Groups','','{\"route\":\"admin_default\",\"module\":\"group\",\"controller\":\"manage\"}','core_admin_main_plugins','',1,0,999),
 (146,'group_admin_main_manage','group','Manage Groups','','{\"route\":\"admin_default\",\"module\":\"group\",\"controller\":\"manage\"}','group_admin_main','',1,0,1),
 (147,'group_admin_main_level','group','Member Level Settings','','{\"route\":\"admin_default\",\"module\":\"group\",\"controller\":\"settings\",\"action\":\"level\"}','group_admin_main','',1,0,2),
 (148,'group_admin_main_categories','group','Categories','','{\"route\":\"admin_default\",\"module\":\"group\",\"controller\":\"settings\",\"action\":\"categories\"}','group_admin_main','',1,0,3),
 (149,'authorization_admin_level_group','group','Groups','','{\"route\":\"admin_default\",\"module\":\"group\",\"controller\":\"settings\",\"action\":\"level\"}','authorization_admin_level','',1,0,999),
 (150,'mobi_browse_group','group','Groups','','{\"route\":\"group_general\"}','mobi_browse','',1,0,8),
 (151,'core_main_advgroup','advgroup','Groups','','{\"route\":\"group_general\"}','core_main','',1,0,6),
 (152,'core_sitemap_advgroup','advgroup','Groups','','{\"route\":\"group_general\"}','core_sitemap','',1,0,6),
 (153,'advgroup_main_browse','advgroup','Browse Groups','','{\"route\":\"group_general\",\"action\":\"browse\"}','advgroup_main','',1,0,1),
 (154,'advgroup_main_manage','advgroup','My Groups','Advgroup_Plugin_Menus','{\"route\":\"group_general\",\"action\":\"manage\"}','advgroup_main','',1,0,2),
 (155,'advgroup_main_create','advgroup','Create New Group','Advgroup_Plugin_Menus','{\"route\":\"group_general\",\"action\":\"create\"}','advgroup_main','',1,0,3),
 (156,'advgroup_quick_create','advgroup','Create New Group','Advgroup_Plugin_Menus::canCreateGroups','{\"route\":\"group_general\",\"action\":\"create\",\"class\":\"buttonlink icon_group_new\"}','advgroup_quick','',1,0,1),
 (157,'advgroup_manage_announcement','advgroup','Announcement','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,1),
 (158,'advgroup_profile_edit','advgroup','Edit Profile','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,1),
 (159,'advgroup_profile_style','advgroup','Edit Styles','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,2),
 (160,'advgroup_profile_member','advgroup','Member','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,3),
 (161,'advgroup_profile_report','advgroup','Report Group','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,4),
 (162,'advgroup_profile_share','advgroup','Share','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,5),
 (163,'advgroup_profile_message','advgroup','Message Members','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,6),
 (164,'advgroup_profile_invite','advgroup','Invite','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,7),
 (165,'advgroup_profile_invitenew','advgroup','Invite New Guests','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,8),
 (166,'advgroup_profile_invite_contact_import','advgroup','Invite Using Contact Importer','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,9),
 (167,'advgroup_profile_album','advgroup','Group Photo Albums','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,10),
 (168,'advgroup_profile_discussion','advgroup','Group Discussions','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,11),
 (169,'advgroup_profile_event','advgroup','Group Events','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,12),
 (170,'advgroup_profile_poll','advgroup','Group Polls','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,13),
 (171,'advgroup_profile_useful_link','advgroup','Group Useful Links','Advgroup_Plugin_Menus','','advgroup_profile','',1,0,14),
 (172,'core_admin_main_plugins_advgroup','advgroup','Advanced Groups','','{\"route\":\"admin_default\",\"module\":\"advgroup\",\"controller\":\"manage\"}','core_admin_main_plugins','',1,0,999),
 (173,'advgroup_admin_main_manage','advgroup','Manage Groups','','{\"route\":\"admin_default\",\"module\":\"advgroup\",\"controller\":\"manage\"}','advgroup_admin_main','',1,0,1),
 (174,'advgroup_admin_main_global','advgroup','Global Settings','','{\"route\":\"admin_default\",\"module\":\"advgroup\",\"controller\":\"global\"}','advgroup_admin_main','',1,0,2),
 (175,'advgroup_admin_main_level','advgroup','Member Level Settings','','{\"route\":\"admin_default\",\"module\":\"advgroup\",\"controller\":\"settings\",\"action\":\"level\"}','advgroup_admin_main','',1,0,3),
 (176,'advgroup_admin_main_categories','advgroup','Categories','','{\"route\":\"admin_default\",\"module\":\"advgroup\",\"controller\":\"settings\",\"action\":\"categories\"}','advgroup_admin_main','',1,0,4),
 (177,'advgroup_admin_main_fields','advgroup','Profile Fields','','{\"route\":\"admin_default\",\"module\":\"advgroup\",\"controller\":\"fields\"}','advgroup_admin_main','',1,0,5),
 (178,'authorization_admin_level_advgroup','advgroup','Advanced Groups','','{\"route\":\"admin_default\",\"module\":\"advgroup\",\"controller\":\"settings\",\"action\":\"level\"}','authorization_admin_level','',1,0,999),
 (179,'mobi_browse_advgroup','advgroup','Advanced Groups','','{\"route\":\"group_general\"}','mobi_browse','',1,0,8),
 (180,'core_admin_main_wibiya','core','Wibiya Integration','','{\"route\":\"admin_default\", \"action\":\"wibiya\", \"controller\":\"settings\", \"module\":\"core\"}','core_admin_main_settings','',1,0,4),
 (181,'user_profile_admin','user','Admin Settings','User_Plugin_Menus','','user_profile','',1,0,9),
 (182,'core_admin_main_janrain','user','Janrain Integration','','{\"route\":\"admin_default\", \"action\":\"janrain\", \"controller\":\"settings\", \"module\":\"user\"}','core_admin_main_settings','',1,0,4);
/*!40000 ALTER TABLE `engine4_core_menuitems` ENABLE KEYS */;


--
-- Definition of table `engine4_core_menus`
--

DROP TABLE IF EXISTS `engine4_core_menus`;
CREATE TABLE `engine4_core_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `type` enum('standard','hidden','custom') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'standard',
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(3) NOT NULL DEFAULT '999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `order` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_menus`
--

/*!40000 ALTER TABLE `engine4_core_menus` DISABLE KEYS */;
INSERT INTO `engine4_core_menus` (`id`,`name`,`type`,`title`,`order`) VALUES 
 (1,'core_main','standard','Main Navigation Menu',1),
 (2,'core_mini','standard','Mini Navigation Menu',2),
 (3,'core_footer','standard','Footer Menu',3),
 (4,'core_sitemap','standard','Sitemap',4),
 (5,'user_home','standard','Member Home Quick Links Menu',999),
 (6,'user_profile','standard','Member Profile Options Menu',999),
 (7,'user_edit','standard','Member Edit Profile Navigation Menu',999),
 (8,'user_settings','standard','Member Settings Navigation Menu',999),
 (9,'messages_main','standard','Messages Main Navigation Menu',999),
 (10,'mobi_footer','standard','Mobile Footer Menu',999),
 (11,'mobi_main','standard','Mobile Main Menu',999),
 (12,'mobi_profile','standard','Mobile Profile Options Menu',999),
 (13,'mobi_browse','standard','Mobile Browse Page Menu',999),
 (14,'event_main','standard','Event Main Navigation Menu',999),
 (15,'event_profile','standard','Event Profile Options Menu',999),
 (16,'group_main','standard','Group Main Navigation Menu',999),
 (17,'group_profile','standard','Group Profile Options Menu',999),
 (18,'advgroup_main','standard','Advanced Group Main Navigation Menu',999),
 (19,'advgroup_profile','standard','Advanced Group Profile Options Menu',999);
/*!40000 ALTER TABLE `engine4_core_menus` ENABLE KEYS */;


--
-- Definition of table `engine4_core_migrations`
--

DROP TABLE IF EXISTS `engine4_core_migrations`;
CREATE TABLE `engine4_core_migrations` (
  `package` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `current` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_migrations`
--

/*!40000 ALTER TABLE `engine4_core_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_migrations` ENABLE KEYS */;


--
-- Definition of table `engine4_core_modules`
--

DROP TABLE IF EXISTS `engine4_core_modules`;
CREATE TABLE `engine4_core_modules` (
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `version` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('core','standard','extra') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'extra',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_modules`
--

/*!40000 ALTER TABLE `engine4_core_modules` DISABLE KEYS */;
INSERT INTO `engine4_core_modules` (`name`,`title`,`description`,`version`,`enabled`,`type`) VALUES 
 ('activity','Activity','Activity','4.2.0',1,'core'),
 ('advgroup','Advanced Groups','Advanced Groups allow member to create groups, post photos,albums, polls or discussion, etc .. on their groups.','4.02p1',0,'extra'),
 ('announcement','Announcements','Announcements','4.2.0',1,'standard'),
 ('authorization','Authorization','Authorization','4.2.0',1,'core'),
 ('core','Core','Core','4.2.0',1,'core'),
 ('event','Events','Events','4.2.0',1,'extra'),
 ('fields','Fields','Fields','4.2.0',1,'core'),
 ('group','Groups','Groups','4.2.0',0,'extra'),
 ('invite','Invite','Invite','4.2.0',1,'standard'),
 ('messages','Messages','Messages','4.2.0',1,'standard'),
 ('mobi','Mobi','Mobile','4.2.0',1,'extra'),
 ('network','Networks','Networks','4.2.0',1,'standard'),
 ('payment','Payment','Payment','4.2.0',1,'standard'),
 ('storage','Storage','Storage','4.2.0',1,'core'),
 ('user','Members','Members','4.2.0',1,'core'),
 ('younet-core','YouNet Core Module','YouNet Core Module','4.02p3',0,'extra');
/*!40000 ALTER TABLE `engine4_core_modules` ENABLE KEYS */;


--
-- Definition of table `engine4_core_nodes`
--

DROP TABLE IF EXISTS `engine4_core_nodes`;
CREATE TABLE `engine4_core_nodes` (
  `node_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `signature` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_seen` datetime NOT NULL,
  `last_seen` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  PRIMARY KEY (`node_id`),
  UNIQUE KEY `signature` (`signature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_nodes`
--

/*!40000 ALTER TABLE `engine4_core_nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_nodes` ENABLE KEYS */;


--
-- Definition of table `engine4_core_pages`
--

DROP TABLE IF EXISTS `engine4_core_pages`;
CREATE TABLE `engine4_core_pages` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `displayname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `custom` tinyint(1) NOT NULL DEFAULT '1',
  `fragment` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `levels` text COLLATE utf8_unicode_ci,
  `provides` text COLLATE utf8_unicode_ci,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_pages`
--

/*!40000 ALTER TABLE `engine4_core_pages` DISABLE KEYS */;
INSERT INTO `engine4_core_pages` (`page_id`,`name`,`displayname`,`url`,`title`,`description`,`keywords`,`custom`,`fragment`,`layout`,`levels`,`provides`,`view_count`) VALUES 
 (1,'header','Site Header',NULL,'','','',0,1,'',NULL,'header-footer',0),
 (2,'footer','Site Footer',NULL,'','','',0,1,'',NULL,'header-footer',0),
 (3,'core_index_index','Home Page',NULL,'Home Page','This is the home page.','',0,0,'',NULL,'no-viewer;no-subject',0),
 (4,'user_index_home','Member Home Page',NULL,'Member Home Page','This is the home page for members.','',0,0,'',NULL,'viewer;no-subject',0),
 (5,'user_profile_index','Member Profile',NULL,'Member Profile','This is a member\'s profile.','',0,0,'',NULL,'subject=user',0),
 (6,'core_help_contact','Contact Page',NULL,'Contact Us','This is the contact page','',0,0,'',NULL,'no-viewer;no-subject',0),
 (7,'core_help_privacy','Privacy Page',NULL,'Privacy Policy','This is the privacy policy page','',0,0,'',NULL,'no-viewer;no-subject',0),
 (8,'core_help_terms','Terms of Service Page',NULL,'Terms of Service','This is the terms of service page','',0,0,'',NULL,'no-viewer;no-subject',0),
 (9,'core_error_requireuser','Sign-in Required Page',NULL,'Sign-in Required','','',0,0,'',NULL,NULL,0),
 (10,'user_auth_login','Sign-in Page',NULL,'Sign-in','This is the site sign-in page.','',0,0,'',NULL,NULL,0),
 (11,'user_signup_index','Sign-up Page',NULL,'Sign-up','This is the site sign-up page.','',0,0,'',NULL,NULL,0),
 (12,'invite_index_index','Invite Page',NULL,'Invite','','',0,0,'',NULL,NULL,0),
 (13,'messages_messages_inbox','Messages Inbox Page',NULL,'Inbox','','',0,0,'',NULL,NULL,0),
 (14,'messages_messages_outbox','Messages Outbox Page',NULL,'Inbox','','',0,0,'',NULL,NULL,0),
 (15,'header_mobi','Mobile Site Header',NULL,'Mobile Site Header','This is the mobile site header.','',0,1,'',NULL,NULL,0),
 (16,'footer_mobi','Mobile Site Footer',NULL,'Mobile Site Footer','This is the mobile site footer.','',0,1,'',NULL,NULL,0),
 (17,'mobi_index_index','Mobile Home Page',NULL,'Mobile Home Page','This is the mobile homepage.','',0,0,'default',NULL,NULL,0),
 (18,'mobi_index_userhome','Mobile Member Home Page',NULL,'Mobile Member Home Page','This is the mobile member homepage.','',0,0,'',NULL,NULL,0),
 (19,'mobi_index_profile','Mobile Member Profile',NULL,'Mobile Member Profile','This is the mobile verison of a member profile.','',0,0,'',NULL,NULL,0),
 (20,'mobi_event_profile','Mobile Event Profile',NULL,'Mobile Event Profile','This is the mobile verison of an event profile.','',0,0,'',NULL,NULL,0),
 (21,'event_profile_index','Event Profile',NULL,'Event Profile','This is the profile for an event.','',0,0,'',NULL,'subject=event',0),
 (22,'event_index_browse','Event Browse Page',NULL,'Event Browse','This page lists events.','',0,0,'',NULL,NULL,0),
 (23,'group_profile_index','Group Profile',NULL,'Group Profile','This is the profile for an group.','',0,0,'',NULL,'subject=group',0),
 (24,'mobi_group_profile','Mobile Group Profile',NULL,'Mobile Group Profile','This is the mobile verison of a group profile.','',0,0,'',NULL,NULL,0),
 (25,'group_index_browse','Group Browse Page',NULL,'Group Browse','This page lists groups.','',0,0,'',NULL,NULL,0),
 (26,'advgroup_index_browse','Advanced Group Home Page',NULL,'Advanced Group Home Page','The Homepage of Advgroup module.','',0,0,'',NULL,NULL,0),
 (27,'advgroup_index_listing','Advanced Group Listing Page',NULL,'Advanced Group Listing Page','The listing page of Advgroup module.','',0,0,'',NULL,NULL,0),
 (28,'advgroup_profile_index','Advanced Group Profile',NULL,'Advanced Group Profile','This is the profile for an group.','',0,0,'',NULL,'subject=group',0),
 (29,'mobi_advgroup_profile','Mobile Advanced Group Profile',NULL,'Mobile Advanced Group Profile','This is the mobile verison of a group profile.','',0,0,'',NULL,NULL,0);
/*!40000 ALTER TABLE `engine4_core_pages` ENABLE KEYS */;


--
-- Definition of table `engine4_core_processes`
--

DROP TABLE IF EXISTS `engine4_core_processes`;
CREATE TABLE `engine4_core_processes` (
  `pid` int(10) unsigned NOT NULL,
  `parent_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `system_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `started` int(10) unsigned NOT NULL,
  `timeout` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_processes`
--

/*!40000 ALTER TABLE `engine4_core_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_processes` ENABLE KEYS */;


--
-- Definition of table `engine4_core_referrers`
--

DROP TABLE IF EXISTS `engine4_core_referrers`;
CREATE TABLE `engine4_core_referrers` (
  `host` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `query` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) unsigned NOT NULL,
  PRIMARY KEY (`host`,`path`,`query`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_referrers`
--

/*!40000 ALTER TABLE `engine4_core_referrers` DISABLE KEYS */;
INSERT INTO `engine4_core_referrers` (`host`,`path`,`query`,`value`) VALUES 
 ('translate.google.com.hk','/translate_p','anno=2&hl=en&sl=en&tl=ko&u=http://www.op2vb.com/peak%3fen4_maint_code%3dpeak&usg=alkjrhj2phwx0w5trmhb_wc4lqpkwehlaq',2);
/*!40000 ALTER TABLE `engine4_core_referrers` ENABLE KEYS */;


--
-- Definition of table `engine4_core_reports`
--

DROP TABLE IF EXISTS `engine4_core_reports`;
CREATE TABLE `engine4_core_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`report_id`),
  KEY `category` (`category`),
  KEY `user_id` (`user_id`),
  KEY `read` (`read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_reports`
--

/*!40000 ALTER TABLE `engine4_core_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_reports` ENABLE KEYS */;


--
-- Definition of table `engine4_core_routes`
--

DROP TABLE IF EXISTS `engine4_core_routes`;
CREATE TABLE `engine4_core_routes` (
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_routes`
--

/*!40000 ALTER TABLE `engine4_core_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_routes` ENABLE KEYS */;


--
-- Definition of table `engine4_core_search`
--

DROP TABLE IF EXISTS `engine4_core_search`;
CREATE TABLE `engine4_core_search` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hidden` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type`,`id`),
  FULLTEXT KEY `LOOKUP` (`title`,`description`,`keywords`,`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_search`
--

/*!40000 ALTER TABLE `engine4_core_search` DISABLE KEYS */;
INSERT INTO `engine4_core_search` (`type`,`id`,`title`,`description`,`keywords`,`hidden`) VALUES 
 ('group',1,'11 Smack','','',''),
 ('group',2,'11 Metro','','',''),
 ('group',3,'12 Smack','','',''),
 ('group',4,'12 National','','',''),
 ('group',5,'12 Metro (K. Wilson)','','',''),
 ('group',6,'12 Metro (H. Erickson)','','',''),
 ('user',1897958929,'asdf asdf','','',''),
 ('user',1454445489,'asdf asdf','','',''),
 ('user',1720049785,'adf asdf','','',''),
 ('event',1,'Redlands','','',''),
 ('user',6,'Admin 2','','',''),
 ('user',7,'aa aa','','',''),
 ('user',8,'a aa','','',''),
 ('user',9,'a a','','',''),
 ('user',10,'<i>Deleted Member</i>','','',''),
 ('user',11,'a a','','',''),
 ('user',962724475,'<i>Deleted Member</i>','','',''),
 ('user',962724476,'a a','','',''),
 ('user',1365141340,'<i>Deleted Member</i>','','',''),
 ('user',1365141341,'2 2','','',''),
 ('user',1134281355,'<i>Deleted Member</i>','','',''),
 ('user',1365141342,'x 4','','',''),
 ('user',78938821,'<i>Deleted Member</i>','','',''),
 ('user',1365141343,'a b','','',''),
 ('user',1378354621,'aa asdf','','',''),
 ('user',370267116,'00000000 asdf','','',''),
 ('user',90665149,'aa','','',''),
 ('user',787906286,'1 1','','',''),
 ('user',1617777672,'asdfasdf asdf','','',''),
 ('user',144946255,'ax ax','','',''),
 ('user',1826907472,'x33 x55','','',''),
 ('user',806665847,'asdf asdf','','',''),
 ('user',1542221578,'abb ccc23423423','','',''),
 ('user',1884272687,'asdfasdf asdfsadf','','',''),
 ('user',976972162,'adf 32323232','','',''),
 ('user',2036342406,'a b','','',''),
 ('user',2058297435,'f3 f3','','',''),
 ('user',1519581937,'asdfasdf asdf','','',''),
 ('user',1165849088,'123','','',''),
 ('user',339776385,'<i>Deleted Member</i>','','',''),
 ('user',644538342,'aa b','','',''),
 ('user',1173216455,'000999000 00999900','','',''),
 ('user',673259212,'b b','','',''),
 ('user',337255322,'b b','','',''),
 ('user',1680664888,'b b','','','');
/*!40000 ALTER TABLE `engine4_core_search` ENABLE KEYS */;


--
-- Definition of table `engine4_core_serviceproviders`
--

DROP TABLE IF EXISTS `engine4_core_serviceproviders`;
CREATE TABLE `engine4_core_serviceproviders` (
  `serviceprovider_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `class` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serviceprovider_id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_serviceproviders`
--

/*!40000 ALTER TABLE `engine4_core_serviceproviders` DISABLE KEYS */;
INSERT INTO `engine4_core_serviceproviders` (`serviceprovider_id`,`title`,`type`,`name`,`class`,`enabled`) VALUES 
 (1,'MySQL','database','mysql','Engine_ServiceLocator_Plugin_Database_Mysql',1),
 (2,'PDO MySQL','database','mysql_pdo','Engine_ServiceLocator_Plugin_Database_MysqlPdo',1),
 (3,'MySQLi','database','mysqli','Engine_ServiceLocator_Plugin_Database_Mysqli',1),
 (4,'File','cache','file','Engine_ServiceLocator_Plugin_Cache_File',1),
 (5,'APC','cache','apc','Engine_ServiceLocator_Plugin_Cache_Apc',1),
 (6,'Memcache','cache','memcached','Engine_ServiceLocator_Plugin_Cache_Memcached',1),
 (7,'Simple','captcha','image','Engine_ServiceLocator_Plugin_Captcha_Image',1),
 (8,'ReCaptcha','captcha','recaptcha','Engine_ServiceLocator_Plugin_Captcha_Recaptcha',1),
 (9,'SMTP','mail','smtp','Engine_ServiceLocator_Plugin_Mail_Smtp',1),
 (10,'Sendmail','mail','sendmail','Engine_ServiceLocator_Plugin_Mail_Sendmail',1),
 (11,'GD','image','gd','Engine_ServiceLocator_Plugin_Image_Gd',1),
 (12,'Imagick','image','imagick','Engine_ServiceLocator_Plugin_Image_Imagick',1),
 (13,'Akismet','akismet','standard','Engine_ServiceLocator_Plugin_Akismet',1);
/*!40000 ALTER TABLE `engine4_core_serviceproviders` ENABLE KEYS */;


--
-- Definition of table `engine4_core_services`
--

DROP TABLE IF EXISTS `engine4_core_services`;
CREATE TABLE `engine4_core_services` (
  `service_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `profile` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'default',
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`service_id`),
  UNIQUE KEY `type` (`type`,`profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_services`
--

/*!40000 ALTER TABLE `engine4_core_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_services` ENABLE KEYS */;


--
-- Definition of table `engine4_core_servicetypes`
--

DROP TABLE IF EXISTS `engine4_core_servicetypes`;
CREATE TABLE `engine4_core_servicetypes` (
  `servicetype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `interface` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`servicetype_id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_servicetypes`
--

/*!40000 ALTER TABLE `engine4_core_servicetypes` DISABLE KEYS */;
INSERT INTO `engine4_core_servicetypes` (`servicetype_id`,`title`,`type`,`interface`,`enabled`) VALUES 
 (1,'Database','database','Zend_Db_Adapter_Abstract',1),
 (2,'Cache','cache','Zend_Cache_Backend',1),
 (3,'Captcha','captcha','Zend_Captcha_Adapter',1),
 (4,'Mail Transport','mail','Zend_Mail_Transport_Abstract',1),
 (5,'Image','image','Engine_Image_Adapter_Abstract',1),
 (6,'Akismet','akismet','Zend_Service_Akismet',1);
/*!40000 ALTER TABLE `engine4_core_servicetypes` ENABLE KEYS */;


--
-- Definition of table `engine4_core_session`
--

DROP TABLE IF EXISTS `engine4_core_session`;
CREATE TABLE `engine4_core_session` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_session`
--

/*!40000 ALTER TABLE `engine4_core_session` DISABLE KEYS */;
INSERT INTO `engine4_core_session` (`id`,`modified`,`lifetime`,`data`,`user_id`) VALUES 
 ('13bfcc2c03e89fe4f90ca46f8dbc30c2',1327962454,86400,'mobile|a:1:{s:6:\"mobile\";b:0;}Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:3:\"130\";ulogin_id|s:5:\"odesk\";ActivityFormToken|a:1:{s:5:\"token\";s:32:\"68ab12d17a4c5babea994afa2a380ba3\";}twitter_lock|i:6;twitter_uid|b:0;',6),
 ('1dbc1fc1bdcc9b7e0e017747ec59d504',1328048284,86400,'mobile|a:1:{s:6:\"mobile\";b:0;}ActivityFormToken|a:1:{s:5:\"token\";s:32:\"d9c3cbe5d724eb5f36612f50b11856f3\";}twitter_uid|b:0;invite|a:1:{s:12:\"signup_email\";s:19:\"sasya8080@gmail.com\";}Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:3:\"135\";ulogin_id|s:5:\"odesk\";twitter_lock|i:6;',6),
 ('32f800e13b2da39df7c563d3dd556d7d',1327963659,86400,'mobile|a:1:{s:6:\"mobile\";b:0;}Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:3:\"131\";ulogin_id|s:5:\"odesk\";ActivityFormToken|a:1:{s:5:\"token\";s:32:\"4e0d707384ec18b53e17a34b235a71c6\";}twitter_lock|i:6;twitter_uid|b:0;',6),
 ('43d4bb908113c75e140653a270b3e931',1327634404,1209600,'mobile|a:1:{s:6:\"mobile\";b:0;}ulogin_id|s:5:\"odesk\";ActivityFormToken|a:1:{s:5:\"token\";s:32:\"3d910b027970dbdde92b42589f3aa3ab\";}twitter_uid|b:0;Network_Plugin_Signup_Network|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}User_Plugin_Signup_Account|a:2:{s:6:\"active\";b:0;s:4:\"data\";a:5:{s:9:\"ulogin_id\";s:3:\"a39\";s:5:\"email\";s:9:\"aa@bb.com\";s:12:\"profile_type\";s:1:\"4\";s:8:\"timezone\";s:10:\"US/Central\";s:8:\"language\";s:7:\"English\";}}User_Plugin_Signup_Fields|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:3:\"119\";',6),
 ('4edd82f3d6e29f262491b7a504aedb1c',1328046603,86400,'mobile|a:1:{s:6:\"mobile\";b:0;}Network_Plugin_Signup_Network|a:2:{s:6:\"active\";b:0;s:4:\"data\";a:1:{s:10:\"network_id\";s:1:\"8\";}}User_Plugin_Signup_Account|a:2:{s:6:\"active\";b:0;s:4:\"data\";a:5:{s:9:\"ulogin_id\";s:4:\"a112\";s:5:\"email\";s:19:\"sasya8080@gmail.com\";s:12:\"profile_type\";s:1:\"8\";s:8:\"timezone\";s:10:\"US/Central\";s:8:\"language\";s:7:\"English\";}}User_Plugin_Signup_Fields|a:2:{s:6:\"active\";b:0;s:4:\"data\";a:3:{i:1;s:1:\"8\";i:29;s:1:\"b\";i:30;s:1:\"b\";}}User_Plugin_Signup_Photo|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}__ZF|a:1:{s:33:\"Zend_Form_Element_Hash_salt_token\";a:2:{s:4:\"ENNH\";i:1;s:3:\"ENT\";i:1328046902;}}Zend_Form_Element_Hash_salt_token|a:1:{s:4:\"hash\";s:32:\"c60ddcbceeb8d65c68d01f4252d19aa8\";}',NULL),
 ('a317d15a854c0c902a14f37fb7b0ec6b',1327367567,1209600,'mobile|a:1:{s:6:\"mobile\";b:0;}ActivityFormToken|a:1:{s:5:\"token\";s:32:\"2e740c0ff5caf2ed44c3734448d08b5a\";}twitter_uid|b:0;ulogin_id|s:5:\"odesk\";User_Plugin_Signup_Invite|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}Network_Plugin_Signup_Network|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}Payment_Plugin_Signup_Subscription|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:2:\"82\";twitter_lock|i:6;User_Plugin_Signup_Account|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}',6),
 ('ca301f592ac2af352a823e00597afa0f',1328048880,86400,'mobile|a:1:{s:6:\"mobile\";b:0;}Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:3:\"136\";ulogin_id|s:5:\"odesk\";ActivityFormToken|a:1:{s:5:\"token\";s:32:\"ae4684b5c6a62b312c74d8597124d427\";}twitter_lock|i:6;twitter_uid|b:0;',6),
 ('e7eaaa25e28d98b8ac7008dc5dfcedbb',1326940912,1209600,'mobile|a:1:{s:6:\"mobile\";b:0;}ActivityFormToken|a:1:{s:5:\"token\";s:32:\"a4edf4a38b15df07cdf2754519acdc7c\";}twitter_uid|b:0;Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:2:\"25\";twitter_lock|i:6;Payment_Plugin_Signup_Subscription|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}User_Plugin_Signup_Account|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}User_Plugin_Signup_Fields|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}User_Plugin_Signup_Photo|a:2:{s:6:\"active\";b:1;s:4:\"data\";N;}',6),
 ('ec57096d8e9aef44838d00f108c623a2',1327975007,86400,'mobile|a:1:{s:6:\"mobile\";b:0;}Zend_Auth|a:1:{s:7:\"storage\";i:6;}login_id|s:3:\"132\";ulogin_id|s:5:\"odesk\";ActivityFormToken|a:1:{s:5:\"token\";s:32:\"9aba20fa19e07cedf0df57e6dc0bc05e\";}twitter_lock|i:6;twitter_uid|b:0;',6);
/*!40000 ALTER TABLE `engine4_core_session` ENABLE KEYS */;


--
-- Definition of table `engine4_core_settings`
--

DROP TABLE IF EXISTS `engine4_core_settings`;
CREATE TABLE `engine4_core_settings` (
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_settings`
--

/*!40000 ALTER TABLE `engine4_core_settings` DISABLE KEYS */;
INSERT INTO `engine4_core_settings` (`name`,`value`) VALUES 
 ('activity.content','networks'),
 ('activity.disallowed','N'),
 ('activity.filter','1'),
 ('activity.length','15'),
 ('activity.liveupdate','120000'),
 ('activity.publish','0'),
 ('activity.userdelete','1'),
 ('activity.userlength','5'),
 ('advgroup.pollcanchangevote','1'),
 ('advgroup.pollmaxoptions','15'),
 ('advgroup.pollshowpiechart','0'),
 ('core.admin.mode','none'),
 ('core.admin.password',''),
 ('core.admin.reauthenticate','0'),
 ('core.admin.timeout','600'),
 ('core.analytics.code',''),
 ('core.doctype','XHTML1_STRICT'),
 ('core.facebook.enable','publish'),
 ('core.facebook.key',''),
 ('core.facebook.secret',''),
 ('core.general.analytics',''),
 ('core.general.browse','1'),
 ('core.general.commenthtml',''),
 ('core.general.notificationupdate','120000'),
 ('core.general.portal','0'),
 ('core.general.profile','1'),
 ('core.general.quota','0'),
 ('core.general.search','1'),
 ('core.general.site.description',''),
 ('core.general.site.keywords',''),
 ('core.general.site.title','Peak'),
 ('core.general.staticBaseUrl',''),
 ('core.license.email','email@domain.com'),
 ('core.license.key','8290-1210-8538-0960'),
 ('core.license.statistics','0'),
 ('core.locale.locale','auto'),
 ('core.locale.timezone','US/Central'),
 ('core.log.adapter','file'),
 ('core.mail.contact','rdecker@op2vb.com'),
 ('core.mail.count','25'),
 ('core.mail.enabled','1'),
 ('core.mail.from','bounce@op2vb.com'),
 ('core.mail.name','Peak'),
 ('core.mail.queueing','1'),
 ('core.secret','2832d5616db3c98d8acd96c5191e2410ad35fa01'),
 ('core.site.counter','22'),
 ('core.site.creation','2012-01-04 22:17:05'),
 ('core.site.title','Social Network'),
 ('core.spam.censor',''),
 ('core.spam.comment','0'),
 ('core.spam.commenthtml',''),
 ('core.spam.contact','1'),
 ('core.spam.invite','0'),
 ('core.spam.ipbans',''),
 ('core.spam.login','0'),
 ('core.spam.signup','0'),
 ('core.static.baseurl',''),
 ('core.tasks.count','1'),
 ('core.tasks.interval','60'),
 ('core.tasks.jobs','3'),
 ('core.tasks.key','0d2b666e'),
 ('core.tasks.last','1328048880'),
 ('core.tasks.mode','curl'),
 ('core.tasks.pid',''),
 ('core.tasks.processes','2'),
 ('core.tasks.time','120'),
 ('core.tasks.timeout','900'),
 ('core.thumbnails.icon.height','48'),
 ('core.thumbnails.icon.mode','crop'),
 ('core.thumbnails.icon.width','48'),
 ('core.thumbnails.main.height','720'),
 ('core.thumbnails.main.mode','resize'),
 ('core.thumbnails.main.width','720'),
 ('core.thumbnails.normal.height','160'),
 ('core.thumbnails.normal.mode','resize'),
 ('core.thumbnails.normal.width','140'),
 ('core.thumbnails.profile.height','400'),
 ('core.thumbnails.profile.mode','resize'),
 ('core.thumbnails.profile.width','200'),
 ('core.twitter.enable','none'),
 ('core.twitter.key',''),
 ('core.twitter.secret',''),
 ('invite.allowCustomMessage','1'),
 ('invite.fromEmail',''),
 ('invite.fromName',''),
 ('invite.max','10'),
 ('invite.message','You are being invited to join our social network.'),
 ('invite.subject','Join Us'),
 ('payment.benefit','all'),
 ('payment.currency','USD'),
 ('payment.secret','5fd5a42191564756f0545e7a056ed571'),
 ('storage.service.mirrored.counter','0'),
 ('storage.service.mirrored.index','0'),
 ('storage.service.roundrobin.counter','0'),
 ('user.friends.direction','1'),
 ('user.friends.eligible','0'),
 ('user.friends.lists','1'),
 ('user.friends.verification','1'),
 ('user.signup.approve','1'),
 ('user.signup.checkemail','0'),
 ('user.signup.inviteonly','0'),
 ('user.signup.random','1'),
 ('user.signup.terms','0'),
 ('user.signup.username','0'),
 ('user.signup.verifyemail','0');
/*!40000 ALTER TABLE `engine4_core_settings` ENABLE KEYS */;


--
-- Definition of table `engine4_core_statistics`
--

DROP TABLE IF EXISTS `engine4_core_statistics`;
CREATE TABLE `engine4_core_statistics` (
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_statistics`
--

/*!40000 ALTER TABLE `engine4_core_statistics` DISABLE KEYS */;
INSERT INTO `engine4_core_statistics` (`type`,`date`,`value`) VALUES 
 ('core.emails','2012-01-04 23:00:00',3),
 ('core.emails','2012-01-05 00:00:00',20),
 ('core.emails','2012-01-27 05:00:00',1),
 ('core.emails','2012-01-27 06:00:00',3),
 ('core.emails','2012-01-27 20:00:00',5),
 ('core.emails','2012-01-27 21:00:00',1),
 ('core.emails','2012-01-27 22:00:00',2),
 ('core.emails','2012-01-29 16:00:00',3),
 ('core.emails','2012-01-29 18:00:00',1),
 ('core.emails','2012-01-30 02:00:00',1),
 ('core.emails','2012-01-30 04:00:00',1),
 ('core.emails','2012-01-30 11:00:00',1),
 ('core.emails','2012-01-30 16:00:00',2),
 ('core.emails','2012-01-30 17:00:00',5),
 ('core.emails','2012-01-30 18:00:00',1),
 ('core.emails','2012-01-30 20:00:00',1),
 ('core.emails','2012-01-31 19:00:00',8),
 ('core.emails','2012-01-31 20:00:00',13),
 ('core.emails','2012-01-31 21:00:00',8),
 ('core.views','2012-01-04 22:00:00',37),
 ('core.views','2012-01-04 23:00:00',82),
 ('core.views','2012-01-05 00:00:00',50),
 ('core.views','2012-01-05 01:00:00',13),
 ('core.views','2012-01-11 20:00:00',8),
 ('core.views','2012-01-11 21:00:00',3),
 ('core.views','2012-01-11 22:00:00',23),
 ('core.views','2012-01-11 23:00:00',5),
 ('core.views','2012-01-12 00:00:00',4),
 ('core.views','2012-01-12 19:00:00',3),
 ('core.views','2012-01-12 20:00:00',3),
 ('core.views','2012-01-13 01:00:00',3),
 ('core.views','2012-01-13 02:00:00',1),
 ('core.views','2012-01-18 00:00:00',15),
 ('core.views','2012-01-18 01:00:00',10),
 ('core.views','2012-01-18 02:00:00',2),
 ('core.views','2012-01-18 03:00:00',13),
 ('core.views','2012-01-18 07:00:00',2),
 ('core.views','2012-01-18 10:00:00',5),
 ('core.views','2012-01-18 14:00:00',21),
 ('core.views','2012-01-18 22:00:00',8),
 ('core.views','2012-01-18 23:00:00',7),
 ('core.views','2012-01-19 01:00:00',19),
 ('core.views','2012-01-19 13:00:00',30),
 ('core.views','2012-01-19 17:00:00',2),
 ('core.views','2012-01-19 18:00:00',21),
 ('core.views','2012-01-19 19:00:00',4),
 ('core.views','2012-01-19 20:00:00',11),
 ('core.views','2012-01-19 21:00:00',21),
 ('core.views','2012-01-19 22:00:00',8),
 ('core.views','2012-01-19 23:00:00',16),
 ('core.views','2012-01-20 00:00:00',31),
 ('core.views','2012-01-20 01:00:00',23),
 ('core.views','2012-01-20 02:00:00',25),
 ('core.views','2012-01-20 03:00:00',41),
 ('core.views','2012-01-20 04:00:00',4),
 ('core.views','2012-01-20 09:00:00',3),
 ('core.views','2012-01-20 18:00:00',24),
 ('core.views','2012-01-20 19:00:00',7),
 ('core.views','2012-01-20 20:00:00',37),
 ('core.views','2012-01-20 21:00:00',7),
 ('core.views','2012-01-20 22:00:00',2),
 ('core.views','2012-01-20 23:00:00',15),
 ('core.views','2012-01-21 00:00:00',14),
 ('core.views','2012-01-21 01:00:00',13),
 ('core.views','2012-01-21 15:00:00',7),
 ('core.views','2012-01-21 16:00:00',2),
 ('core.views','2012-01-21 17:00:00',1),
 ('core.views','2012-01-23 16:00:00',11),
 ('core.views','2012-01-23 17:00:00',10),
 ('core.views','2012-01-23 18:00:00',6),
 ('core.views','2012-01-23 20:00:00',8),
 ('core.views','2012-01-23 21:00:00',25),
 ('core.views','2012-01-23 22:00:00',85),
 ('core.views','2012-01-23 23:00:00',17),
 ('core.views','2012-01-24 00:00:00',15),
 ('core.views','2012-01-24 01:00:00',3),
 ('core.views','2012-01-24 19:00:00',7),
 ('core.views','2012-01-24 23:00:00',85),
 ('core.views','2012-01-25 00:00:00',153),
 ('core.views','2012-01-25 01:00:00',48),
 ('core.views','2012-01-25 02:00:00',244),
 ('core.views','2012-01-25 03:00:00',9),
 ('core.views','2012-01-25 04:00:00',52),
 ('core.views','2012-01-25 05:00:00',27),
 ('core.views','2012-01-25 06:00:00',106),
 ('core.views','2012-01-25 14:00:00',153),
 ('core.views','2012-01-25 15:00:00',114),
 ('core.views','2012-01-25 16:00:00',21),
 ('core.views','2012-01-25 18:00:00',215),
 ('core.views','2012-01-25 19:00:00',226),
 ('core.views','2012-01-25 20:00:00',97),
 ('core.views','2012-01-25 21:00:00',3),
 ('core.views','2012-01-26 17:00:00',1),
 ('core.views','2012-01-26 19:00:00',83),
 ('core.views','2012-01-26 20:00:00',59),
 ('core.views','2012-01-26 21:00:00',54),
 ('core.views','2012-01-26 22:00:00',165),
 ('core.views','2012-01-26 23:00:00',13),
 ('core.views','2012-01-27 00:00:00',38),
 ('core.views','2012-01-27 01:00:00',83),
 ('core.views','2012-01-27 02:00:00',48),
 ('core.views','2012-01-27 03:00:00',74),
 ('core.views','2012-01-27 04:00:00',33),
 ('core.views','2012-01-27 05:00:00',58),
 ('core.views','2012-01-27 06:00:00',9),
 ('core.views','2012-01-27 09:00:00',4),
 ('core.views','2012-01-27 17:00:00',28),
 ('core.views','2012-01-27 19:00:00',4),
 ('core.views','2012-01-27 20:00:00',35),
 ('core.views','2012-01-27 21:00:00',3),
 ('core.views','2012-01-27 22:00:00',12),
 ('core.views','2012-01-29 16:00:00',20),
 ('core.views','2012-01-29 18:00:00',9),
 ('core.views','2012-01-29 19:00:00',12),
 ('core.views','2012-01-30 01:00:00',40),
 ('core.views','2012-01-30 02:00:00',27),
 ('core.views','2012-01-30 03:00:00',15),
 ('core.views','2012-01-30 04:00:00',5),
 ('core.views','2012-01-30 10:00:00',22),
 ('core.views','2012-01-30 11:00:00',7),
 ('core.views','2012-01-30 16:00:00',38),
 ('core.views','2012-01-30 17:00:00',19),
 ('core.views','2012-01-30 18:00:00',18),
 ('core.views','2012-01-30 19:00:00',2620),
 ('core.views','2012-01-30 20:00:00',2756),
 ('core.views','2012-01-30 21:00:00',4098),
 ('core.views','2012-01-30 22:00:00',3588),
 ('core.views','2012-01-31 00:00:00',3725),
 ('core.views','2012-01-31 01:00:00',2126),
 ('core.views','2012-01-31 19:00:00',21),
 ('core.views','2012-01-31 20:00:00',26),
 ('core.views','2012-01-31 21:00:00',57),
 ('core.views','2012-01-31 22:00:00',4),
 ('user.creations','2012-01-04 23:00:00',1),
 ('user.creations','2012-01-05 00:00:00',3),
 ('user.creations','2012-01-11 22:00:00',1),
 ('user.creations','2012-01-23 22:00:00',1),
 ('user.creations','2012-01-23 23:00:00',1),
 ('user.creations','2012-01-24 00:00:00',1),
 ('user.creations','2012-01-25 14:00:00',1),
 ('user.creations','2012-01-25 19:00:00',2),
 ('user.creations','2012-01-25 20:00:00',4),
 ('user.creations','2012-01-26 21:00:00',1),
 ('user.creations','2012-01-26 22:00:00',4),
 ('user.creations','2012-01-27 02:00:00',1),
 ('user.creations','2012-01-27 03:00:00',4),
 ('user.creations','2012-01-27 05:00:00',3),
 ('user.creations','2012-01-27 17:00:00',2),
 ('user.creations','2012-01-30 02:00:00',1),
 ('user.creations','2012-01-30 03:00:00',2),
 ('user.creations','2012-01-30 11:00:00',1),
 ('user.creations','2012-01-30 18:00:00',1),
 ('user.creations','2012-01-31 21:00:00',4),
 ('user.logins','2012-01-04 23:00:00',5),
 ('user.logins','2012-01-05 00:00:00',2),
 ('user.logins','2012-01-11 20:00:00',1),
 ('user.logins','2012-01-11 22:00:00',2),
 ('user.logins','2012-01-11 23:00:00',1),
 ('user.logins','2012-01-12 00:00:00',1),
 ('user.logins','2012-01-12 19:00:00',1),
 ('user.logins','2012-01-13 01:00:00',1),
 ('user.logins','2012-01-18 00:00:00',3),
 ('user.logins','2012-01-18 01:00:00',1),
 ('user.logins','2012-01-18 14:00:00',2),
 ('user.logins','2012-01-18 23:00:00',2),
 ('user.logins','2012-01-19 13:00:00',1),
 ('user.logins','2012-01-19 18:00:00',4),
 ('user.logins','2012-01-19 20:00:00',2),
 ('user.logins','2012-01-19 21:00:00',2),
 ('user.logins','2012-01-20 03:00:00',3),
 ('user.logins','2012-01-20 09:00:00',1),
 ('user.logins','2012-01-20 18:00:00',1),
 ('user.logins','2012-01-20 19:00:00',1),
 ('user.logins','2012-01-20 23:00:00',2),
 ('user.logins','2012-01-21 15:00:00',2),
 ('user.logins','2012-01-21 17:00:00',1),
 ('user.logins','2012-01-23 16:00:00',2),
 ('user.logins','2012-01-23 17:00:00',1),
 ('user.logins','2012-01-23 18:00:00',2),
 ('user.logins','2012-01-23 20:00:00',1),
 ('user.logins','2012-01-24 00:00:00',1),
 ('user.logins','2012-01-24 01:00:00',1),
 ('user.logins','2012-01-24 19:00:00',1),
 ('user.logins','2012-01-24 23:00:00',2),
 ('user.logins','2012-01-25 00:00:00',2),
 ('user.logins','2012-01-25 02:00:00',2),
 ('user.logins','2012-01-25 14:00:00',1),
 ('user.logins','2012-01-25 15:00:00',2),
 ('user.logins','2012-01-25 20:00:00',5),
 ('user.logins','2012-01-26 19:00:00',2),
 ('user.logins','2012-01-26 22:00:00',3),
 ('user.logins','2012-01-27 00:00:00',3),
 ('user.logins','2012-01-27 01:00:00',4),
 ('user.logins','2012-01-27 02:00:00',2),
 ('user.logins','2012-01-27 03:00:00',2),
 ('user.logins','2012-01-27 05:00:00',1),
 ('user.logins','2012-01-27 17:00:00',1),
 ('user.logins','2012-01-27 20:00:00',1),
 ('user.logins','2012-01-27 22:00:00',1),
 ('user.logins','2012-01-30 02:00:00',1),
 ('user.logins','2012-01-30 17:00:00',1),
 ('user.logins','2012-01-30 19:00:00',2),
 ('user.logins','2012-01-30 20:00:00',3),
 ('user.logins','2012-01-31 00:00:00',1),
 ('user.logins','2012-01-31 21:00:00',2),
 ('user.logins','2012-01-31 22:00:00',2);
/*!40000 ALTER TABLE `engine4_core_statistics` ENABLE KEYS */;


--
-- Definition of table `engine4_core_status`
--

DROP TABLE IF EXISTS `engine4_core_status`;
CREATE TABLE `engine4_core_status` (
  `status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `resource_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_status`
--

/*!40000 ALTER TABLE `engine4_core_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_status` ENABLE KEYS */;


--
-- Definition of table `engine4_core_styles`
--

DROP TABLE IF EXISTS `engine4_core_styles`;
CREATE TABLE `engine4_core_styles` (
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `style` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_styles`
--

/*!40000 ALTER TABLE `engine4_core_styles` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_styles` ENABLE KEYS */;


--
-- Definition of table `engine4_core_tagmaps`
--

DROP TABLE IF EXISTS `engine4_core_tagmaps`;
CREATE TABLE `engine4_core_tagmaps` (
  `tagmap_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `resource_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `tagger_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tagger_id` int(11) unsigned NOT NULL,
  `tag_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `extra` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`tagmap_id`),
  KEY `resource_type` (`resource_type`,`resource_id`),
  KEY `tagger_type` (`tagger_type`,`tagger_id`),
  KEY `tag_type` (`tag_type`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_tagmaps`
--

/*!40000 ALTER TABLE `engine4_core_tagmaps` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_tagmaps` ENABLE KEYS */;


--
-- Definition of table `engine4_core_tags`
--

DROP TABLE IF EXISTS `engine4_core_tags`;
CREATE TABLE `engine4_core_tags` (
  `tag_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `text` (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_tags`
--

/*!40000 ALTER TABLE `engine4_core_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_core_tags` ENABLE KEYS */;


--
-- Definition of table `engine4_core_tasks`
--

DROP TABLE IF EXISTS `engine4_core_tasks`;
CREATE TABLE `engine4_core_tasks` (
  `task_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `timeout` int(11) unsigned NOT NULL DEFAULT '60',
  `processes` smallint(3) unsigned NOT NULL DEFAULT '1',
  `semaphore` smallint(3) NOT NULL DEFAULT '0',
  `started_last` int(11) NOT NULL DEFAULT '0',
  `started_count` int(11) unsigned NOT NULL DEFAULT '0',
  `completed_last` int(11) NOT NULL DEFAULT '0',
  `completed_count` int(11) unsigned NOT NULL DEFAULT '0',
  `failure_last` int(11) NOT NULL DEFAULT '0',
  `failure_count` int(11) unsigned NOT NULL DEFAULT '0',
  `success_last` int(11) NOT NULL DEFAULT '0',
  `success_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `plugin` (`plugin`),
  KEY `module` (`module`),
  KEY `started_last` (`started_last`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_tasks`
--

/*!40000 ALTER TABLE `engine4_core_tasks` DISABLE KEYS */;
INSERT INTO `engine4_core_tasks` (`task_id`,`title`,`module`,`plugin`,`timeout`,`processes`,`semaphore`,`started_last`,`started_count`,`completed_last`,`completed_count`,`failure_last`,`failure_count`,`success_last`,`success_count`) VALUES 
 (1,'Job Queue','core','Core_Plugin_Task_Jobs',5,1,0,1325728049,85,1325728049,85,0,0,1325728049,85),
 (2,'Background Mailer','core','Core_Plugin_Task_Mail',15,1,0,1325728049,85,1325728049,85,0,0,1325728049,85),
 (3,'Cache Prefetch','core','Core_Plugin_Task_Prefetch',300,1,0,1325727985,24,1325727985,24,0,0,1325727985,24),
 (4,'Statistics','core','Core_Plugin_Task_Statistics',43200,1,0,1325716553,1,1325716553,1,0,0,1325716553,1),
 (5,'Log Rotation','core','Core_Plugin_Task_LogRotation',7200,1,0,1325723864,2,1325723864,2,0,0,1325723864,2),
 (6,'Member Data Maintenance','user','User_Plugin_Task_Cleanup',60,1,0,1325728049,50,1325728049,50,0,0,1325728049,50),
 (7,'Payment Maintenance','user','Payment_Plugin_Task_Cleanup',43200,1,0,1325717131,1,1325717131,1,0,0,1325717131,1);
/*!40000 ALTER TABLE `engine4_core_tasks` ENABLE KEYS */;


--
-- Definition of table `engine4_core_themes`
--

DROP TABLE IF EXISTS `engine4_core_themes`;
CREATE TABLE `engine4_core_themes` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_themes`
--

/*!40000 ALTER TABLE `engine4_core_themes` DISABLE KEYS */;
INSERT INTO `engine4_core_themes` (`theme_id`,`name`,`title`,`description`,`active`) VALUES 
 (1,'default','Default Theme','',0),
 (2,'midnight','Midnight','',0),
 (3,'bamboo','Bamboo Theme','',0),
 (4,'digita','Digita','',0),
 (5,'slipstream','Slipstream','',0),
 (6,'snowbot','Snowbot Theme','',0),
 (7,'oklahomapeakperformance','Oklahoma Peak Performance','',1);
/*!40000 ALTER TABLE `engine4_core_themes` ENABLE KEYS */;


--
-- Definition of table `engine4_event_albums`
--

DROP TABLE IF EXISTS `engine4_event_albums`;
CREATE TABLE `engine4_event_albums` (
  `album_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `photo_id` int(11) unsigned NOT NULL DEFAULT '0',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(11) unsigned NOT NULL DEFAULT '0',
  `collectible_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_id`),
  KEY `event_id` (`event_id`),
  KEY `search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_albums`
--

/*!40000 ALTER TABLE `engine4_event_albums` DISABLE KEYS */;
INSERT INTO `engine4_event_albums` (`album_id`,`event_id`,`title`,`description`,`creation_date`,`modified_date`,`search`,`photo_id`,`view_count`,`comment_count`,`collectible_count`) VALUES 
 (1,1,'','','2012-01-05 00:56:47','2012-01-05 00:56:47',1,0,0,0,0);
/*!40000 ALTER TABLE `engine4_event_albums` ENABLE KEYS */;


--
-- Definition of table `engine4_event_categories`
--

DROP TABLE IF EXISTS `engine4_event_categories`;
CREATE TABLE `engine4_event_categories` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_categories`
--

/*!40000 ALTER TABLE `engine4_event_categories` DISABLE KEYS */;
INSERT INTO `engine4_event_categories` (`category_id`,`title`) VALUES 
 (1,'Arts'),
 (2,'Business'),
 (3,'Conferences'),
 (4,'Festivals'),
 (5,'Food'),
 (6,'Fundraisers'),
 (7,'Galleries'),
 (8,'Health'),
 (9,'Just For Fun'),
 (10,'Kids'),
 (11,'Learning'),
 (12,'Literary'),
 (13,'Movies'),
 (14,'Museums'),
 (15,'Neighborhood'),
 (16,'Networking'),
 (17,'Nightlife'),
 (18,'On Campus'),
 (19,'Organizations'),
 (20,'Outdoors'),
 (21,'Pets'),
 (22,'Politics'),
 (23,'Sales'),
 (24,'Science'),
 (25,'Spirituality'),
 (26,'Sports'),
 (27,'Technology'),
 (28,'Theatre'),
 (29,'Other');
/*!40000 ALTER TABLE `engine4_event_categories` ENABLE KEYS */;


--
-- Definition of table `engine4_event_events`
--

DROP TABLE IF EXISTS `engine4_event_events`;
CREATE TABLE `engine4_event_events` (
  `event_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `parent_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `host` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `member_count` int(11) unsigned NOT NULL DEFAULT '0',
  `approval` tinyint(1) NOT NULL DEFAULT '0',
  `invite` tinyint(1) NOT NULL DEFAULT '0',
  `photo_id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`),
  KEY `user_id` (`user_id`),
  KEY `parent_type` (`parent_type`,`parent_id`),
  KEY `starttime` (`starttime`),
  KEY `search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_events`
--

/*!40000 ALTER TABLE `engine4_event_events` DISABLE KEYS */;
INSERT INTO `engine4_event_events` (`event_id`,`title`,`description`,`user_id`,`parent_type`,`parent_id`,`search`,`creation_date`,`modified_date`,`starttime`,`endtime`,`host`,`location`,`view_count`,`member_count`,`approval`,`invite`,`photo_id`,`category_id`) VALUES 
 (1,'Redlands','',1,'user',1,1,'2012-01-05 00:56:46','2012-01-05 01:04:15','2012-01-07 14:00:00','2012-01-09 00:00:00','OKWind','Cox',0,1,0,0,0,26);
/*!40000 ALTER TABLE `engine4_event_events` ENABLE KEYS */;


--
-- Definition of table `engine4_event_membership`
--

DROP TABLE IF EXISTS `engine4_event_membership`;
CREATE TABLE `engine4_event_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `rsvp` tinyint(3) NOT NULL DEFAULT '3',
  `title` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`resource_id`,`user_id`),
  KEY `REVERSE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_membership`
--

/*!40000 ALTER TABLE `engine4_event_membership` DISABLE KEYS */;
INSERT INTO `engine4_event_membership` (`resource_id`,`user_id`,`active`,`resource_approved`,`user_approved`,`message`,`rsvp`,`title`) VALUES 
 (1,1,1,1,1,NULL,2,NULL);
/*!40000 ALTER TABLE `engine4_event_membership` ENABLE KEYS */;


--
-- Definition of table `engine4_event_photos`
--

DROP TABLE IF EXISTS `engine4_event_photos`;
CREATE TABLE `engine4_event_photos` (
  `photo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(11) unsigned NOT NULL,
  `event_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`photo_id`),
  KEY `album_id` (`album_id`),
  KEY `event_id` (`event_id`),
  KEY `collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_photos`
--

/*!40000 ALTER TABLE `engine4_event_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_event_photos` ENABLE KEYS */;


--
-- Definition of table `engine4_event_posts`
--

DROP TABLE IF EXISTS `engine4_event_posts`;
CREATE TABLE `engine4_event_posts` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) unsigned NOT NULL,
  `event_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `topic_id` (`topic_id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_posts`
--

/*!40000 ALTER TABLE `engine4_event_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_event_posts` ENABLE KEYS */;


--
-- Definition of table `engine4_event_topics`
--

DROP TABLE IF EXISTS `engine4_event_topics`;
CREATE TABLE `engine4_event_topics` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `post_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastpost_id` int(11) unsigned NOT NULL,
  `lastposter_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_topics`
--

/*!40000 ALTER TABLE `engine4_event_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_event_topics` ENABLE KEYS */;


--
-- Definition of table `engine4_event_topicwatches`
--

DROP TABLE IF EXISTS `engine4_event_topicwatches`;
CREATE TABLE `engine4_event_topicwatches` (
  `resource_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `watch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`resource_id`,`topic_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_topicwatches`
--

/*!40000 ALTER TABLE `engine4_event_topicwatches` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_event_topicwatches` ENABLE KEYS */;


--
-- Definition of table `engine4_group_albums`
--

DROP TABLE IF EXISTS `engine4_group_albums`;
CREATE TABLE `engine4_group_albums` (
  `album_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `photo_id` int(11) unsigned NOT NULL DEFAULT '0',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(11) unsigned NOT NULL DEFAULT '0',
  `collectible_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_albums`
--

/*!40000 ALTER TABLE `engine4_group_albums` DISABLE KEYS */;
INSERT INTO `engine4_group_albums` (`album_id`,`group_id`,`user_id`,`title`,`description`,`creation_date`,`modified_date`,`search`,`photo_id`,`view_count`,`comment_count`,`collectible_count`) VALUES 
 (1,1,1,'Group Profile','','2012-01-04 22:46:38','2012-01-04 22:46:38',1,0,0,0,0),
 (2,2,1,'Group Profile','','2012-01-04 22:47:48','2012-01-04 22:47:48',1,0,0,0,0),
 (3,3,1,'Group Profile','','2012-01-04 22:48:41','2012-01-04 22:48:41',1,0,0,0,0),
 (4,4,1,'Group Profile','','2012-01-04 22:50:23','2012-01-04 22:50:23',1,0,0,0,0),
 (5,5,1,'Group Profile','','2012-01-04 22:51:18','2012-01-04 22:51:18',1,0,0,0,0),
 (6,6,1,'Group Profile','','2012-01-04 23:21:58','2012-01-04 23:21:58',1,0,0,0,0);
/*!40000 ALTER TABLE `engine4_group_albums` ENABLE KEYS */;


--
-- Definition of table `engine4_group_announcements`
--

DROP TABLE IF EXISTS `engine4_group_announcements`;
CREATE TABLE `engine4_group_announcements` (
  `announcement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_announcements`
--

/*!40000 ALTER TABLE `engine4_group_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_announcements` ENABLE KEYS */;


--
-- Definition of table `engine4_group_categories`
--

DROP TABLE IF EXISTS `engine4_group_categories`;
CREATE TABLE `engine4_group_categories` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_categories`
--

/*!40000 ALTER TABLE `engine4_group_categories` DISABLE KEYS */;
INSERT INTO `engine4_group_categories` (`category_id`,`title`) VALUES 
 (1,'Animals'),
 (2,'Business & Finance'),
 (3,'Computers & Internet'),
 (4,'Cultures & Community'),
 (5,'Dating & Relationships'),
 (6,'Entertainment & Arts'),
 (7,'Family & Home'),
 (8,'Games'),
 (9,'Government & Politics'),
 (10,'Health & Wellness'),
 (11,'Hobbies & Crafts'),
 (12,'Music'),
 (13,'Recreation & Sports'),
 (14,'Regional'),
 (15,'Religion & Beliefs'),
 (16,'Schools & Education'),
 (17,'Science');
/*!40000 ALTER TABLE `engine4_group_categories` ENABLE KEYS */;


--
-- Definition of table `engine4_group_fields_maps`
--

DROP TABLE IF EXISTS `engine4_group_fields_maps`;
CREATE TABLE `engine4_group_fields_maps` (
  `field_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `order` smallint(6) NOT NULL,
  PRIMARY KEY (`field_id`,`option_id`,`child_id`),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_maps`
--

/*!40000 ALTER TABLE `engine4_group_fields_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_fields_maps` ENABLE KEYS */;


--
-- Definition of table `engine4_group_fields_meta`
--

DROP TABLE IF EXISTS `engine4_group_fields_meta`;
CREATE TABLE `engine4_group_fields_meta` (
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
  `validators` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `filters` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `style` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `error` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_meta`
--

/*!40000 ALTER TABLE `engine4_group_fields_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_fields_meta` ENABLE KEYS */;


--
-- Definition of table `engine4_group_fields_options`
--

DROP TABLE IF EXISTS `engine4_group_fields_options`;
CREATE TABLE `engine4_group_fields_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '999',
  PRIMARY KEY (`option_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_options`
--

/*!40000 ALTER TABLE `engine4_group_fields_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_fields_options` ENABLE KEYS */;


--
-- Definition of table `engine4_group_fields_search`
--

DROP TABLE IF EXISTS `engine4_group_fields_search`;
CREATE TABLE `engine4_group_fields_search` (
  `item_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `price` (`price`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_search`
--

/*!40000 ALTER TABLE `engine4_group_fields_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_fields_search` ENABLE KEYS */;


--
-- Definition of table `engine4_group_fields_values`
--

DROP TABLE IF EXISTS `engine4_group_fields_values`;
CREATE TABLE `engine4_group_fields_values` (
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `index` smallint(3) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`item_id`,`field_id`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_values`
--

/*!40000 ALTER TABLE `engine4_group_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_fields_values` ENABLE KEYS */;


--
-- Definition of table `engine4_group_groups`
--

DROP TABLE IF EXISTS `engine4_group_groups`;
CREATE TABLE `engine4_group_groups` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `invite` tinyint(1) NOT NULL DEFAULT '1',
  `approval` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `photo_id` int(11) unsigned NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `member_count` smallint(6) unsigned NOT NULL,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_groups`
--

/*!40000 ALTER TABLE `engine4_group_groups` DISABLE KEYS */;
INSERT INTO `engine4_group_groups` (`group_id`,`user_id`,`title`,`description`,`category_id`,`search`,`invite`,`approval`,`featured`,`photo_id`,`creation_date`,`modified_date`,`member_count`,`view_count`) VALUES 
 (1,1,'11 Smack','',13,1,1,0,0,0,'2012-01-04 22:46:37','2012-01-04 22:48:05',1,0),
 (2,1,'11 Metro','',13,1,1,1,0,0,'2012-01-04 22:47:47','2012-01-04 22:47:47',1,0),
 (3,1,'12 Smack','',13,1,1,1,0,0,'2012-01-04 22:48:40','2012-01-04 22:48:40',1,0),
 (4,1,'12 National','',0,1,1,1,0,0,'2012-01-04 22:50:22','2012-01-04 22:50:22',1,0),
 (5,1,'12 Metro (K. Wilson)','',0,1,1,1,0,0,'2012-01-04 22:51:17','2012-01-04 23:21:21',1,0),
 (6,1,'12 Metro (H. Erickson)','',0,1,1,1,0,0,'2012-01-04 23:21:57','2012-01-04 23:22:05',1,0);
/*!40000 ALTER TABLE `engine4_group_groups` ENABLE KEYS */;


--
-- Definition of table `engine4_group_invites`
--

DROP TABLE IF EXISTS `engine4_group_invites`;
CREATE TABLE `engine4_group_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `new_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_invites`
--

/*!40000 ALTER TABLE `engine4_group_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_invites` ENABLE KEYS */;


--
-- Definition of table `engine4_group_links`
--

DROP TABLE IF EXISTS `engine4_group_links`;
CREATE TABLE `engine4_group_links` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `owner_id` int(11) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_links`
--

/*!40000 ALTER TABLE `engine4_group_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_links` ENABLE KEYS */;


--
-- Definition of table `engine4_group_listitems`
--

DROP TABLE IF EXISTS `engine4_group_listitems`;
CREATE TABLE `engine4_group_listitems` (
  `listitem_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`listitem_id`),
  KEY `list_id` (`list_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_listitems`
--

/*!40000 ALTER TABLE `engine4_group_listitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_listitems` ENABLE KEYS */;


--
-- Definition of table `engine4_group_lists`
--

DROP TABLE IF EXISTS `engine4_group_lists`;
CREATE TABLE `engine4_group_lists` (
  `list_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_id` int(11) unsigned NOT NULL,
  `child_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`list_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_lists`
--

/*!40000 ALTER TABLE `engine4_group_lists` DISABLE KEYS */;
INSERT INTO `engine4_group_lists` (`list_id`,`title`,`owner_id`,`child_count`) VALUES 
 (1,'GROUP_OFFICERS',1,0),
 (2,'GROUP_OFFICERS',2,0),
 (3,'GROUP_OFFICERS',3,0),
 (4,'GROUP_OFFICERS',4,0),
 (5,'GROUP_OFFICERS',5,0),
 (6,'GROUP_OFFICERS',6,0);
/*!40000 ALTER TABLE `engine4_group_lists` ENABLE KEYS */;


--
-- Definition of table `engine4_group_membership`
--

DROP TABLE IF EXISTS `engine4_group_membership`;
CREATE TABLE `engine4_group_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`resource_id`,`user_id`),
  KEY `REVERSE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_membership`
--

/*!40000 ALTER TABLE `engine4_group_membership` DISABLE KEYS */;
INSERT INTO `engine4_group_membership` (`resource_id`,`user_id`,`active`,`resource_approved`,`user_approved`,`message`,`title`) VALUES 
 (1,1,1,1,1,NULL,NULL),
 (2,1,1,1,1,NULL,NULL),
 (3,1,1,1,1,NULL,NULL),
 (4,1,1,1,1,NULL,NULL),
 (5,1,1,1,1,NULL,NULL),
 (6,1,1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `engine4_group_membership` ENABLE KEYS */;


--
-- Definition of table `engine4_group_photos`
--

DROP TABLE IF EXISTS `engine4_group_photos`;
CREATE TABLE `engine4_group_photos` (
  `photo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`photo_id`),
  KEY `album_id` (`album_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_photos`
--

/*!40000 ALTER TABLE `engine4_group_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_photos` ENABLE KEYS */;


--
-- Definition of table `engine4_group_poll_options`
--

DROP TABLE IF EXISTS `engine4_group_poll_options`;
CREATE TABLE `engine4_group_poll_options` (
  `poll_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) unsigned NOT NULL,
  `poll_option` text COLLATE utf8_unicode_ci NOT NULL,
  `votes` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`poll_option_id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_poll_options`
--

/*!40000 ALTER TABLE `engine4_group_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_poll_options` ENABLE KEYS */;


--
-- Definition of table `engine4_group_poll_votes`
--

DROP TABLE IF EXISTS `engine4_group_poll_votes`;
CREATE TABLE `engine4_group_poll_votes` (
  `poll_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `poll_option_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`poll_id`,`user_id`),
  KEY `poll_option_id` (`poll_option_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_poll_votes`
--

/*!40000 ALTER TABLE `engine4_group_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_poll_votes` ENABLE KEYS */;


--
-- Definition of table `engine4_group_polls`
--

DROP TABLE IF EXISTS `engine4_group_polls`;
CREATE TABLE `engine4_group_polls` (
  `poll_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(11) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(11) unsigned NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`),
  KEY `user_id` (`user_id`),
  KEY `is_closed` (`is_closed`),
  KEY `creation_date` (`creation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_polls`
--

/*!40000 ALTER TABLE `engine4_group_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_polls` ENABLE KEYS */;


--
-- Definition of table `engine4_group_posts`
--

DROP TABLE IF EXISTS `engine4_group_posts`;
CREATE TABLE `engine4_group_posts` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `topic_id` (`topic_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_posts`
--

/*!40000 ALTER TABLE `engine4_group_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_posts` ENABLE KEYS */;


--
-- Definition of table `engine4_group_topics`
--

DROP TABLE IF EXISTS `engine4_group_topics`;
CREATE TABLE `engine4_group_topics` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `post_count` int(11) unsigned NOT NULL DEFAULT '0',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastpost_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lastposter_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_topics`
--

/*!40000 ALTER TABLE `engine4_group_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_topics` ENABLE KEYS */;


--
-- Definition of table `engine4_group_topicwatches`
--

DROP TABLE IF EXISTS `engine4_group_topicwatches`;
CREATE TABLE `engine4_group_topicwatches` (
  `resource_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `watch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`resource_id`,`topic_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_topicwatches`
--

/*!40000 ALTER TABLE `engine4_group_topicwatches` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_group_topicwatches` ENABLE KEYS */;


--
-- Definition of table `engine4_invites`
--

DROP TABLE IF EXISTS `engine4_invites`;
CREATE TABLE `engine4_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `new_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_invites`
--

/*!40000 ALTER TABLE `engine4_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_invites` ENABLE KEYS */;


--
-- Definition of table `engine4_messages_conversations`
--

DROP TABLE IF EXISTS `engine4_messages_conversations`;
CREATE TABLE `engine4_messages_conversations` (
  `conversation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) unsigned NOT NULL,
  `recipients` int(11) unsigned NOT NULL,
  `modified` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `resource_type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `resource_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_messages_conversations`
--

/*!40000 ALTER TABLE `engine4_messages_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_messages_conversations` ENABLE KEYS */;


--
-- Definition of table `engine4_messages_messages`
--

DROP TABLE IF EXISTS `engine4_messages_messages`;
CREATE TABLE `engine4_messages_messages` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `attachment_type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT '',
  `attachment_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `CONVERSATIONS` (`conversation_id`,`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_messages_messages`
--

/*!40000 ALTER TABLE `engine4_messages_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_messages_messages` ENABLE KEYS */;


--
-- Definition of table `engine4_messages_recipients`
--

DROP TABLE IF EXISTS `engine4_messages_recipients`;
CREATE TABLE `engine4_messages_recipients` (
  `user_id` int(11) unsigned NOT NULL,
  `conversation_id` int(11) unsigned NOT NULL,
  `inbox_message_id` int(11) unsigned DEFAULT NULL,
  `inbox_updated` datetime DEFAULT NULL,
  `inbox_read` tinyint(1) DEFAULT NULL,
  `inbox_deleted` tinyint(1) DEFAULT NULL,
  `outbox_message_id` int(11) unsigned DEFAULT NULL,
  `outbox_updated` datetime DEFAULT NULL,
  `outbox_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`conversation_id`),
  KEY `INBOX_UPDATED` (`user_id`,`conversation_id`,`inbox_updated`),
  KEY `OUTBOX_UPDATED` (`user_id`,`conversation_id`,`outbox_updated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_messages_recipients`
--

/*!40000 ALTER TABLE `engine4_messages_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_messages_recipients` ENABLE KEYS */;


--
-- Definition of table `engine4_network_membership`
--

DROP TABLE IF EXISTS `engine4_network_membership`;
CREATE TABLE `engine4_network_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`resource_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_network_membership`
--

/*!40000 ALTER TABLE `engine4_network_membership` DISABLE KEYS */;
INSERT INTO `engine4_network_membership` (`resource_id`,`user_id`,`active`,`resource_approved`,`user_approved`) VALUES 
 (8,6,1,1,1),
 (8,644538342,1,1,1),
 (8,787906286,1,1,1),
 (8,806665847,1,1,1),
 (8,1165849088,1,1,1),
 (8,1519581937,1,1,1),
 (8,1680664888,1,1,1),
 (8,1826907472,1,1,1),
 (8,1884272687,1,1,1),
 (8,2036342406,1,1,1),
 (9,1826907472,1,1,1),
 (10,976972162,1,1,1),
 (11,1165849088,1,1,1),
 (12,1542221578,1,1,1),
 (13,673259212,1,1,1),
 (14,6,1,1,1),
 (14,787906286,1,1,1),
 (15,1173216455,1,1,1);
/*!40000 ALTER TABLE `engine4_network_membership` ENABLE KEYS */;


--
-- Definition of table `engine4_network_networks`
--

DROP TABLE IF EXISTS `engine4_network_networks`;
CREATE TABLE `engine4_network_networks` (
  `network_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pattern` text COLLATE utf8_unicode_ci,
  `member_count` int(11) unsigned NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `assignment` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`network_id`),
  KEY `assignment` (`assignment`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_network_networks`
--

/*!40000 ALTER TABLE `engine4_network_networks` DISABLE KEYS */;
INSERT INTO `engine4_network_networks` (`network_id`,`title`,`description`,`field_id`,`pattern`,`member_count`,`hide`,`assignment`) VALUES 
 (8,'11 Smack','',0,NULL,10,0,2),
 (9,'11 Metro','',0,NULL,1,0,2),
 (10,'12 Smack','',0,NULL,1,0,2),
 (11,'12 National','',0,NULL,1,0,2),
 (12,'12 Metro (K. Wilson)','',0,NULL,1,0,2),
 (13,'15 Smack','',0,NULL,1,0,2),
 (14,'17 Smack','',0,NULL,2,0,2),
 (15,'16 Smack','',0,NULL,1,0,2);
/*!40000 ALTER TABLE `engine4_network_networks` ENABLE KEYS */;


--
-- Definition of table `engine4_payment_gateways`
--

DROP TABLE IF EXISTS `engine4_payment_gateways`;
CREATE TABLE `engine4_payment_gateways` (
  `gateway_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `config` mediumblob,
  `test_mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gateway_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_payment_gateways`
--

/*!40000 ALTER TABLE `engine4_payment_gateways` DISABLE KEYS */;
INSERT INTO `engine4_payment_gateways` (`gateway_id`,`title`,`description`,`enabled`,`plugin`,`config`,`test_mode`) VALUES 
 (1,'2Checkout',NULL,0,'Payment_Plugin_Gateway_2Checkout',NULL,0),
 (2,'PayPal',NULL,0,'Payment_Plugin_Gateway_PayPal',NULL,0),
 (3,'Testing',NULL,0,'Payment_Plugin_Gateway_Testing',NULL,1);
/*!40000 ALTER TABLE `engine4_payment_gateways` ENABLE KEYS */;


--
-- Definition of table `engine4_payment_orders`
--

DROP TABLE IF EXISTS `engine4_payment_orders`;
CREATE TABLE `engine4_payment_orders` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `gateway_id` int(10) unsigned NOT NULL,
  `gateway_order_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gateway_transaction_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `state` enum('pending','cancelled','failed','incomplete','complete') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'pending',
  `creation_date` datetime NOT NULL,
  `source_type` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `source_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `gateway_id` (`gateway_id`,`gateway_order_id`),
  KEY `state` (`state`),
  KEY `source_type` (`source_type`,`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_payment_orders`
--

/*!40000 ALTER TABLE `engine4_payment_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_payment_orders` ENABLE KEYS */;


--
-- Definition of table `engine4_payment_packages`
--

DROP TABLE IF EXISTS `engine4_payment_packages`;
CREATE TABLE `engine4_payment_packages` (
  `package_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `level_id` int(10) unsigned NOT NULL,
  `downgrade_level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(16,2) unsigned NOT NULL,
  `recurrence` int(11) unsigned NOT NULL,
  `recurrence_type` enum('day','week','month','year','forever') COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) unsigned NOT NULL,
  `duration_type` enum('day','week','month','year','forever') COLLATE utf8_unicode_ci NOT NULL,
  `trial_duration` int(11) unsigned NOT NULL DEFAULT '0',
  `trial_duration_type` enum('day','week','month','year','forever') COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `signup` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`),
  KEY `level_id` (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_payment_packages`
--

/*!40000 ALTER TABLE `engine4_payment_packages` DISABLE KEYS */;
INSERT INTO `engine4_payment_packages` (`package_id`,`title`,`description`,`level_id`,`downgrade_level_id`,`price`,`recurrence`,`recurrence_type`,`duration`,`duration_type`,`trial_duration`,`trial_duration_type`,`enabled`,`signup`,`default`) VALUES 
 (1,'Paul created','Paul created this package',1,1,'10.00',1,'day',0,'',0,'',1,1,0);
/*!40000 ALTER TABLE `engine4_payment_packages` ENABLE KEYS */;


--
-- Definition of table `engine4_payment_products`
--

DROP TABLE IF EXISTS `engine4_payment_products`;
CREATE TABLE `engine4_payment_products` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension_type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `extension_id` int(10) unsigned DEFAULT NULL,
  `sku` bigint(20) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(16,2) unsigned NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `extension_type` (`extension_type`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_payment_products`
--

/*!40000 ALTER TABLE `engine4_payment_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_payment_products` ENABLE KEYS */;


--
-- Definition of table `engine4_payment_subscriptions`
--

DROP TABLE IF EXISTS `engine4_payment_subscriptions`;
CREATE TABLE `engine4_payment_subscriptions` (
  `subscription_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `package_id` int(11) unsigned NOT NULL,
  `status` enum('initial','trial','pending','active','cancelled','expired','overdue','refunded') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'initial',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `gateway_id` int(10) unsigned DEFAULT NULL,
  `gateway_profile_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  UNIQUE KEY `gateway_id` (`gateway_id`,`gateway_profile_id`),
  KEY `user_id` (`user_id`),
  KEY `package_id` (`package_id`),
  KEY `status` (`status`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_payment_subscriptions`
--

/*!40000 ALTER TABLE `engine4_payment_subscriptions` DISABLE KEYS */;
INSERT INTO `engine4_payment_subscriptions` (`subscription_id`,`user_id`,`package_id`,`status`,`active`,`creation_date`,`modified_date`,`payment_date`,`expiration_date`,`notes`,`gateway_id`,`gateway_profile_id`) VALUES 
 (1,11,1,'initial',0,'2012-01-25 14:56:02','2012-01-25 14:56:02',NULL,NULL,NULL,NULL,NULL),
 (2,962724476,1,'initial',0,'2012-01-25 19:37:00','2012-01-25 19:37:00',NULL,NULL,NULL,NULL,NULL),
 (3,1365141341,1,'initial',0,'2012-01-25 19:45:38','2012-01-25 19:45:38',NULL,NULL,NULL,NULL,NULL),
 (4,1365141342,1,'initial',0,'2012-01-25 20:11:12','2012-01-25 20:11:12',NULL,NULL,NULL,NULL,NULL),
 (5,1365141343,1,'initial',0,'2012-01-25 20:13:54','2012-01-25 20:13:54',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `engine4_payment_subscriptions` ENABLE KEYS */;


--
-- Definition of table `engine4_payment_transactions`
--

DROP TABLE IF EXISTS `engine4_payment_transactions`;
CREATE TABLE `engine4_payment_transactions` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_id` int(10) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `state` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gateway_transaction_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gateway_parent_transaction_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gateway_order_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL,
  `currency` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  KEY `gateway_id` (`gateway_id`),
  KEY `type` (`type`),
  KEY `state` (`state`),
  KEY `gateway_transaction_id` (`gateway_transaction_id`),
  KEY `gateway_parent_transaction_id` (`gateway_parent_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_payment_transactions`
--

/*!40000 ALTER TABLE `engine4_payment_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_payment_transactions` ENABLE KEYS */;


--
-- Definition of table `engine4_storage_chunks`
--

DROP TABLE IF EXISTS `engine4_storage_chunks`;
CREATE TABLE `engine4_storage_chunks` (
  `chunk_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) unsigned NOT NULL,
  `data` blob NOT NULL,
  PRIMARY KEY (`chunk_id`),
  KEY `file_id` (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_storage_chunks`
--

/*!40000 ALTER TABLE `engine4_storage_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_storage_chunks` ENABLE KEYS */;


--
-- Definition of table `engine4_storage_files`
--

DROP TABLE IF EXISTS `engine4_storage_files`;
CREATE TABLE `engine4_storage_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_file_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_type` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `service_id` int(10) unsigned NOT NULL DEFAULT '1',
  `storage_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_major` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `mime_minor` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `hash` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `parent_file_id` (`parent_file_id`,`type`),
  KEY `PARENT` (`parent_type`,`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_storage_files`
--

/*!40000 ALTER TABLE `engine4_storage_files` DISABLE KEYS */;
INSERT INTO `engine4_storage_files` (`file_id`,`parent_file_id`,`type`,`parent_type`,`parent_id`,`user_id`,`creation_date`,`modified_date`,`service_id`,`storage_path`,`extension`,`name`,`mime_major`,`mime_minor`,`size`,`hash`) VALUES 
 (1,NULL,NULL,'temporary',1,NULL,'2012-01-23 22:54:57','2012-01-23 22:54:57',1,'public/temporary/01/0001_a670.png','png','m_12.png','image','png',79284,'e70ba670aac6c914c566acd91479f438'),
 (2,1,'thumb.profile','temporary',1,NULL,'2012-01-23 22:54:57','2012-01-23 22:54:57',1,'public/temporary/02/0002_28f5.png','png','p_12.png','image','png',4419,'fd3928f5b46167f4d5ed26e68691a915'),
 (3,1,'thumb.normal','temporary',1,NULL,'2012-01-23 22:54:57','2012-01-23 22:54:57',1,'public/temporary/03/0003_44cb.png','png','n_12.png','image','png',233,'74de44cb92a613b5b65f1f92491ccebf'),
 (4,1,'thumb.icon','temporary',1,NULL,'2012-01-23 22:54:57','2012-01-23 22:54:57',1,'public/temporary/04/0004_2bd9.png','png','s_12.png','image','png',317,'49ab2bd9b967e4dcb8e932a9475584c8'),
 (5,NULL,NULL,'user',8,NULL,'2012-01-23 23:09:47','2012-01-23 23:09:47',1,'public/user/05/0005_677a.png','png','m_1.png','image','png',77019,'5301677a5961b96e6237dce88c5085ce'),
 (6,5,'thumb.profile','user',8,NULL,'2012-01-23 23:09:47','2012-01-23 23:09:47',1,'public/user/06/0006_610d.png','png','p_1.png','image','png',9050,'b4a3610dac26aecc4ea554bac856ba30'),
 (7,5,'thumb.normal','user',8,NULL,'2012-01-23 23:09:47','2012-01-23 23:09:47',1,'public/user/07/0007_a3b0.png','png','n_1.png','image','png',712,'f25aa3b0e5aabb478bfb3f2f57648ac3'),
 (8,5,'thumb.icon','user',8,NULL,'2012-01-23 23:09:47','2012-01-23 23:09:47',1,'public/user/08/0008_7b07.png','png','s_1.png','image','png',250,'5ff67b07134a4636f4681d91900cbfb8'),
 (9,NULL,NULL,'user',9,NULL,'2012-01-24 00:53:22','2012-01-24 00:53:22',1,'public/user/09/0009_677a.png','png','m_1.png','image','png',77019,'5301677a5961b96e6237dce88c5085ce'),
 (10,9,'thumb.profile','user',9,NULL,'2012-01-24 00:53:22','2012-01-24 00:53:22',1,'public/user/0a/000a_610d.png','png','p_1.png','image','png',9050,'b4a3610dac26aecc4ea554bac856ba30'),
 (11,9,'thumb.normal','user',9,NULL,'2012-01-24 00:53:22','2012-01-24 00:53:22',1,'public/user/0b/000b_a3b0.png','png','n_1.png','image','png',712,'f25aa3b0e5aabb478bfb3f2f57648ac3'),
 (12,9,'thumb.icon','user',9,9,'2012-01-24 00:53:22','2012-01-24 00:53:22',1,'public/user/0c/000c_2e3b.png','png','nis_000a_610d.png','image','png',3222,'66dc2e3b16df2f7e632d2d94526d92a5'),
 (13,NULL,NULL,'user',962724476,NULL,'2012-01-25 19:36:20','2012-01-25 19:36:20',1,'public/user/0d/000d_6d4a.jpg','jpg','m_1168664-2  - Copy.jpg','image','jpeg',7007,'e7cd6d4a02b91131eb3034b5a0bfb09f'),
 (14,13,'thumb.profile','user',962724476,NULL,'2012-01-25 19:36:20','2012-01-25 19:36:20',1,'public/user/0e/000e_d377.jpg','jpg','p_1168664-2  - Copy.jpg','image','jpeg',5810,'cf37d37736c428ff92ba3666fadf4e69'),
 (15,13,'thumb.normal','user',962724476,NULL,'2012-01-25 19:36:20','2012-01-25 19:36:20',1,'public/user/0f/000f_a7fb.jpg','jpg','n_1168664-2  - Copy.jpg','image','jpeg',1333,'2047a7fb151eda10c74594348e004730'),
 (16,13,'thumb.icon','user',962724476,962724476,'2012-01-25 19:36:20','2012-01-25 19:36:20',1,'public/user/10/0010_4f8f.jpg','jpg','nis_000e_d377.jpg','image','jpeg',1232,'19054f8feb18c18131a0f19e57230dae'),
 (17,NULL,NULL,'user',1542221578,NULL,'2012-01-27 17:04:42','2012-01-27 17:04:42',1,'public/user/11/0011_677a.png','png','m_1.png','image','png',77019,'5301677a5961b96e6237dce88c5085ce'),
 (18,17,'thumb.profile','user',1542221578,NULL,'2012-01-27 17:04:42','2012-01-27 17:04:42',1,'public/user/12/0012_610d.png','png','p_1.png','image','png',9050,'b4a3610dac26aecc4ea554bac856ba30'),
 (19,17,'thumb.normal','user',1542221578,NULL,'2012-01-27 17:04:42','2012-01-27 17:04:42',1,'public/user/13/0013_a3b0.png','png','n_1.png','image','png',712,'f25aa3b0e5aabb478bfb3f2f57648ac3'),
 (20,17,'thumb.icon','user',1542221578,1542221578,'2012-01-27 17:04:42','2012-01-27 17:04:42',1,'public/user/14/0014_6e20.png','png','nis_0012_610d.png','image','png',3817,'89946e20351684f230b920faafb4dd2a'),
 (21,NULL,NULL,'user',1542221578,1542221578,'2012-01-27 17:36:20','2012-01-27 17:36:20',1,'public/user/15/0015_71b8.png','png','Untitled_m.png','image','png',94503,'728f71b8b1591abd4d532152196c1348'),
 (22,21,'thumb.profile','user',1542221578,1542221578,'2012-01-27 17:36:20','2012-01-27 17:36:20',1,'public/user/16/0016_2e06.png','png','Untitled_p.png','image','png',14786,'686d2e06634e17e87999c569456cab85'),
 (23,21,'thumb.normal','user',1542221578,1542221578,'2012-01-27 17:36:20','2012-01-27 17:36:20',1,'public/user/17/0017_7422.png','png','Untitled_in.png','image','png',8063,'2daa7422061e35c5d0534cc3981bca65'),
 (24,21,'thumb.icon','user',1542221578,1542221578,'2012-01-27 17:36:20','2012-01-27 17:36:20',1,'public/user/18/0018_e647.png','png','Untitled_is.png','image','png',2095,'46f5e6474ee6942af7bd8ac30020a113');
/*!40000 ALTER TABLE `engine4_storage_files` ENABLE KEYS */;


--
-- Definition of table `engine4_storage_mirrors`
--

DROP TABLE IF EXISTS `engine4_storage_mirrors`;
CREATE TABLE `engine4_storage_mirrors` (
  `file_id` bigint(20) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`file_id`,`service_id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_storage_mirrors`
--

/*!40000 ALTER TABLE `engine4_storage_mirrors` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_storage_mirrors` ENABLE KEYS */;


--
-- Definition of table `engine4_storage_services`
--

DROP TABLE IF EXISTS `engine4_storage_services`;
CREATE TABLE `engine4_storage_services` (
  `service_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `servicetype_id` int(10) unsigned NOT NULL,
  `config` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_storage_services`
--

/*!40000 ALTER TABLE `engine4_storage_services` DISABLE KEYS */;
INSERT INTO `engine4_storage_services` (`service_id`,`servicetype_id`,`config`,`enabled`,`default`) VALUES 
 (1,1,NULL,1,1);
/*!40000 ALTER TABLE `engine4_storage_services` ENABLE KEYS */;


--
-- Definition of table `engine4_storage_servicetypes`
--

DROP TABLE IF EXISTS `engine4_storage_servicetypes`;
CREATE TABLE `engine4_storage_servicetypes` (
  `servicetype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `plugin` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `form` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`servicetype_id`),
  UNIQUE KEY `plugin` (`plugin`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_storage_servicetypes`
--

/*!40000 ALTER TABLE `engine4_storage_servicetypes` DISABLE KEYS */;
INSERT INTO `engine4_storage_servicetypes` (`servicetype_id`,`title`,`plugin`,`form`,`enabled`) VALUES 
 (1,'Local Storage','Storage_Service_Local','Storage_Form_Admin_Service_Local',1),
 (2,'Database Storage','Storage_Service_Db','Storage_Form_Admin_Service_Db',0),
 (3,'Amazon S3','Storage_Service_S3','Storage_Form_Admin_Service_S3',1),
 (4,'Virtual File System','Storage_Service_Vfs','Storage_Form_Admin_Service_Vfs',1),
 (5,'Round-Robin','Storage_Service_RoundRobin','Storage_Form_Admin_Service_RoundRobin',0),
 (6,'Mirrored','Storage_Service_Mirrored','Storage_Form_Admin_Service_Mirrored',0);
/*!40000 ALTER TABLE `engine4_storage_servicetypes` ENABLE KEYS */;


--
-- Definition of table `engine4_user_block`
--

DROP TABLE IF EXISTS `engine4_user_block`;
CREATE TABLE `engine4_user_block` (
  `user_id` int(11) unsigned NOT NULL,
  `blocked_user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`blocked_user_id`),
  KEY `REVERSE` (`blocked_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_block`
--

/*!40000 ALTER TABLE `engine4_user_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_block` ENABLE KEYS */;


--
-- Definition of table `engine4_user_facebook`
--

DROP TABLE IF EXISTS `engine4_user_facebook`;
CREATE TABLE `engine4_user_facebook` (
  `user_id` int(11) unsigned NOT NULL,
  `facebook_uid` bigint(20) unsigned NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `facebook_uid` (`facebook_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_facebook`
--

/*!40000 ALTER TABLE `engine4_user_facebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_facebook` ENABLE KEYS */;


--
-- Definition of table `engine4_user_fields_maps`
--

DROP TABLE IF EXISTS `engine4_user_fields_maps`;
CREATE TABLE `engine4_user_fields_maps` (
  `field_id` int(11) unsigned NOT NULL,
  `option_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  `order` smallint(6) NOT NULL,
  PRIMARY KEY (`field_id`,`option_id`,`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_maps`
--

/*!40000 ALTER TABLE `engine4_user_fields_maps` DISABLE KEYS */;
INSERT INTO `engine4_user_fields_maps` (`field_id`,`option_id`,`child_id`,`order`) VALUES 
 (0,0,1,1),
 (1,1,2,1),
 (1,1,3,2),
 (1,1,4,3),
 (1,1,5,4),
 (1,1,6,5),
 (1,1,7,6),
 (1,1,8,7),
 (1,1,9,8),
 (1,1,10,9),
 (1,1,11,10),
 (1,1,12,11),
 (1,1,13,12),
 (1,4,0,9999),
 (1,4,14,1),
 (1,4,15,5),
 (1,4,16,6),
 (1,4,17,7),
 (1,4,18,8),
 (1,4,19,9),
 (1,4,20,10),
 (1,4,21,11),
 (1,4,22,12),
 (1,4,23,13),
 (1,4,24,14),
 (1,4,25,15),
 (1,4,26,2),
 (1,4,27,3),
 (1,4,31,4),
 (1,8,28,1),
 (1,8,29,2),
 (1,8,30,3);
/*!40000 ALTER TABLE `engine4_user_fields_maps` ENABLE KEYS */;


--
-- Definition of table `engine4_user_fields_meta`
--

DROP TABLE IF EXISTS `engine4_user_fields_meta`;
CREATE TABLE `engine4_user_fields_meta` (
  `field_id` int(11) unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `display` tinyint(1) unsigned NOT NULL,
  `publish` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `order` smallint(3) unsigned NOT NULL DEFAULT '999',
  `config` text COLLATE utf8_unicode_ci,
  `validators` text COLLATE utf8_unicode_ci,
  `filters` text COLLATE utf8_unicode_ci,
  `style` text COLLATE utf8_unicode_ci,
  `error` text COLLATE utf8_unicode_ci,
  `manage_edit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_meta`
--

/*!40000 ALTER TABLE `engine4_user_fields_meta` DISABLE KEYS */;
INSERT INTO `engine4_user_fields_meta` (`field_id`,`type`,`label`,`description`,`alias`,`required`,`display`,`publish`,`search`,`show`,`order`,`config`,`validators`,`filters`,`style`,`error`,`manage_edit`) VALUES 
 (0,'text','Team','','',1,1,0,0,1,999,'[]',NULL,NULL,'','',1),
 (1,'profile_type','Profile Type','','profile_type',1,0,0,2,1,999,'',NULL,NULL,NULL,NULL,0),
 (2,'heading','Personal Information','','first_name',0,1,0,0,1,999,'[]',NULL,NULL,'','',0),
 (3,'first_name','First Name','','first_name',1,1,0,2,1,999,'[]','[[\"StringLength\",false,[1,32]]]',NULL,'','',0),
 (4,'last_name','Last Name','','last_name',1,1,0,2,1,999,'[]','[[\"StringLength\",false,[1,32]]]',NULL,'','',0),
 (5,'gender','Gender','','gender',0,1,0,1,1,999,'[]',NULL,NULL,'','',0),
 (6,'birthdate','Birthday','','birthdate',0,1,0,1,1,999,'{\"min_age\":\"\"}',NULL,NULL,'','',0),
 (7,'heading','Contact Information','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (8,'website','Website','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (9,'twitter','Twitter','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (10,'facebook','Facebook','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (11,'aim','AIM','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (12,'heading','Personal Details','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (13,'about_me','About Me','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (14,'heading','Information','','',0,1,0,0,1,999,'{\"submit\":\"\"}',NULL,NULL,NULL,NULL,0),
 (15,'text','Number','','',1,1,0,1,1,999,'[]',NULL,NULL,'','',0),
 (16,'text','Position','','',1,1,0,1,1,999,'[]',NULL,NULL,'','',0),
 (17,'text','Height:','','',0,1,0,1,1,999,'[]',NULL,NULL,'','',0),
 (18,'text','Graduation Year','','',1,1,0,1,1,999,'[]',NULL,NULL,'','',0),
 (19,'select','Committed','','',1,1,0,0,1,999,'[]',NULL,NULL,'','',0),
 (20,'heading','15-18\'s Only','','',0,1,0,0,1,999,'{\"submit\":\"\"}',NULL,NULL,NULL,NULL,0),
 (21,'text','Standing Reach','','',0,2,0,0,1,999,'[]',NULL,NULL,'','',0),
 (22,'text','Block Reach','','',0,2,0,0,1,999,'[]',NULL,NULL,'','',0),
 (23,'text','Approach Reach','','',0,2,0,0,1,999,'[]',NULL,NULL,'','',0),
 (24,'textarea','Volleyball Experience','','',0,2,0,0,1,999,'[]',NULL,NULL,'','',0),
 (25,'textarea','Achievements and Honors','','',0,2,0,0,1,999,'[]',NULL,NULL,'','',0),
 (26,'first_name','First Name','','first_name',1,1,0,1,1,999,'[]',NULL,NULL,'','',0),
 (27,'last_name','Last Name','','',0,1,0,0,1,999,'',NULL,NULL,NULL,NULL,0),
 (29,'first_name','First Name','','first_name',0,1,0,0,1,999,'[]',NULL,NULL,'','',0),
 (30,'last_name','Last Name','','last_name',0,1,0,0,1,999,'[]',NULL,NULL,'','',0),
 (31,'select','Team','','',1,1,0,0,1,999,'[]',NULL,NULL,'','',0);
/*!40000 ALTER TABLE `engine4_user_fields_meta` ENABLE KEYS */;


--
-- Definition of table `engine4_user_fields_options`
--

DROP TABLE IF EXISTS `engine4_user_fields_options`;
CREATE TABLE `engine4_user_fields_options` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '999',
  PRIMARY KEY (`option_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_options`
--

/*!40000 ALTER TABLE `engine4_user_fields_options` DISABLE KEYS */;
INSERT INTO `engine4_user_fields_options` (`option_id`,`field_id`,`label`,`order`) VALUES 
 (1,1,'Regular Member',1),
 (2,5,'Male',1),
 (3,5,'Female',2),
 (4,1,'Player',2),
 (5,19,'Yes',4),
 (6,19,'No',5),
 (7,19,'',6),
 (8,1,'Coach',3),
 (10,31,'11 Smack',1),
 (11,31,'12 Smack',2),
 (12,31,'13 Smack',3);
/*!40000 ALTER TABLE `engine4_user_fields_options` ENABLE KEYS */;


--
-- Definition of table `engine4_user_fields_search`
--

DROP TABLE IF EXISTS `engine4_user_fields_search`;
CREATE TABLE `engine4_user_fields_search` (
  `item_id` int(11) unsigned NOT NULL,
  `profile_type` enum('1','4','8','9') COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('2','3') COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `field_15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_16` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_17` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_18` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `field_17` (`field_17`),
  KEY `field_15` (`field_15`),
  KEY `field_16` (`field_16`),
  KEY `field_18` (`field_18`),
  KEY `profile_type` (`profile_type`),
  KEY `gender` (`gender`),
  KEY `birthdate` (`birthdate`),
  KEY `last_name` (`last_name`),
  KEY `first_name` (`first_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_search`
--

/*!40000 ALTER TABLE `engine4_user_fields_search` DISABLE KEYS */;
INSERT INTO `engine4_user_fields_search` (`item_id`,`profile_type`,`first_name`,`last_name`,`gender`,`birthdate`,`field_15`,`field_16`,`field_17`,`field_18`) VALUES 
 (6,'1','Admin','2','2','2000-01-01',NULL,NULL,NULL,NULL),
 (7,'1','aa','aa','2','2000-01-01',NULL,NULL,NULL,NULL),
 (8,'1','a','aa','2','2000-01-01',NULL,NULL,NULL,NULL),
 (9,'1','a','a','2','2000-02-01',NULL,NULL,NULL,NULL),
 (11,'1','a','a','3','2000-01-01',NULL,NULL,NULL,NULL),
 (90665149,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (144946255,'1','ax','ax','2','2000-01-01',NULL,NULL,NULL,NULL),
 (370267116,'1','00000000','asdf',NULL,NULL,NULL,NULL,NULL,NULL),
 (644538342,'1','aa','b','2',NULL,NULL,NULL,NULL,NULL),
 (673259212,'8','b','b',NULL,NULL,NULL,NULL,NULL,NULL),
 (787906286,'8','1','1',NULL,NULL,NULL,NULL,NULL,NULL),
 (806665847,'1','asdf','asdf',NULL,NULL,NULL,NULL,NULL,NULL),
 (962724476,'1','a','a','2','2000-01-01',NULL,NULL,NULL,NULL),
 (976972162,'1','adf','32323232','2','1999-01-02',NULL,NULL,NULL,NULL),
 (1165849088,'4','123',NULL,NULL,NULL,'23','23','32','13'),
 (1173216455,'1','000999000','00999900',NULL,NULL,NULL,NULL,NULL,NULL),
 (1365141341,'1','2','2',NULL,NULL,NULL,NULL,NULL,NULL),
 (1365141342,'1','x','4',NULL,NULL,NULL,NULL,NULL,NULL),
 (1365141343,'1','a','b',NULL,NULL,NULL,NULL,NULL,NULL),
 (1378354621,'1','aa','asdf','2','2000-01-01',NULL,NULL,NULL,NULL),
 (1454445489,'8','asdf','asdf',NULL,NULL,NULL,NULL,NULL,NULL),
 (1519581937,'1','asdfasdf','asdf','2','2000-01-01',NULL,NULL,NULL,NULL),
 (1542221578,'8','abb','ccc23423423',NULL,NULL,NULL,NULL,NULL,NULL),
 (1617777672,'1','asdfasdf','asdf','2',NULL,NULL,NULL,NULL,NULL),
 (1680664888,'1','b','b',NULL,NULL,NULL,NULL,NULL,NULL),
 (1720049785,'8','adf','asdf',NULL,NULL,NULL,NULL,NULL,NULL),
 (1826907472,'1','x33vvvvvv','x55','3','2000-01-01',NULL,NULL,NULL,NULL),
 (1884272687,'1','asdfasdf','asdfsadf','2','2000-01-01',NULL,NULL,NULL,NULL),
 (1897958929,'1','asdf','asdf','2',NULL,NULL,NULL,NULL,NULL),
 (2036342406,'1','a','b',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `engine4_user_fields_search` ENABLE KEYS */;


--
-- Definition of table `engine4_user_fields_values`
--

DROP TABLE IF EXISTS `engine4_user_fields_values`;
CREATE TABLE `engine4_user_fields_values` (
  `item_id` int(11) unsigned NOT NULL,
  `field_id` int(11) unsigned NOT NULL,
  `index` smallint(3) unsigned NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`,`field_id`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_values`
--

/*!40000 ALTER TABLE `engine4_user_fields_values` DISABLE KEYS */;
INSERT INTO `engine4_user_fields_values` (`item_id`,`field_id`,`index`,`value`) VALUES 
 (6,1,0,'1'),
 (6,3,0,'Admin'),
 (6,4,0,'2'),
 (6,5,0,'2'),
 (6,6,0,'2000-1-1'),
 (6,11,0,'to be a good player'),
 (6,300,0,'123123aa'),
 (7,1,0,'1'),
 (7,3,0,'aa'),
 (7,4,0,'aa'),
 (7,5,0,'2'),
 (7,6,0,'2000-1-1'),
 (7,8,0,'aa'),
 (7,9,0,'aa'),
 (7,10,0,'aa'),
 (7,11,0,'aa'),
 (7,13,0,'aa'),
 (8,1,0,'1'),
 (8,3,0,'a'),
 (8,4,0,'aa'),
 (8,5,0,'2'),
 (8,6,0,'2000-1-1'),
 (8,8,0,'a'),
 (8,9,0,'a'),
 (8,10,0,'a'),
 (8,11,0,'a'),
 (8,13,0,'a'),
 (9,1,0,'1'),
 (9,3,0,'a'),
 (9,4,0,'a'),
 (9,5,0,'2'),
 (9,6,0,'2000-2-1'),
 (9,13,0,'adsf'),
 (11,1,0,'1'),
 (11,3,0,'a'),
 (11,4,0,'a'),
 (11,5,0,'3'),
 (11,6,0,'2000-1-1'),
 (11,8,0,'a'),
 (11,9,0,'a'),
 (11,10,0,'a'),
 (11,11,0,'a'),
 (11,13,0,'a'),
 (90665149,1,0,'8'),
 (144946255,1,0,'1'),
 (144946255,3,0,'ax'),
 (144946255,4,0,'ax'),
 (144946255,5,0,'2'),
 (144946255,6,0,'2000-1-1'),
 (370267116,1,0,'1'),
 (370267116,3,0,'00000000'),
 (370267116,4,0,'asdf'),
 (644538342,1,0,'1'),
 (644538342,3,0,'aa'),
 (644538342,4,0,'b'),
 (644538342,5,0,'2'),
 (673259212,1,0,'8'),
 (673259212,29,0,'b'),
 (673259212,30,0,'b'),
 (787906286,1,0,'8'),
 (787906286,29,0,'1'),
 (787906286,30,0,'1'),
 (806665847,1,0,'1'),
 (806665847,3,0,'asdf'),
 (806665847,4,0,'asdf'),
 (962724476,1,0,'1'),
 (962724476,3,0,'a'),
 (962724476,4,0,'a'),
 (962724476,5,0,'2'),
 (962724476,6,0,'2000-1-1'),
 (962724476,8,0,'l'),
 (962724476,9,0,'l'),
 (962724476,10,0,'l'),
 (962724476,11,0,'2'),
 (962724476,13,0,'l'),
 (976972162,1,0,'1'),
 (976972162,3,0,'adf'),
 (976972162,4,0,'32323232'),
 (976972162,5,0,'2'),
 (976972162,6,0,'1999-1-2'),
 (1165849088,1,0,'4'),
 (1165849088,15,0,'23'),
 (1165849088,16,0,'23'),
 (1165849088,17,0,'32'),
 (1165849088,18,0,'13'),
 (1165849088,19,0,'5'),
 (1165849088,21,0,'323'),
 (1165849088,22,0,'2'),
 (1165849088,24,0,'23'),
 (1165849088,25,0,'23'),
 (1165849088,26,0,'123'),
 (1165849088,27,0,'23'),
 (1165849088,31,0,'10'),
 (1173216455,1,0,'1'),
 (1173216455,3,0,'000999000'),
 (1173216455,4,0,'00999900'),
 (1365141341,1,0,'1'),
 (1365141341,3,0,'2'),
 (1365141341,4,0,'2'),
 (1365141342,1,0,'1'),
 (1365141342,3,0,'x'),
 (1365141342,4,0,'4'),
 (1365141343,1,0,'1'),
 (1365141343,3,0,'a'),
 (1365141343,4,0,'b'),
 (1378354621,1,0,'1'),
 (1378354621,3,0,'aa'),
 (1378354621,4,0,'asdf'),
 (1378354621,5,0,'2'),
 (1378354621,6,0,'2000-1-1'),
 (1378354621,10,0,'http://twitter.com/?id=234'),
 (1454445489,1,0,'8'),
 (1454445489,29,0,'asdf'),
 (1454445489,30,0,'asdf'),
 (1519581937,1,0,'1'),
 (1519581937,3,0,'asdfasdf'),
 (1519581937,4,0,'asdf'),
 (1519581937,5,0,'2'),
 (1519581937,6,0,'2000-1-1'),
 (1542221578,1,0,'8'),
 (1542221578,29,0,'abb'),
 (1542221578,30,0,'ccc23423423'),
 (1617777672,1,0,'1'),
 (1617777672,3,0,'asdfasdf'),
 (1617777672,4,0,'asdf'),
 (1617777672,5,0,'2'),
 (1680664888,1,0,'1'),
 (1680664888,3,0,'b'),
 (1680664888,4,0,'b'),
 (1720049785,1,0,'8'),
 (1720049785,29,0,'adf'),
 (1720049785,30,0,'asdf'),
 (1826907472,1,0,'1'),
 (1826907472,3,0,'x33vvvvvv'),
 (1826907472,4,0,'x55'),
 (1826907472,5,0,'3'),
 (1826907472,6,0,'2000-1-1'),
 (1826907472,8,0,'a'),
 (1826907472,9,0,'l'),
 (1826907472,10,0,'l'),
 (1826907472,11,0,'2'),
 (1826907472,13,0,'sdfasdf\r\n'),
 (1884272687,1,0,'1'),
 (1884272687,3,0,'asdfasdf'),
 (1884272687,4,0,'asdfsadf'),
 (1884272687,5,0,'2'),
 (1884272687,6,0,'2000-1-1'),
 (1897958929,1,0,'1'),
 (1897958929,3,0,'asdf'),
 (1897958929,4,0,'asdf'),
 (1897958929,5,0,'2'),
 (1897958929,13,0,'a23423424123 1234 1234 1234'),
 (2036342406,1,0,'1'),
 (2036342406,3,0,'a'),
 (2036342406,4,0,'b');
/*!40000 ALTER TABLE `engine4_user_fields_values` ENABLE KEYS */;


--
-- Definition of table `engine4_user_forgot`
--

DROP TABLE IF EXISTS `engine4_user_forgot`;
CREATE TABLE `engine4_user_forgot` (
  `user_id` int(11) unsigned NOT NULL,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_forgot`
--

/*!40000 ALTER TABLE `engine4_user_forgot` DISABLE KEYS */;
INSERT INTO `engine4_user_forgot` (`user_id`,`code`,`creation_date`) VALUES 
 (1,'rj1kaxsaym840gcokssckko0','2012-01-30 02:47:43'),
 (6,'eyky22hfoi88ckgogcg04wgkk','2012-01-30 02:47:43'),
 (144946255,'4bk1fcwochc0okw0sw8wgw8kw','2012-01-30 02:47:43'),
 (370267116,'Array','2012-01-29 18:00:36'),
 (644538342,'78x7ht3skcw8wsk4og448040s','2012-01-31 21:27:10'),
 (806665847,'6hv60poum5ssk4ggccc8g00w0','2012-01-30 02:47:43'),
 (1173216455,'5kcovv7hhyckkog4o4kwgc4og','2012-01-31 21:27:11'),
 (1519581937,'6ov9jonvwd8gw88o0484w4ok8','2012-01-31 21:27:11'),
 (1884272687,'7olw5kdjmjgggo4oo4gk40sws','2012-01-31 21:27:11');
/*!40000 ALTER TABLE `engine4_user_forgot` ENABLE KEYS */;


--
-- Definition of table `engine4_user_janrain`
--

DROP TABLE IF EXISTS `engine4_user_janrain`;
CREATE TABLE `engine4_user_janrain` (
  `user_id` int(11) unsigned NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_janrain`
--

/*!40000 ALTER TABLE `engine4_user_janrain` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_janrain` ENABLE KEYS */;


--
-- Definition of table `engine4_user_listitems`
--

DROP TABLE IF EXISTS `engine4_user_listitems`;
CREATE TABLE `engine4_user_listitems` (
  `listitem_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`listitem_id`),
  KEY `list_id` (`list_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_listitems`
--

/*!40000 ALTER TABLE `engine4_user_listitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_listitems` ENABLE KEYS */;


--
-- Definition of table `engine4_user_lists`
--

DROP TABLE IF EXISTS `engine4_user_lists`;
CREATE TABLE `engine4_user_lists` (
  `list_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_id` int(11) unsigned NOT NULL,
  `child_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`list_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_lists`
--

/*!40000 ALTER TABLE `engine4_user_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_lists` ENABLE KEYS */;


--
-- Definition of table `engine4_user_logins`
--

DROP TABLE IF EXISTS `engine4_user_logins`;
CREATE TABLE `engine4_user_logins` (
  `login_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `state` enum('success','no-member','bad-password','disabled','unpaid','third-party','v3-migration','unknown') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'unknown',
  `source` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varbinary(16) NOT NULL,
  `ulogin_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`login_id`) USING BTREE,
  KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_logins`
--

/*!40000 ALTER TABLE `engine4_user_logins` DISABLE KEYS */;
INSERT INTO `engine4_user_logins` (`login_id`,`user_id`,`email`,`timestamp`,`state`,`source`,`active`,`ip`,`ulogin_id`) VALUES 
 (1,1,'christopher@lloydentertainment.com','2012-01-04 23:15:05','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (2,1,'christopher@lloydentertainment.com','2012-01-04 23:26:35','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (3,1,'christopher@lloydentertainment.com','2012-01-04 23:29:37','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (4,1,'christopher@lloydentertainment.com','2012-01-04 23:32:19','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (5,1,'christopher@lloydentertainment.com','2012-01-04 23:38:04','success',NULL,1,0x7FEFA3B7EFA3B7EFA3B7,''),
 (6,1,'christopher@lloydentertainment.com','2012-01-05 00:28:08','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (7,1,'christopher@lloydentertainment.com','2012-01-05 00:34:33','success',NULL,1,0x7FEFA3B7EFA3B7EFA3B7,''),
 (8,1,'christopher@lloydentertainment.com','2012-01-11 20:41:18','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (9,1,'christopher@lloydentertainment.com','2012-01-11 22:36:00','bad-password',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (10,1,'christopher@lloydentertainment.com','2012-01-11 22:36:05','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (11,1,'christopher@lloydentertainment.com','2012-01-11 22:43:10','success',NULL,1,0x7FEFA3B7EFA3B7EFA3B7,''),
 (12,6,'odesk@op2vb.com','2012-01-11 23:59:35','bad-password',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (13,6,'odesk@op2vb.com','2012-01-11 23:59:40','bad-password',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (14,1,'christopher@lloydentertainment.com','2012-01-11 23:59:50','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (15,6,'odesk@op2vb.com','2012-01-12 00:02:07','success',NULL,1,0x7FEFA3B7EFA3B7EFA3B7,''),
 (16,1,'christopher@lloydentertainment.com','2012-01-12 19:38:57','success',NULL,0,0x7FEFA3B7EFA3B7EFA3B7,''),
 (17,6,'odesk@op2vb.com','2012-01-13 01:58:59','success',NULL,1,0x3FEC8F8D,''),
 (18,6,'odesk@op2vb.com','2012-01-18 00:21:19','success',NULL,1,0x3C15EBBBAD,''),
 (19,6,'odesk@op2vb.com','2012-01-18 00:41:32','success',NULL,1,0x3C15EBBBAD,''),
 (20,6,'odesk@op2vb.com','2012-01-18 00:53:56','success',NULL,1,0x3C15EBBBAD,''),
 (21,6,'odesk@op2vb.com','2012-01-18 01:38:21','success',NULL,1,0x3C15EBBBAD,''),
 (22,6,'odesk@op2vb.com','2012-01-18 14:18:55','success',NULL,0,0x3F1E3A,''),
 (23,6,'odesk@op2vb.com','2012-01-18 14:25:48','success',NULL,1,0x3F1E3A,''),
 (24,6,'odesk@op2vb.com','2012-01-18 23:12:43','success',NULL,0,0x7F000001,''),
 (25,6,'odesk@op2vb.com','2012-01-18 23:25:44','success',NULL,1,0x7F000001,''),
 (26,NULL,'odeaks@op2vb.com','2012-01-19 13:21:46','no-member',NULL,0,0x7F000001,''),
 (27,NULL,'odesks@op2vb.com','2012-01-19 13:22:19','no-member',NULL,0,0x7F000001,''),
 (28,6,'odesk@op2vb.com','2012-01-19 13:22:37','success',NULL,1,0x7F000001,''),
 (29,NULL,'odeaks@op2vb.com','2012-01-19 18:02:06','no-member',NULL,0,0x7F000001,''),
 (30,6,'odesk@op2vb.com','2012-01-19 18:02:24','success',NULL,0,0x7F000001,''),
 (31,6,'odesk@op2vb.com','2012-01-19 18:05:41','bad-password',NULL,0,0x7F000001,''),
 (32,6,'odesk@op2vb.com','2012-01-19 18:05:55','success',NULL,1,0x7F000001,''),
 (33,6,'odesk@op2vb.com','2012-01-19 18:07:55','success',NULL,0,0x7F000001,''),
 (34,6,'odesk@op2vb.com','2012-01-19 18:26:11','success',NULL,0,0x7F000001,''),
 (35,NULL,'odeaks@op2vb.com','2012-01-19 20:39:03','no-member',NULL,0,0x7F000001,''),
 (36,6,'odesk@op2vb.com','2012-01-19 20:39:17','success',NULL,0,0x7F000001,''),
 (37,6,'odesk@op2vb.com','2012-01-19 20:56:32','success',NULL,0,0x7F000001,''),
 (38,6,'odesk@op2vb.com','2012-01-19 21:14:08','bad-password',NULL,0,0x7F000001,''),
 (39,6,'odesk@op2vb.com','2012-01-19 21:14:56','success',NULL,0,0x7F000001,''),
 (40,6,'odesk@op2vb.com','2012-01-19 21:16:40','success',NULL,0,0x7F000001,''),
 (41,6,'odesk@op2vb.com','2012-01-19 21:18:02','bad-password',NULL,0,0x7F000001,''),
 (42,6,'odesk@op2vb.com','2012-01-19 21:19:07','bad-password',NULL,0,0x7F000001,''),
 (43,6,'odesk@op2vb.com','2012-01-19 21:20:59','bad-password',NULL,0,0x7F000001,''),
 (44,6,'odesk@op2vb.com','2012-01-19 21:24:02','bad-password',NULL,0,0x7F000001,''),
 (45,6,'odesk@op2vb.com','2012-01-19 21:25:03','bad-password',NULL,0,0x7F000001,''),
 (46,6,'odesk@op2vb.com','2012-01-19 21:25:37','bad-password',NULL,0,0x7F000001,''),
 (47,6,'odesk@op2vb.com','2012-01-19 21:28:48','bad-password',NULL,0,0x7F000001,''),
 (48,6,'odesk@op2vb.com','2012-01-19 21:29:50','bad-password',NULL,0,0x7F000001,''),
 (49,6,'odesk@op2vb.com','2012-01-19 21:31:21','bad-password',NULL,0,0x7F000001,''),
 (50,6,'odesk@op2vb.com','2012-01-19 21:33:02','bad-password',NULL,0,0x7F000001,''),
 (51,6,'odesk@op2vb.com','2012-01-19 21:33:30','bad-password',NULL,0,0x7F000001,''),
 (52,NULL,'odeaks@op2vb.com','2012-01-19 22:25:26','no-member',NULL,0,0x7F000001,''),
 (53,NULL,'odeaks@op2vb.com','2012-01-19 22:26:15','no-member',NULL,0,0x7F000001,''),
 (54,6,'odesk@op2vb.com','2012-01-19 22:26:17','bad-password',NULL,0,0x7F000001,''),
 (55,6,'odesk@op2vb.com','2012-01-19 22:27:33','bad-password',NULL,0,0x7F000001,''),
 (56,6,'odesk@op2vb.com','2012-01-19 22:28:54','bad-password',NULL,0,0x7F000001,''),
 (57,6,'odesk@op2vb.com','2012-01-20 01:02:23','bad-password',NULL,0,0x7F000001,''),
 (58,6,'odesk@op2vb.com','2012-01-20 02:30:27','disabled',NULL,0,0x7F000001,'odesk'),
 (59,6,'odesk@op2vb.com','2012-01-20 03:21:01','disabled',NULL,0,0x7F000001,'odesk'),
 (60,6,'odesk@op2vb.com','2012-01-20 03:23:21','disabled',NULL,0,0x7F000001,'odesk'),
 (61,6,'odesk@op2vb.com','2012-01-20 09:44:56','disabled',NULL,0,0x7F000001,'odesk'),
 (62,6,'odesk@op2vb.com','2012-01-20 18:32:47','disabled',NULL,0,0x7F000001,'odesk'),
 (63,6,'odesk@op2vb.com','2012-01-20 19:14:13','disabled',NULL,0,0x7F000001,'odesk'),
 (64,6,'odesk@op2vb.com','2012-01-20 23:06:02','disabled',NULL,0,0x7F000001,'odesk'),
 (65,6,'odesk@op2vb.com','2012-01-20 23:16:03','disabled',NULL,0,0x7F000001,'odesk'),
 (66,6,'odesk@op2vb.com','2012-01-21 15:50:54','disabled',NULL,0,0x7F000001,'odesk'),
 (67,6,'odesk@op2vb.com','2012-01-21 15:51:29','disabled',NULL,0,0x7F000001,'odesk'),
 (68,6,'odesk@op2vb.com','2012-01-21 17:23:48','disabled',NULL,0,0x7F000001,'odesk'),
 (69,6,'odesk@op2vb.com','2012-01-23 16:31:37','disabled',NULL,0,0x7F000001,'odesk'),
 (70,6,'odesk@op2vb.com','2012-01-23 16:46:14','disabled',NULL,0,0x7F000001,'odesk'),
 (71,6,'odesk@op2vb.com','2012-01-23 17:42:21','disabled',NULL,0,0x7F000001,'odesk'),
 (72,6,'odesk@op2vb.com','2012-01-23 18:24:33','disabled',NULL,0,0x7F000001,'odesk'),
 (73,6,'odesk@op2vb.com','2012-01-23 18:32:11','disabled',NULL,0,0x7F000001,'odesk'),
 (74,NULL,NULL,'2012-01-23 20:35:30','no-member',NULL,0,0x7F000001,''),
 (75,NULL,NULL,'2012-01-23 20:37:39','no-member',NULL,0,0x7F000001,''),
 (76,NULL,NULL,'2012-01-23 20:44:16','no-member',NULL,0,0x7F000001,''),
 (77,6,'odesk@op2vb.com','2012-01-23 20:44:24','disabled',NULL,0,0x7F000001,'odesk'),
 (78,6,'odesk@op2vb.com','2012-01-23 20:44:46','disabled',NULL,0,0x7F000001,'odesk'),
 (79,NULL,NULL,'2012-01-23 22:55:26','no-member',NULL,0,0x7F000001,''),
 (80,NULL,NULL,'2012-01-23 22:55:40','no-member',NULL,0,0x7F000001,''),
 (81,6,'odesk@op2vb.com','2012-01-24 00:51:41','disabled',NULL,0,0x7F000001,'odesk'),
 (82,6,'odesk@op2vb.com','2012-01-24 01:08:32','disabled',NULL,0,0x7F000001,'odesk'),
 (83,6,'odesk@op2vb.com','2012-01-24 19:56:50','disabled',NULL,0,0x7F000001,'odesk'),
 (84,6,'odesk@op2vb.com','2012-01-24 23:58:03','disabled',NULL,0,0x7F000001,'odesk'),
 (85,6,'odesk@op2vb.com','2012-01-24 23:59:21','disabled',NULL,0,0x7F000001,'odesk'),
 (86,6,'odesk@op2vb.com','2012-01-25 00:10:53','disabled',NULL,0,0x7F000001,'odesk'),
 (87,6,'odesk@op2vb.com','2012-01-25 00:23:51','disabled',NULL,0,0x7F000001,'odesk'),
 (88,6,'odesk@op2vb.com','2012-01-25 02:13:29','disabled',NULL,0,0x7F000001,'odesk'),
 (89,6,'odesk@op2vb.com','2012-01-25 02:38:41','disabled',NULL,0,0x7F000001,'odesk'),
 (90,6,'odesk@op2vb.com','2012-01-25 14:16:42','disabled',NULL,0,0x7F000001,'odesk'),
 (91,6,'odesk@op2vb.com','2012-01-25 15:20:12','disabled',NULL,0,0x7F000001,'odesk'),
 (92,6,'odesk@op2vb.com','2012-01-25 15:20:43','disabled',NULL,0,0x7F000001,'odesk'),
 (93,1219894341,'aa@bb.com','2012-01-25 20:46:29','disabled',NULL,0,0x7F000001,'111'),
 (94,1219894341,'aa@bb.com','2012-01-25 20:47:47','disabled',NULL,0,0x7F000001,'111'),
 (95,6,'odesk@op2vb.com','2012-01-25 20:48:06','disabled',NULL,0,0x7F000001,'odesk'),
 (96,1219894341,'aa@bb.com','2012-01-25 20:48:51','disabled',NULL,0,0x7F000001,'111'),
 (97,6,'odesk@op2vb.coma','2012-01-25 20:49:26','disabled',NULL,0,0x7F000001,'odesk'),
 (98,NULL,NULL,'2012-01-25 20:50:20','no-member',NULL,0,0x7F000001,''),
 (99,12,'odesk@op2vb.com','2012-01-25 20:51:24','disabled',NULL,0,0x7F000001,'odesk'),
 (100,6,'odesk@op2vb.com','2012-01-25 20:52:17','disabled',NULL,0,0x7F000001,'odesk'),
 (101,6,'odesk@op2vb.com','2012-01-25 20:52:24','disabled',NULL,0,0x7F000001,'odesk'),
 (102,1219894341,'odesk@op2vb.com','2012-01-25 20:52:44','disabled',NULL,0,0x7F000001,'111'),
 (103,1219894341,'odesk@op2vb.com','2012-01-25 20:53:27','disabled',NULL,0,0x7F000001,'111'),
 (104,6,'odesk@op2vb.com','2012-01-26 19:27:41','disabled',NULL,0,0x7F000001,'odesk'),
 (105,6,'odesk@op2vb.com','2012-01-26 19:52:17','disabled',NULL,0,0x7F000001,'odesk'),
 (106,6,'tomy.dd.83@gmail.com','2012-01-26 22:15:02','disabled',NULL,0,0x7F000001,'odesk'),
 (107,6,'tomy.dd.83@gmail.com','2012-01-26 22:18:47','disabled',NULL,0,0x7F000001,'odesk'),
 (108,6,'tomy.dd.83@gmail.com','2012-01-26 22:27:08','disabled',NULL,0,0x7F000001,'odesk'),
 (109,90665149,'aa@bc.com','2012-01-27 00:05:13','disabled',NULL,0,0x7F000001,'111'),
 (110,NULL,NULL,'2012-01-27 00:08:18','no-member',NULL,0,0x7F000001,''),
 (111,787906286,'odesk@op2vb.com','2012-01-27 00:08:29','disabled',NULL,0,0x7F000001,'11111'),
 (112,6,'tomy.dd.83@gmail.com','2012-01-27 00:10:46','disabled',NULL,0,0x7F000001,'odesk'),
 (113,787906286,'odesk@op2vb.com','2012-01-27 01:21:16','disabled',NULL,0,0x7F000001,'11111'),
 (114,90665149,'aa@bc.com','2012-01-27 01:33:49','disabled',NULL,0,0x7F000001,'111'),
 (115,787906286,'odesk@op2vb.com','2012-01-27 01:50:14','disabled',NULL,0,0x7F000001,'11111'),
 (116,6,'odesk@op2vb.com','2012-01-27 01:58:25','disabled',NULL,0,0x7F000001,'odesk'),
 (117,6,'odesk@op2vb.com','2012-01-27 02:02:48','disabled',NULL,0,0x7F000001,'odesk'),
 (118,6,'odesk@op2vb.com','2012-01-27 02:27:30','disabled',NULL,0,0x7F000001,'odesk'),
 (119,6,'odesk@op2vb.com','2012-01-27 03:19:56','disabled',NULL,0,0x7F000001,'odesk'),
 (120,6,'odesk@op2vb.com','2012-01-27 03:29:32','disabled',NULL,0,0x7F000001,'odesk'),
 (121,6,'odesk@op2vb.com','2012-01-27 05:45:16','disabled',NULL,0,0x7F000001,'odesk'),
 (122,6,'tomy.dd.83@gmail.com','2012-01-27 17:02:00','disabled',NULL,0,0x7F000001,'odesk'),
 (123,6,'tomy.dd.83@gmail.com','2012-01-27 20:25:12','disabled',NULL,0,0x7F000001,'odesk'),
 (124,6,'tomy.dd.83@gmail.com','2012-01-27 22:26:41','disabled',NULL,0,0x7F000001,'odesk'),
 (125,6,'tomy.dd.83@gmail.com','2012-01-30 02:32:05','disabled',NULL,0,0x7F000001,'odesk'),
 (126,6,'tomy.dd.83@gmail.com','2012-01-30 17:55:44','disabled',NULL,0,0x7F000001,'odesk'),
 (127,6,'tomy.dd.83@gmail.com','2012-01-30 19:29:48','disabled',NULL,0,0x7F000001,'odesk'),
 (128,6,'tomy.dd.83@gmail.com','2012-01-30 19:30:09','disabled',NULL,0,0x7F000001,'odesk'),
 (129,6,'tomy.dd.83@gmail.com','2012-01-30 20:16:44','disabled',NULL,0,0x7F000001,'odesk'),
 (130,6,'tomy.dd.83@gmail.com','2012-01-30 20:30:24','disabled',NULL,0,0x7F000001,'odesk'),
 (131,6,'tomy.dd.83@gmail.com','2012-01-30 20:56:15','disabled',NULL,0,0x7F000001,'odesk'),
 (132,6,'tomy.dd.83@gmail.com','2012-01-31 00:08:23','disabled',NULL,0,0x7F000001,'odesk'),
 (133,673259212,'sasya8080@gmail.com','2012-01-31 21:32:52','disabled',NULL,0,0x7F000001,'898989'),
 (134,1680664888,'sasya8080@gmail.com','2012-01-31 21:59:06','disabled',NULL,0,0x7F000001,'3432342342'),
 (135,6,'tomy.dd.83@gmail.com','2012-01-31 22:17:12','disabled',NULL,0,0x7F000001,'odesk'),
 (136,6,'tomy.dd.83@gmail.com','2012-01-31 22:25:16','disabled',NULL,0,0x7F000001,'odesk');
/*!40000 ALTER TABLE `engine4_user_logins` ENABLE KEYS */;


--
-- Definition of table `engine4_user_membership`
--

DROP TABLE IF EXISTS `engine4_user_membership`;
CREATE TABLE `engine4_user_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `resource_approved` tinyint(1) NOT NULL DEFAULT '0',
  `user_approved` tinyint(1) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`resource_id`,`user_id`),
  KEY `REVERSE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_membership`
--

/*!40000 ALTER TABLE `engine4_user_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_membership` ENABLE KEYS */;


--
-- Definition of table `engine4_user_online`
--

DROP TABLE IF EXISTS `engine4_user_online`;
CREATE TABLE `engine4_user_online` (
  `ip` varbinary(16) NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `active` datetime NOT NULL,
  PRIMARY KEY (`ip`,`user_id`),
  KEY `LOOKUP` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_online`
--

/*!40000 ALTER TABLE `engine4_user_online` DISABLE KEYS */;
INSERT INTO `engine4_user_online` (`ip`,`user_id`,`active`) VALUES 
 (0xC0A801E2,0,'2012-01-11 20:41:18'),
 (0x6165323239626633,0,'2012-01-13 01:58:59'),
 (0x3363313539363732,0,'2012-01-18 00:53:56'),
 (0x3363313539363062,0,'2012-01-18 03:23:24'),
 (0x3434363138376539,0,'2012-01-18 10:46:09'),
 (0x6431613031653361,0,'2012-01-18 14:25:47'),
 (0x7F000001,0,'2012-01-18 22:24:39'),
 (0x7F000001,8,'2012-01-23 23:29:44'),
 (0x7F000001,1365141341,'2012-01-25 19:47:45'),
 (0x7F000001,1365141342,'2012-01-25 20:11:22'),
 (0x7F000001,12,'2012-01-25 20:51:34'),
 (0x7F000001,1542221578,'2012-01-27 17:50:46'),
 (0x7F000001,1884272687,'2012-01-30 02:59:03'),
 (0x7F000001,1165849088,'2012-01-30 18:50:48'),
 (0x7F000001,6,'2012-01-30 20:32:41');
/*!40000 ALTER TABLE `engine4_user_online` ENABLE KEYS */;


--
-- Definition of table `engine4_user_settings`
--

DROP TABLE IF EXISTS `engine4_user_settings`;
CREATE TABLE `engine4_user_settings` (
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_settings`
--

/*!40000 ALTER TABLE `engine4_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_settings` ENABLE KEYS */;


--
-- Definition of table `engine4_user_signup`
--

DROP TABLE IF EXISTS `engine4_user_signup`;
CREATE TABLE `engine4_user_signup` (
  `signup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `order` smallint(6) NOT NULL DEFAULT '999',
  `enable` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`signup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_signup`
--

/*!40000 ALTER TABLE `engine4_user_signup` DISABLE KEYS */;
INSERT INTO `engine4_user_signup` (`signup_id`,`class`,`order`,`enable`) VALUES 
 (1,'User_Plugin_Signup_Account',2,1),
 (2,'User_Plugin_Signup_Fields',3,1),
 (3,'User_Plugin_Signup_Photo',4,1),
 (4,'User_Plugin_Signup_Invite',5,0),
 (5,'Payment_Plugin_Signup_Subscription',6,0),
 (6,'Network_Plugin_Signup_Network',1,1);
/*!40000 ALTER TABLE `engine4_user_signup` ENABLE KEYS */;


--
-- Definition of table `engine4_user_twitter`
--

DROP TABLE IF EXISTS `engine4_user_twitter`;
CREATE TABLE `engine4_user_twitter` (
  `user_id` int(10) unsigned NOT NULL,
  `twitter_uid` bigint(20) unsigned NOT NULL,
  `twitter_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `twitter_uid` (`twitter_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_twitter`
--

/*!40000 ALTER TABLE `engine4_user_twitter` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_user_twitter` ENABLE KEYS */;


--
-- Definition of table `engine4_user_verify`
--

DROP TABLE IF EXISTS `engine4_user_verify`;
CREATE TABLE `engine4_user_verify` (
  `user_id` int(11) unsigned NOT NULL,
  `code` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_verify`
--

/*!40000 ALTER TABLE `engine4_user_verify` DISABLE KEYS */;
INSERT INTO `engine4_user_verify` (`user_id`,`code`,`date`) VALUES 
 (5,'3e4e164b00ded7d97c0fc152d7a5595f','2012-01-05 00:31:03'),
 (6,'c064c063f5790a253147095ff934038e','2012-01-11 22:42:59');
/*!40000 ALTER TABLE `engine4_user_verify` ENABLE KEYS */;


--
-- Definition of table `engine4_users`
--

DROP TABLE IF EXISTS `engine4_users`;
CREATE TABLE `engine4_users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` text COLLATE utf8_unicode_ci,
  `status_date` datetime DEFAULT NULL,
  `password` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'auto',
  `language` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'en_US',
  `timezone` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'America/Los_Angeles',
  `search` tinyint(1) NOT NULL DEFAULT '1',
  `show_profileviewers` tinyint(1) NOT NULL DEFAULT '1',
  `level_id` int(11) unsigned NOT NULL,
  `invites_used` int(11) unsigned NOT NULL DEFAULT '0',
  `extra_invites` int(11) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `lastlogin_date` datetime DEFAULT NULL,
  `update_date` int(11) DEFAULT NULL,
  `member_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0',
  `creation_ip` varbinary(16) NOT NULL,
  `lastlogin_ip` varbinary(16) DEFAULT NULL,
  `ulogin_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `login_id_user_01` (`ulogin_id`) USING BTREE,
  UNIQUE KEY `USERNAME` (`username`),
  KEY `MEMBER_COUNT` (`member_count`),
  KEY `CREATION_DATE` (`creation_date`),
  KEY `search` (`search`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2036342407 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_users`
--

/*!40000 ALTER TABLE `engine4_users` DISABLE KEYS */;
INSERT INTO `engine4_users` (`user_id`,`email`,`username`,`displayname`,`photo_id`,`status`,`status_date`,`password`,`salt`,`locale`,`language`,`timezone`,`search`,`show_profileviewers`,`level_id`,`invites_used`,`extra_invites`,`enabled`,`verified`,`approved`,`creation_date`,`modified_date`,`lastlogin_date`,`update_date`,`member_count`,`view_count`,`creation_ip`,`lastlogin_ip`,`ulogin_id`) VALUES 
 (1,'tomy.dd.83@gmail.com','admin','admin',0,NULL,NULL,'900d90c20f69d5551e900b58b56c0c50','4760666','auto','en_US','US/Central',1,1,1,0,0,1,1,1,'2012-01-04 22:17:31','2012-01-05 00:56:46','2012-01-12 19:38:57',NULL,0,4,0xC40F7295,0x7FFFFFFF,'a2'),
 (6,'tomy.dd.83@gmail.com','admin2','Admin 2',0,NULL,NULL,'14519c552ca32d5b48b9aebfbee1d984','8131035','English','English','US/Central',1,1,1,0,0,1,1,1,'2012-01-11 22:42:59','2012-01-11 22:45:37','2012-01-31 22:25:16',NULL,0,4,0x7FFFFFFF,0x7F000001,'odesk'),
 (144946255,'tomy.dd.83@gmail.com',NULL,'ax ax',0,NULL,NULL,'cfbdec3a56cd2c943107af4f92460798','7118011','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 05:30:58','2012-01-27 05:38:04','2012-01-27 05:38:07',NULL,0,2,0x7F000001,0x7F000001,'a345'),
 (370267116,'tomy.dd.83@gmail.com',NULL,'00000000 asdf',0,NULL,NULL,'6a8a3354c614c26529bb8ffebe970ad2','6401702','English','English','US/Central',1,1,4,0,0,0,1,1,'2012-01-27 03:00:19','2012-01-27 03:00:20','2012-01-27 03:00:20',NULL,0,3,0x7F000001,0x7F000001,'a35'),
 (644538342,'sasya8080@gmail.com',NULL,'aa b',0,NULL,NULL,'82cadd325fc19f5c6aacf6bfe3a25431','1841827','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-31 21:23:01','2012-01-31 21:23:01','2012-01-31 21:23:05',NULL,0,0,0x7F000001,0x7F000001,'x3223'),
 (673259212,'sasya8080@gmail.com',NULL,'b b',0,NULL,NULL,'f80d58d1d1a29bbd2df065c8e755484c','4843841','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-31 21:28:19','2012-01-31 21:28:19','2012-01-31 21:32:52',NULL,0,0,0x7F000001,0x7F000001,'898989'),
 (806665847,'tomy.dd.83@gmail.com',NULL,'asdf asdf',0,NULL,NULL,'c4d2d8498c7797a5a0d2bd93de0c8fc4','8177642','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 17:01:14','2012-01-27 17:01:15','2012-01-27 17:01:15',NULL,0,0,0x7F000001,0x7F000001,'a3452'),
 (976972162,'tomy.dd.83@gmail.com',NULL,'adf 32323232',0,NULL,NULL,'e3689b78d5b9fa473dfb189efedbec1b','1736083','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-30 03:09:24','2012-01-30 03:09:28',NULL,NULL,0,0,0x7F000001,NULL,'d111'),
 (1165849088,'aa@bc.com',NULL,'123',0,NULL,NULL,'543f5a21c8f7db70f450197a7e81892f','4379394','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-30 18:39:30','2012-01-30 18:39:31','2012-01-30 18:39:37',NULL,0,0,0x7F000001,0x7F000001,'w1w'),
 (1173216455,'sasya8080@gmail.com',NULL,'000999000 00999900',0,NULL,NULL,'d7d72ec861762173930e6d6f8909ed26','9642944','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-31 21:24:38','2012-01-31 21:24:39','2012-01-31 21:24:42',NULL,0,0,0x7F000001,0x7F000001,'x808080'),
 (1378354621,'aa@bc.com',NULL,'aa asdf',0,NULL,NULL,'6a1490e98b2a3b2893a69e8dbf291071','7808502','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 05:18:47','2012-01-27 05:18:47','2012-01-27 05:18:48',NULL,0,1,0x7F000001,0x7F000001,'a1111'),
 (1454445489,'a@bbc.ca.bb',NULL,'asdf asdf',0,NULL,NULL,'430b467ccf0016cdd2ffcae0c070a897','4641967','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 03:37:54','2012-01-27 03:37:54','2012-01-27 03:37:54',NULL,0,0,0x7F000001,0x7F000001,'a12'),
 (1519581937,'sasya8080@gmail.com',NULL,'asdfasdf asdf',0,NULL,NULL,'d0d4e387dc38bbd25be9545887ff22b6','6932891','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-30 11:07:28','2012-01-30 11:07:28','2012-01-30 11:07:35',NULL,0,1,0x7F000001,0x7F000001,'f32'),
 (1542221578,'aa@bc.com',NULL,'abb ccc23423423',21,NULL,NULL,'0652bf193ae711d39dfc74f84712296f','8715148','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 17:04:56','2012-01-27 17:36:20','2012-01-27 17:04:56',NULL,0,0,0x7F000001,0x7F000001,'asdf'),
 (1617777672,'aa@bb.com',NULL,'asdfasdf asdf',0,NULL,NULL,'e737f460e5372e1c27454b11d1a4710b','4993530','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 02:57:46','2012-01-27 02:57:47','2012-01-27 02:57:47',NULL,0,0,0x7F000001,0x7F000001,'a33'),
 (1680664888,'sasya8080@gmail.com',NULL,'b b',0,NULL,NULL,'95a741e30a6341af5c6cf17c45d4389f','7801361','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-31 21:58:06','2012-01-31 21:58:07','2012-01-31 21:59:06',NULL,0,0,0x7F000001,0x7F000001,'3432342342'),
 (1720049785,'aa@bb.com',NULL,'adf asdf',0,NULL,NULL,'cd345ab6b54a6d2ef3300ff559ac0d96','9219146','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 03:01:35','2012-01-27 03:01:35','2012-01-27 03:01:35',NULL,0,2,0x7F000001,0x7F000001,'a37'),
 (1826907472,'aa@bb.com',NULL,'x33 x55',0,NULL,NULL,'742e844769b60448868887d0dda036d9','4253051','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 05:43:53','2012-01-27 05:43:54','2012-01-27 05:43:54',NULL,0,5,0x7F000001,0x7F000001,'x11'),
 (1884272687,'sasya8080@gmail.com',NULL,'asdfasdf asdfsadf',0,NULL,NULL,'235ab5b9fb9638d304ec918ed9288fc3','5550537','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-30 02:34:52','2012-01-30 02:34:53','2012-01-30 02:34:54',NULL,0,0,0x7F000001,0x7F000001,'9899'),
 (1897958929,'a@bbc.ca.bb',NULL,'asdf asdf',0,NULL,NULL,'65c82ff818c3fab6af5db4e2c83e698c','6368194','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-27 03:36:33','2012-01-27 03:36:34','2012-01-27 03:36:34',NULL,0,0,0x7F000001,0x7F000001,'a11'),
 (2036342406,'tomy.dd.83@gmail.com',NULL,'a b',0,NULL,NULL,'847894f9e41bd34c596bb63f4f12b60e','2372741','English','English','US/Central',1,1,4,0,0,1,1,1,'2012-01-30 03:49:49','2012-01-30 03:49:52','2012-01-30 04:03:55',NULL,0,0,0x7F000001,0x7F000001,'1111333');
/*!40000 ALTER TABLE `engine4_users` ENABLE KEYS */;


--
-- Definition of table `engine4_younetcore_apisettings`
--

DROP TABLE IF EXISTS `engine4_younetcore_apisettings`;
CREATE TABLE `engine4_younetcore_apisettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engine4_younetcore_apisettings`
--

/*!40000 ALTER TABLE `engine4_younetcore_apisettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_younetcore_apisettings` ENABLE KEYS */;


--
-- Definition of table `engine4_younetcore_install`
--

DROP TABLE IF EXISTS `engine4_younetcore_install`;
CREATE TABLE `engine4_younetcore_install` (
  `token` text NOT NULL,
  `params` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engine4_younetcore_install`
--

/*!40000 ALTER TABLE `engine4_younetcore_install` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine4_younetcore_install` ENABLE KEYS */;


--
-- Definition of table `engine4_younetcore_license`
--

DROP TABLE IF EXISTS `engine4_younetcore_license`;
CREATE TABLE `engine4_younetcore_license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` text NOT NULL,
  `descriptions` text,
  `type` varchar(50) NOT NULL,
  `current_version` varchar(50) NOT NULL,
  `lasted_version` varchar(50) NOT NULL,
  `is_active` int(1) DEFAULT '0',
  `date_active` int(11) DEFAULT NULL,
  `params` text,
  `download_link` varchar(500) DEFAULT NULL,
  `demo_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engine4_younetcore_license`
--

/*!40000 ALTER TABLE `engine4_younetcore_license` DISABLE KEYS */;
INSERT INTO `engine4_younetcore_license` (`id`,`name`,`title`,`descriptions`,`type`,`current_version`,`lasted_version`,`is_active`,`date_active`,`params`,`download_link`,`demo_link`) VALUES 
 (1,'advgroup','Advgroup','This is Advanced Group Plugin,','module','4.01p1','4.01p1',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `engine4_younetcore_license` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
