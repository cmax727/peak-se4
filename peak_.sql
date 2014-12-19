-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2012 at 07:18 PM
-- Server version: 5.0.77
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `peak_`
--
CREATE DATABASE `peak_` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `peak_`;

-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_actions`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_actions` (
  `action_id` int(11) unsigned NOT NULL auto_increment,
  `type` varchar(32) collate utf8_unicode_ci NOT NULL,
  `subject_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `subject_id` int(11) unsigned NOT NULL,
  `object_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `body` text collate utf8_unicode_ci,
  `params` text collate utf8_unicode_ci,
  `date` datetime NOT NULL,
  `attachment_count` smallint(3) unsigned NOT NULL default '0',
  `comment_count` mediumint(5) unsigned NOT NULL default '0',
  `like_count` mediumint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`action_id`),
  KEY `SUBJECT` (`subject_type`,`subject_id`),
  KEY `OBJECT` (`object_type`,`object_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=108 ;

--
-- Dumping data for table `engine4_activity_actions`
--

INSERT INTO `engine4_activity_actions` (`action_id`, `type`, `subject_type`, `subject_id`, `object_type`, `object_id`, `body`, `params`, `date`, `attachment_count`, `comment_count`, `like_count`) VALUES
(1, 'advgroup_create', 'user', 1, 'group', 1, '', '[]', '2012-01-04 22:46:37', 1, 0, 0),
(2, 'advgroup_create', 'user', 1, 'group', 2, '', '[]', '2012-01-04 22:47:47', 1, 0, 0),
(3, 'advgroup_create', 'user', 1, 'group', 3, '', '[]', '2012-01-04 22:48:40', 1, 0, 0),
(4, 'advgroup_create', 'user', 1, 'group', 4, '', '[]', '2012-01-04 22:50:22', 1, 0, 0),
(5, 'advgroup_create', 'user', 1, 'group', 5, '', '[]', '2012-01-04 22:51:17', 1, 0, 0),
(6, 'advgroup_create', 'user', 1, 'group', 6, '', '[]', '2012-01-04 23:21:57', 1, 0, 0),
(11, 'signup', 'user', 6, 'user', 6, '', '[]', '2012-01-11 22:45:36', 0, 0, 0),
(14, 'signup', 'user', 53, 'user', 53, '', '[]', '2012-01-30 02:54:31', 0, 0, 0),
(15, 'signup', 'user', 52, 'user', 52, '', '[]', '2012-01-30 02:55:22', 0, 0, 0),
(16, 'signup', 'user', 54, 'user', 54, '', '[]', '2012-01-30 03:10:58', 0, 0, 0),
(17, 'signup', 'user', 55, 'user', 55, '', '[]', '2012-01-30 03:12:06', 0, 0, 0),
(18, 'signup', 'user', 58, 'user', 58, '', '[]', '2012-01-30 03:14:08', 0, 0, 0),
(19, 'signup', 'user', 56, 'user', 56, '', '[]', '2012-01-30 03:14:37', 0, 0, 0),
(20, 'signup', 'user', 51, 'user', 51, '', '[]', '2012-01-30 03:15:16', 0, 0, 0),
(21, 'signup', 'user', 50, 'user', 50, '', '[]', '2012-01-30 03:15:47', 0, 0, 0),
(23, 'signup', 'user', 87, 'user', 87, '', '[]', '2012-01-31 02:19:59', 0, 0, 0),
(24, 'signup', 'user', 84, 'user', 84, '', '[]', '2012-01-31 02:20:30', 0, 0, 0),
(25, 'signup', 'user', 79, 'user', 79, '', '[]', '2012-01-31 02:21:16', 0, 0, 0),
(26, 'signup', 'user', 78, 'user', 78, '', '[]', '2012-01-31 02:21:40', 0, 0, 0),
(27, 'signup', 'user', 77, 'user', 77, '', '[]', '2012-01-31 02:22:02', 0, 0, 0),
(28, 'signup', 'user', 28, 'user', 28, '', '[]', '2012-01-31 19:22:09', 0, 0, 0),
(29, 'signup', 'user', 62, 'user', 62, '', '[]', '2012-01-31 19:22:39', 0, 0, 0),
(30, 'signup', 'user', 80, 'user', 80, '', '[]', '2012-01-31 19:23:31', 0, 0, 0),
(31, 'signup', 'user', 71, 'user', 71, '', '[]', '2012-01-31 19:24:31', 0, 0, 0),
(32, 'signup', 'user', 36, 'user', 36, '', '[]', '2012-01-31 19:24:49', 0, 0, 0),
(33, 'signup', 'user', 91, 'user', 91, '', '[]', '2012-01-31 19:25:13', 0, 0, 0),
(34, 'signup', 'user', 95, 'user', 95, '', '[]', '2012-01-31 19:28:01', 0, 0, 0),
(35, 'signup', 'user', 35, 'user', 35, '', '[]', '2012-01-31 19:28:26', 0, 0, 0),
(36, 'signup', 'user', 65, 'user', 65, '', '[]', '2012-01-31 19:28:44', 0, 0, 0),
(37, 'signup', 'user', 60, 'user', 60, '', '[]', '2012-01-31 19:29:05', 0, 0, 0),
(38, 'signup', 'user', 68, 'user', 68, '', '[]', '2012-01-31 19:29:53', 0, 0, 0),
(39, 'signup', 'user', 20, 'user', 20, '', '[]', '2012-01-31 19:30:24', 0, 0, 0),
(40, 'signup', 'user', 69, 'user', 69, '', '[]', '2012-01-31 19:30:58', 0, 0, 0),
(41, 'signup', 'user', 29, 'user', 29, '', '[]', '2012-01-31 19:31:44', 0, 0, 0),
(42, 'signup', 'user', 81, 'user', 81, '', '[]', '2012-01-31 19:32:35', 0, 0, 0),
(43, 'signup', 'user', 57, 'user', 57, '', '[]', '2012-01-31 19:33:06', 0, 0, 0),
(44, 'signup', 'user', 21, 'user', 21, '', '[]', '2012-01-31 19:42:51', 0, 0, 0),
(45, 'signup', 'user', 70, 'user', 70, '', '[]', '2012-01-31 19:43:09', 0, 0, 0),
(47, 'signup', 'user', 24, 'user', 24, '', '[]', '2012-01-31 19:43:41', 0, 0, 0),
(48, 'signup', 'user', 82, 'user', 82, '', '[]', '2012-01-31 19:43:56', 0, 0, 0),
(49, 'signup', 'user', 47, 'user', 47, '', '[]', '2012-01-31 19:44:14', 0, 0, 0),
(50, 'signup', 'user', 37, 'user', 37, '', '[]', '2012-01-31 19:47:01', 0, 0, 0),
(51, 'signup', 'user', 73, 'user', 73, '', '[]', '2012-01-31 19:47:36', 0, 0, 0),
(52, 'signup', 'user', 85, 'user', 85, '', '[]', '2012-01-31 19:50:31', 0, 0, 0),
(53, 'signup', 'user', 63, 'user', 63, '', '[]', '2012-01-31 19:50:48', 0, 0, 0),
(54, 'signup', 'user', 40, 'user', 40, '', '[]', '2012-01-31 19:51:02', 0, 0, 0),
(55, 'signup', 'user', 89, 'user', 89, '', '[]', '2012-01-31 19:51:18', 0, 0, 0),
(56, 'signup', 'user', 48, 'user', 48, '', '[]', '2012-01-31 19:52:06', 0, 0, 0),
(57, 'signup', 'user', 86, 'user', 86, '', '[]', '2012-01-31 19:52:20', 0, 0, 0),
(58, 'signup', 'user', 64, 'user', 64, '', '[]', '2012-01-31 19:52:33', 0, 0, 0),
(59, 'signup', 'user', 66, 'user', 66, '', '[]', '2012-01-31 19:54:25', 0, 0, 0),
(60, 'signup', 'user', 33, 'user', 33, '', '[]', '2012-01-31 19:54:47', 0, 0, 0),
(61, 'signup', 'user', 27, 'user', 27, '', '[]', '2012-01-31 19:55:04', 0, 0, 0),
(62, 'signup', 'user', 26, 'user', 26, '', '[]', '2012-01-31 19:55:26', 0, 0, 0),
(63, 'signup', 'user', 16, 'user', 16, '', '[]', '2012-01-31 19:55:40', 0, 0, 0),
(64, 'signup', 'user', 49, 'user', 49, '', '[]', '2012-01-31 19:56:12', 0, 0, 0),
(65, 'signup', 'user', 46, 'user', 46, '', '[]', '2012-01-31 19:56:31', 0, 0, 0),
(66, 'signup', 'user', 38, 'user', 38, '', '[]', '2012-01-31 19:57:15', 0, 0, 0),
(67, 'signup', 'user', 23, 'user', 23, '', '[]', '2012-01-31 19:57:30', 0, 0, 0),
(68, 'signup', 'user', 83, 'user', 83, '', '[]', '2012-01-31 19:57:59', 0, 0, 0),
(69, 'signup', 'user', 17, 'user', 17, '', '[]', '2012-01-31 19:58:16', 0, 0, 0),
(70, 'signup', 'user', 67, 'user', 67, '', '[]', '2012-01-31 19:58:30', 0, 0, 0),
(71, 'signup', 'user', 14, 'user', 14, '', '[]', '2012-01-31 19:59:20', 0, 0, 0),
(72, 'signup', 'user', 74, 'user', 74, '', '[]', '2012-01-31 19:59:49', 0, 0, 0),
(73, 'signup', 'user', 75, 'user', 75, '', '[]', '2012-01-31 20:15:23', 0, 0, 0),
(74, 'signup', 'user', 93, 'user', 93, '', '[]', '2012-01-31 20:15:43', 0, 0, 0),
(75, 'signup', 'user', 30, 'user', 30, '', '[]', '2012-01-31 20:16:01', 0, 0, 0),
(76, 'signup', 'user', 88, 'user', 88, '', '[]', '2012-01-31 20:16:27', 0, 0, 0),
(77, 'signup', 'user', 22, 'user', 22, '', '[]', '2012-01-31 20:16:41', 0, 0, 0),
(78, 'signup', 'user', 19, 'user', 19, '', '[]', '2012-01-31 20:17:45', 0, 0, 0),
(79, 'signup', 'user', 44, 'user', 44, '', '[]', '2012-01-31 20:17:59', 0, 0, 0),
(80, 'signup', 'user', 45, 'user', 45, '', '[]', '2012-01-31 20:18:20', 0, 0, 0),
(81, 'signup', 'user', 34, 'user', 34, '', '[]', '2012-01-31 20:18:33', 0, 0, 0),
(82, 'signup', 'user', 72, 'user', 72, '', '[]', '2012-01-31 20:18:48', 0, 0, 0),
(83, 'signup', 'user', 96, 'user', 96, '', '[]', '2012-01-31 20:19:10', 0, 0, 0),
(84, 'signup', 'user', 90, 'user', 90, '', '[]', '2012-01-31 20:19:27', 0, 0, 0),
(85, 'signup', 'user', 92, 'user', 92, '', '[]', '2012-01-31 20:19:39', 0, 0, 0),
(86, 'signup', 'user', 59, 'user', 59, '', '[]', '2012-01-31 20:19:56', 0, 0, 0),
(87, 'signup', 'user', 61, 'user', 61, '', '[]', '2012-01-31 20:20:23', 0, 0, 0),
(88, 'signup', 'user', 39, 'user', 39, '', '[]', '2012-01-31 20:20:37', 0, 0, 0),
(89, 'signup', 'user', 43, 'user', 43, '', '[]', '2012-01-31 20:21:09', 0, 0, 0),
(90, 'signup', 'user', 25, 'user', 25, '', '[]', '2012-01-31 20:21:23', 0, 0, 0),
(91, 'signup', 'user', 32, 'user', 32, '', '[]', '2012-01-31 20:21:38', 0, 0, 0),
(92, 'signup', 'user', 94, 'user', 94, '', '[]', '2012-01-31 20:21:52', 0, 0, 0),
(93, 'signup', 'user', 31, 'user', 31, '', '[]', '2012-01-31 20:22:05', 0, 0, 0),
(94, 'signup', 'user', 18, 'user', 18, '', '[]', '2012-01-31 20:22:18', 0, 0, 0),
(95, 'profile_photo_update', 'user', 1, 'user', 1, '{item:$subject} added a new profile photo.', '[]', '2012-01-31 21:52:41', 1, 0, 0),
(96, 'signup', 'user', 573980572, 'user', 573980572, '', '[]', '2012-02-01 14:10:48', 0, 0, 0),
(97, 'signup', 'user', 674218479, 'user', 674218479, '', '[]', '2012-02-01 14:12:06', 0, 0, 0),
(98, 'signup', 'user', 1829893787, 'user', 1829893787, '', '[]', '2012-02-01 14:12:41', 0, 0, 0),
(99, 'signup', 'user', 1383914828, 'user', 1383914828, '', '[]', '2012-02-01 22:50:31', 0, 0, 0),
(102, 'profile_photo_update', 'user', 1383914828, 'user', 1383914828, '{item:$subject} added a new profile photo.', '[]', '2012-02-01 23:03:11', 1, 0, 0),
(103, 'signup', 'user', 13, 'user', 13, '', '[]', '2012-02-02 00:13:05', 0, 0, 0),
(104, 'signup', 'user', 886555540, 'user', 886555540, '', '[]', '2012-02-02 01:19:06', 0, 0, 0),
(105, 'signup', 'user', 1610159378, 'user', 1610159378, '', '[]', '2012-02-02 01:19:19', 0, 0, 0),
(106, 'signup', 'user', 2002635803, 'user', 2002635803, '', '[]', '2012-02-02 01:27:37', 0, 0, 0),
(107, 'signup', 'user', 1617228157, 'user', 1617228157, '', '[]', '2012-02-02 01:27:53', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_actionsettings`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_actionsettings` (
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `publish` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_actionsettings`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_actiontypes`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_actiontypes` (
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `module` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL default '1',
  `displayable` tinyint(1) NOT NULL default '3',
  `attachable` tinyint(1) NOT NULL default '1',
  `commentable` tinyint(1) NOT NULL default '1',
  `shareable` tinyint(1) NOT NULL default '1',
  `is_generated` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_actiontypes`
--

INSERT INTO `engine4_activity_actiontypes` (`type`, `module`, `body`, `enabled`, `displayable`, `attachable`, `commentable`, `shareable`, `is_generated`) VALUES
('advgroup_create', 'advgroup', '{item:$subject} created a new group:', 1, 5, 1, 1, 1, 1),
('advgroup_join', 'advgroup', '{item:$subject} joined the group {item:$object}', 1, 3, 1, 1, 1, 1),
('advgroup_photo_upload', 'advgroup', '{item:$subject} added {var:$count} photo(s).', 1, 3, 2, 1, 1, 1),
('advgroup_poll_new', 'advgroup', '{item:$subject} created a new poll:', 1, 3, 1, 1, 1, 1),
('advgroup_promote', 'advgroup', '{item:$subject} has been made an officer for the group {item:$object}', 1, 3, 1, 1, 1, 1),
('advgroup_topic_create', 'advgroup', '{item:$subject} posted a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}', 1, 3, 1, 1, 1, 1),
('advgroup_topic_reply', 'advgroup', '{item:$subject} replied to a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}', 1, 3, 1, 1, 1, 1),
('event_create', 'event', '{item:$subject} created a new event:', 1, 5, 1, 1, 1, 1),
('event_join', 'event', '{item:$subject} joined the event {item:$object}', 1, 3, 1, 1, 1, 1),
('event_photo_upload', 'event', '{item:$subject} added {var:$count} photo(s).', 1, 3, 2, 1, 1, 1),
('event_topic_create', 'event', '{item:$subject} posted a {item:$object:topic} in the event {itemParent:$object:event}: {body:$body}', 1, 3, 1, 1, 1, 1),
('event_topic_reply', 'event', '{item:$subject} replied to a {item:$object:topic} in the event {itemParent:$object:event}: {body:$body}', 1, 3, 1, 1, 1, 1),
('friends', 'user', '{item:$subject} is now friends with {item:$object}.', 1, 3, 0, 1, 1, 1),
('friends_follow', 'user', '{item:$subject} is now following {item:$object}.', 1, 3, 0, 1, 1, 1),
('group_create', 'group', '{item:$subject} created a new group:', 1, 5, 1, 1, 1, 1),
('group_join', 'group', '{item:$subject} joined the group {item:$object}', 1, 3, 1, 1, 1, 1),
('group_photo_upload', 'group', '{item:$subject} added {var:$count} photo(s).', 1, 3, 2, 1, 1, 1),
('group_promote', 'group', '{item:$subject} has been made an officer for the group {item:$object}', 1, 3, 1, 1, 1, 1),
('group_topic_create', 'group', '{item:$subject} posted a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}', 1, 3, 1, 1, 1, 1),
('group_topic_reply', 'group', '{item:$subject} replied to a {item:$object:topic} in the group {itemParent:$object:group}: {body:$body}', 1, 3, 1, 1, 1, 1),
('login', 'user', '{item:$subject} has signed in.', 0, 1, 0, 1, 1, 1),
('logout', 'user', '{item:$subject} has signed out.', 0, 1, 0, 1, 1, 1),
('network_join', 'network', '{item:$subject} joined the network {item:$object}', 1, 3, 1, 1, 1, 1),
('post', 'user', '{actors:$subject:$object}: {body:$body}', 1, 7, 1, 1, 1, 0),
('post_self', 'user', '{item:$subject} {body:$body}', 1, 5, 1, 1, 1, 0),
('profile_photo_update', 'user', '{item:$subject} has added a new profile photo.', 1, 5, 1, 1, 1, 1),
('signup', 'user', '{item:$subject} has just signed up. Say hello!', 1, 5, 0, 1, 1, 1),
('status', 'user', '{item:$subject} {body:$body}', 1, 5, 0, 1, 4, 0),
('tagged', 'user', '{item:$subject} tagged {item:$object} in a {var:$label}:', 1, 7, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_attachments`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_attachments` (
  `attachment_id` int(11) unsigned NOT NULL auto_increment,
  `action_id` int(11) unsigned NOT NULL,
  `type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `mode` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`attachment_id`),
  KEY `action_id` (`action_id`),
  KEY `type_id` (`type`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `engine4_activity_attachments`
--

INSERT INTO `engine4_activity_attachments` (`attachment_id`, `action_id`, `type`, `id`, `mode`) VALUES
(1, 1, 'group', 1, 1),
(2, 2, 'group', 2, 1),
(3, 3, 'group', 3, 1),
(4, 4, 'group', 4, 1),
(5, 5, 'group', 5, 1),
(6, 6, 'group', 6, 1),
(8, 95, 'storage_file', 84, 1),
(11, 102, 'storage_file', 88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_comments`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_comments` (
  `comment_id` int(11) unsigned NOT NULL auto_increment,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `like_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_id`),
  KEY `resource_type` (`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_activity_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_likes`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_likes` (
  `like_id` int(11) unsigned NOT NULL auto_increment,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(16) character set latin1 collate latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`like_id`),
  KEY `resource_id` (`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_activity_likes`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_notifications`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_notifications` (
  `notification_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `subject_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `subject_id` int(11) unsigned NOT NULL,
  `object_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `params` text collate utf8_unicode_ci,
  `read` tinyint(1) NOT NULL default '0',
  `mitigated` tinyint(1) NOT NULL default '0',
  `date` datetime NOT NULL,
  PRIMARY KEY  (`notification_id`),
  KEY `LOOKUP` (`user_id`,`date`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `object` (`object_type`,`object_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `engine4_activity_notifications`
--

INSERT INTO `engine4_activity_notifications` (`notification_id`, `user_id`, `subject_type`, `subject_id`, `object_type`, `object_id`, `type`, `params`, `read`, `mitigated`, `date`) VALUES
(1, 29, 'user', 1, 'messages_conversation', 1, 'message_new', NULL, 0, 0, '2012-01-31 19:32:13'),
(2, 13, 'user', 1, 'messages_conversation', 2, 'message_new', NULL, 0, 0, '2012-01-31 20:17:32'),
(4, 72, 'user', 1, 'messages_conversation', 4, 'message_new', NULL, 0, 0, '2012-01-31 21:48:52'),
(5, 26, 'user', 1, 'messages_conversation', 5, 'message_new', NULL, 0, 0, '2012-01-31 21:49:18'),
(6, 14, 'user', 1, 'messages_conversation', 6, 'message_new', NULL, 0, 0, '2012-01-31 21:49:41'),
(7, 29, 'user', 1, 'messages_conversation', 7, 'message_new', NULL, 0, 0, '2012-01-31 21:50:02'),
(8, 96, 'user', 1, 'messages_conversation', 8, 'message_new', NULL, 0, 0, '2012-02-02 01:09:02'),
(9, 43, 'user', 1, 'messages_conversation', 9, 'message_new', NULL, 0, 0, '2012-02-02 01:10:48'),
(10, 88, 'user', 1, 'messages_conversation', 10, 'message_new', NULL, 0, 0, '2012-02-02 01:11:14'),
(11, 55, 'user', 1, 'messages_conversation', 11, 'message_new', NULL, 0, 0, '2012-02-02 01:11:41'),
(12, 68, 'user', 1, 'messages_conversation', 12, 'message_new', NULL, 0, 0, '2012-02-02 01:12:14'),
(13, 61, 'user', 1, 'messages_conversation', 13, 'message_new', NULL, 0, 0, '2012-02-02 01:12:41'),
(14, 77, 'user', 1, 'messages_conversation', 14, 'message_new', NULL, 0, 0, '2012-02-02 01:13:18'),
(15, 95, 'user', 1, 'messages_conversation', 15, 'message_new', NULL, 0, 0, '2012-02-02 01:13:48'),
(16, 64, 'user', 1, 'messages_conversation', 16, 'message_new', NULL, 0, 0, '2012-02-02 01:15:19'),
(17, 80, 'user', 1, 'messages_conversation', 17, 'message_new', NULL, 0, 0, '2012-02-02 01:16:07'),
(18, 58, 'user', 1, 'messages_conversation', 18, 'message_new', NULL, 0, 0, '2012-02-02 01:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_notificationsettings`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_notificationsettings` (
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `email` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_notificationsettings`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_notificationtypes`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_notificationtypes` (
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `module` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `is_request` tinyint(1) NOT NULL default '0',
  `handler` varchar(32) collate utf8_unicode_ci NOT NULL default '',
  `default` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_notificationtypes`
--

INSERT INTO `engine4_activity_notificationtypes` (`type`, `module`, `body`, `is_request`, `handler`, `default`) VALUES
('advgroup_accepted', 'advgroup', 'Your request to join the group {item:$subject} has been approved.', 0, '', 1),
('advgroup_approve', 'advgroup', '{item:$subject} has requested to join the group {item:$object}.', 0, '', 1),
('advgroup_discussion_reply', 'advgroup', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you posted on.', 0, '', 1),
('advgroup_discussion_response', 'advgroup', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you created.', 0, '', 1),
('advgroup_invite', 'advgroup', '{item:$subject} has invited you to the group {item:$object}.', 1, 'advgroup.widget.request-group', 1),
('advgroup_poll_comment', 'advgroup', '{item:$subject} commented on {item:$owner}''s {item:$object:advgroup_poll}.', 0, '', 1),
('advgroup_poll_like', 'advgroup', '{item:$subject} liked {item:$owner}''s {item:$object:advgroup_poll}.', 0, '', 1),
('advgroup_promote', 'advgroup', 'You were promoted to officer in the group {item:$object}.', 0, '', 1),
('commented', 'activity', '{item:$subject} has commented on your {item:$object:$label}.', 0, '', 1),
('commented_commented', 'activity', '{item:$subject} has commented on a {item:$object:$label} you commented on.', 0, '', 1),
('event_accepted', 'event', 'Your request to join the event {item:$subject} has been approved.', 0, '', 1),
('event_approve', 'event', '{item:$subject} has requested to join the event {item:$object}.', 0, '', 1),
('event_discussion_reply', 'event', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::event topic} you posted on.', 0, '', 1),
('event_discussion_response', 'event', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::event topic} you created.', 0, '', 1),
('event_invite', 'event', '{item:$subject} has invited you to the event {item:$object}.', 1, 'event.widget.request-event', 1),
('friend_accepted', 'user', 'You and {item:$subject} are now friends.', 0, '', 1),
('friend_follow', 'user', '{item:$subject} is now following you.', 0, '', 1),
('friend_follow_accepted', 'user', 'You are now following {item:$subject}.', 0, '', 1),
('friend_follow_request', 'user', '{item:$subject} has requested to follow you.', 1, 'user.friends.request-follow', 1),
('friend_request', 'user', '{item:$subject} has requested to be your friend.', 1, 'user.friends.request-friend', 1),
('group_accepted', 'group', 'Your request to join the group {item:$subject} has been approved.', 0, '', 1),
('group_approve', 'group', '{item:$subject} has requested to join the group {item:$object}.', 0, '', 1),
('group_discussion_reply', 'group', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you posted on.', 0, '', 1),
('group_discussion_response', 'group', '{item:$subject} has {item:$object:posted} on a {itemParent:$object::group topic} you created.', 0, '', 1),
('group_invite', 'group', '{item:$subject} has invited you to the group {item:$object}.', 1, 'group.widget.request-group', 1),
('group_promote', 'group', 'You were promoted to officer in the group {item:$object}.', 0, '', 1),
('liked', 'activity', '{item:$subject} likes your {item:$object:$label}.', 0, '', 1),
('liked_commented', 'activity', '{item:$subject} has commented on a {item:$object:$label} you liked.', 0, '', 1),
('message_new', 'messages', '{item:$subject} has sent you a {item:$object:message}.', 0, '', 1),
('post_user', 'user', '{item:$subject} has posted on your {item:$object:profile}.', 0, '', 1),
('tagged', 'user', '{item:$subject} tagged you in a {item:$object:$label}.', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_activity_stream`
--

CREATE TABLE IF NOT EXISTS `engine4_activity_stream` (
  `target_type` varchar(16) character set latin1 collate latin1_general_ci NOT NULL,
  `target_id` int(11) unsigned NOT NULL,
  `subject_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `subject_id` int(11) unsigned NOT NULL,
  `object_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `object_id` int(11) unsigned NOT NULL,
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `action_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`target_type`,`target_id`,`action_id`),
  KEY `SUBJECT` (`subject_type`,`subject_id`,`action_id`),
  KEY `OBJECT` (`object_type`,`object_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_activity_stream`
--

INSERT INTO `engine4_activity_stream` (`target_type`, `target_id`, `subject_type`, `subject_id`, `object_type`, `object_id`, `type`, `action_id`) VALUES
('everyone', 0, 'user', 1, 'group', 2, 'advgroup_create', 2),
('everyone', 0, 'user', 1, 'group', 3, 'advgroup_create', 3),
('everyone', 0, 'user', 1, 'group', 4, 'advgroup_create', 4),
('group', 1, 'user', 1, 'group', 1, 'advgroup_create', 1),
('group', 2, 'user', 1, 'group', 2, 'advgroup_create', 2),
('group', 3, 'user', 1, 'group', 3, 'advgroup_create', 3),
('group', 4, 'user', 1, 'group', 4, 'advgroup_create', 4),
('group', 5, 'user', 1, 'group', 5, 'advgroup_create', 5),
('group', 6, 'user', 1, 'group', 6, 'advgroup_create', 6),
('members', 1, 'user', 1, 'user', 1, 'profile_photo_update', 95),
('members', 6, 'user', 6, 'user', 6, 'signup', 11),
('members', 13, 'user', 13, 'user', 13, 'signup', 103),
('members', 14, 'user', 14, 'user', 14, 'signup', 71),
('members', 16, 'user', 16, 'user', 16, 'signup', 63),
('members', 17, 'user', 17, 'user', 17, 'signup', 69),
('members', 18, 'user', 18, 'user', 18, 'signup', 94),
('members', 19, 'user', 19, 'user', 19, 'signup', 78),
('members', 20, 'user', 20, 'user', 20, 'signup', 39),
('members', 21, 'user', 21, 'user', 21, 'signup', 44),
('members', 22, 'user', 22, 'user', 22, 'signup', 77),
('members', 23, 'user', 23, 'user', 23, 'signup', 67),
('members', 24, 'user', 24, 'user', 24, 'signup', 47),
('members', 25, 'user', 25, 'user', 25, 'signup', 90),
('members', 26, 'user', 26, 'user', 26, 'signup', 62),
('members', 27, 'user', 27, 'user', 27, 'signup', 61),
('members', 28, 'user', 28, 'user', 28, 'signup', 28),
('members', 29, 'user', 29, 'user', 29, 'signup', 41),
('members', 30, 'user', 30, 'user', 30, 'signup', 75),
('members', 31, 'user', 31, 'user', 31, 'signup', 93),
('members', 32, 'user', 32, 'user', 32, 'signup', 91),
('members', 33, 'user', 33, 'user', 33, 'signup', 60),
('members', 34, 'user', 34, 'user', 34, 'signup', 81),
('members', 35, 'user', 35, 'user', 35, 'signup', 35),
('members', 36, 'user', 36, 'user', 36, 'signup', 32),
('members', 37, 'user', 37, 'user', 37, 'signup', 50),
('members', 38, 'user', 38, 'user', 38, 'signup', 66),
('members', 39, 'user', 39, 'user', 39, 'signup', 88),
('members', 40, 'user', 40, 'user', 40, 'signup', 54),
('members', 43, 'user', 43, 'user', 43, 'signup', 89),
('members', 44, 'user', 44, 'user', 44, 'signup', 79),
('members', 45, 'user', 45, 'user', 45, 'signup', 80),
('members', 46, 'user', 46, 'user', 46, 'signup', 65),
('members', 47, 'user', 47, 'user', 47, 'signup', 49),
('members', 48, 'user', 48, 'user', 48, 'signup', 56),
('members', 49, 'user', 49, 'user', 49, 'signup', 64),
('members', 50, 'user', 50, 'user', 50, 'signup', 21),
('members', 51, 'user', 51, 'user', 51, 'signup', 20),
('members', 52, 'user', 52, 'user', 52, 'signup', 15),
('members', 53, 'user', 53, 'user', 53, 'signup', 14),
('members', 54, 'user', 54, 'user', 54, 'signup', 16),
('members', 55, 'user', 55, 'user', 55, 'signup', 17),
('members', 56, 'user', 56, 'user', 56, 'signup', 19),
('members', 57, 'user', 57, 'user', 57, 'signup', 43),
('members', 58, 'user', 58, 'user', 58, 'signup', 18),
('members', 59, 'user', 59, 'user', 59, 'signup', 86),
('members', 60, 'user', 60, 'user', 60, 'signup', 37),
('members', 61, 'user', 61, 'user', 61, 'signup', 87),
('members', 62, 'user', 62, 'user', 62, 'signup', 29),
('members', 63, 'user', 63, 'user', 63, 'signup', 53),
('members', 64, 'user', 64, 'user', 64, 'signup', 58),
('members', 65, 'user', 65, 'user', 65, 'signup', 36),
('members', 66, 'user', 66, 'user', 66, 'signup', 59),
('members', 67, 'user', 67, 'user', 67, 'signup', 70),
('members', 68, 'user', 68, 'user', 68, 'signup', 38),
('members', 69, 'user', 69, 'user', 69, 'signup', 40),
('members', 70, 'user', 70, 'user', 70, 'signup', 45),
('members', 71, 'user', 71, 'user', 71, 'signup', 31),
('members', 72, 'user', 72, 'user', 72, 'signup', 82),
('members', 73, 'user', 73, 'user', 73, 'signup', 51),
('members', 74, 'user', 74, 'user', 74, 'signup', 72),
('members', 75, 'user', 75, 'user', 75, 'signup', 73),
('members', 77, 'user', 77, 'user', 77, 'signup', 27),
('members', 78, 'user', 78, 'user', 78, 'signup', 26),
('members', 79, 'user', 79, 'user', 79, 'signup', 25),
('members', 80, 'user', 80, 'user', 80, 'signup', 30),
('members', 81, 'user', 81, 'user', 81, 'signup', 42),
('members', 82, 'user', 82, 'user', 82, 'signup', 48),
('members', 83, 'user', 83, 'user', 83, 'signup', 68),
('members', 84, 'user', 84, 'user', 84, 'signup', 24),
('members', 85, 'user', 85, 'user', 85, 'signup', 52),
('members', 86, 'user', 86, 'user', 86, 'signup', 57),
('members', 87, 'user', 87, 'user', 87, 'signup', 23),
('members', 88, 'user', 88, 'user', 88, 'signup', 76),
('members', 89, 'user', 89, 'user', 89, 'signup', 55),
('members', 90, 'user', 90, 'user', 90, 'signup', 84),
('members', 91, 'user', 91, 'user', 91, 'signup', 33),
('members', 92, 'user', 92, 'user', 92, 'signup', 85),
('members', 93, 'user', 93, 'user', 93, 'signup', 74),
('members', 94, 'user', 94, 'user', 94, 'signup', 92),
('members', 95, 'user', 95, 'user', 95, 'signup', 34),
('members', 96, 'user', 96, 'user', 96, 'signup', 83),
('members', 573980572, 'user', 573980572, 'user', 573980572, 'signup', 96),
('members', 674218479, 'user', 674218479, 'user', 674218479, 'signup', 97),
('members', 886555540, 'user', 886555540, 'user', 886555540, 'signup', 104),
('members', 1383914828, 'user', 1383914828, 'user', 1383914828, 'signup', 99),
('members', 1383914828, 'user', 1383914828, 'user', 1383914828, 'profile_photo_update', 102),
('members', 1610159378, 'user', 1610159378, 'user', 1610159378, 'signup', 105),
('members', 1617228157, 'user', 1617228157, 'user', 1617228157, 'signup', 107),
('members', 1829893787, 'user', 1829893787, 'user', 1829893787, 'signup', 98),
('members', 2002635803, 'user', 2002635803, 'user', 2002635803, 'signup', 106),
('network', 8, 'user', 36, 'user', 36, 'signup', 32),
('network', 8, 'user', 68, 'user', 68, 'signup', 38),
('network', 9, 'user', 58, 'user', 58, 'signup', 18),
('network', 9, 'user', 95, 'user', 95, 'signup', 34),
('network', 9, 'user', 49, 'user', 49, 'signup', 64),
('network', 10, 'user', 87, 'user', 87, 'signup', 23),
('network', 10, 'user', 21, 'user', 21, 'signup', 44),
('network', 10, 'user', 22, 'user', 22, 'signup', 77),
('network', 10, 'user', 19, 'user', 19, 'signup', 78),
('network', 10, 'user', 45, 'user', 45, 'signup', 80),
('network', 10, 'user', 18, 'user', 18, 'signup', 94),
('network', 12, 'user', 51, 'user', 51, 'signup', 20),
('network', 12, 'user', 64, 'user', 64, 'signup', 58),
('network', 12, 'user', 38, 'user', 38, 'signup', 66),
('network', 12, 'user', 39, 'user', 39, 'signup', 88),
('network', 13, 'user', 54, 'user', 54, 'signup', 16),
('network', 13, 'user', 1829893787, 'user', 1829893787, 'signup', 98),
('network', 14, 'user', 74, 'user', 74, 'signup', 72),
('network', 14, 'user', 32, 'user', 32, 'signup', 91),
('network', 14, 'user', 1383914828, 'user', 1383914828, 'signup', 99),
('network', 14, 'user', 1383914828, 'user', 1383914828, 'profile_photo_update', 102),
('network', 14, 'user', 13, 'user', 13, 'signup', 103),
('network', 14, 'user', 2002635803, 'user', 2002635803, 'signup', 106),
('network', 15, 'user', 71, 'user', 71, 'signup', 31),
('network', 15, 'user', 73, 'user', 73, 'signup', 51),
('network', 15, 'user', 23, 'user', 23, 'signup', 67),
('network', 15, 'user', 44, 'user', 44, 'signup', 79),
('network', 15, 'user', 886555540, 'user', 886555540, 'signup', 104),
('network', 15, 'user', 1617228157, 'user', 1617228157, 'signup', 107),
('network', 16, 'user', 93, 'user', 93, 'signup', 74),
('network', 16, 'user', 88, 'user', 88, 'signup', 76),
('network', 17, 'user', 92, 'user', 92, 'signup', 85),
('network', 18, 'user', 78, 'user', 78, 'signup', 26),
('network', 18, 'user', 28, 'user', 28, 'signup', 28),
('network', 18, 'user', 60, 'user', 60, 'signup', 37),
('network', 19, 'user', 70, 'user', 70, 'signup', 45),
('network', 19, 'user', 85, 'user', 85, 'signup', 52),
('network', 19, 'user', 63, 'user', 63, 'signup', 53),
('network', 20, 'user', 46, 'user', 46, 'signup', 65),
('network', 21, 'user', 55, 'user', 55, 'signup', 17),
('network', 21, 'user', 61, 'user', 61, 'signup', 87),
('network', 22, 'user', 75, 'user', 75, 'signup', 73),
('network', 22, 'user', 30, 'user', 30, 'signup', 75),
('network', 23, 'user', 65, 'user', 65, 'signup', 36),
('network', 23, 'user', 47, 'user', 47, 'signup', 49),
('network', 26, 'user', 77, 'user', 77, 'signup', 27),
('network', 26, 'user', 35, 'user', 35, 'signup', 35),
('network', 26, 'user', 33, 'user', 33, 'signup', 60),
('network', 26, 'user', 34, 'user', 34, 'signup', 81),
('network', 27, 'user', 50, 'user', 50, 'signup', 21),
('network', 27, 'user', 81, 'user', 81, 'signup', 42),
('network', 27, 'user', 90, 'user', 90, 'signup', 84),
('network', 30, 'user', 56, 'user', 56, 'signup', 19),
('network', 30, 'user', 16, 'user', 16, 'signup', 63),
('network', 30, 'user', 17, 'user', 17, 'signup', 69),
('network', 30, 'user', 31, 'user', 31, 'signup', 93),
('network', 31, 'user', 91, 'user', 91, 'signup', 33),
('network', 31, 'user', 24, 'user', 24, 'signup', 47),
('network', 31, 'user', 37, 'user', 37, 'signup', 50),
('network', 31, 'user', 66, 'user', 66, 'signup', 59),
('network', 31, 'user', 573980572, 'user', 573980572, 'signup', 96),
('network', 31, 'user', 674218479, 'user', 674218479, 'signup', 97),
('network', 32, 'user', 84, 'user', 84, 'signup', 24),
('network', 32, 'user', 80, 'user', 80, 'signup', 30),
('network', 32, 'user', 57, 'user', 57, 'signup', 43),
('network', 32, 'user', 86, 'user', 86, 'signup', 57),
('network', 32, 'user', 25, 'user', 25, 'signup', 90),
('network', 33, 'user', 82, 'user', 82, 'signup', 48),
('network', 33, 'user', 89, 'user', 89, 'signup', 55),
('network', 33, 'user', 83, 'user', 83, 'signup', 68),
('network', 33, 'user', 67, 'user', 67, 'signup', 70),
('network', 33, 'user', 94, 'user', 94, 'signup', 92),
('network', 33, 'user', 1610159378, 'user', 1610159378, 'signup', 105),
('network', 34, 'user', 69, 'user', 69, 'signup', 40),
('network', 34, 'user', 40, 'user', 40, 'signup', 54),
('network', 34, 'user', 48, 'user', 48, 'signup', 56),
('network', 34, 'user', 43, 'user', 43, 'signup', 89),
('network', 35, 'user', 79, 'user', 79, 'signup', 25),
('network', 35, 'user', 62, 'user', 62, 'signup', 29),
('network', 35, 'user', 27, 'user', 27, 'signup', 61),
('owner', 1, 'user', 1, 'group', 1, 'advgroup_create', 1),
('owner', 1, 'user', 1, 'group', 2, 'advgroup_create', 2),
('owner', 1, 'user', 1, 'group', 3, 'advgroup_create', 3),
('owner', 1, 'user', 1, 'group', 4, 'advgroup_create', 4),
('owner', 1, 'user', 1, 'group', 5, 'advgroup_create', 5),
('owner', 1, 'user', 1, 'group', 6, 'advgroup_create', 6),
('owner', 1, 'user', 1, 'user', 1, 'profile_photo_update', 95),
('owner', 6, 'user', 6, 'user', 6, 'signup', 11),
('owner', 13, 'user', 13, 'user', 13, 'signup', 103),
('owner', 14, 'user', 14, 'user', 14, 'signup', 71),
('owner', 16, 'user', 16, 'user', 16, 'signup', 63),
('owner', 17, 'user', 17, 'user', 17, 'signup', 69),
('owner', 18, 'user', 18, 'user', 18, 'signup', 94),
('owner', 19, 'user', 19, 'user', 19, 'signup', 78),
('owner', 20, 'user', 20, 'user', 20, 'signup', 39),
('owner', 21, 'user', 21, 'user', 21, 'signup', 44),
('owner', 22, 'user', 22, 'user', 22, 'signup', 77),
('owner', 23, 'user', 23, 'user', 23, 'signup', 67),
('owner', 24, 'user', 24, 'user', 24, 'signup', 47),
('owner', 25, 'user', 25, 'user', 25, 'signup', 90),
('owner', 26, 'user', 26, 'user', 26, 'signup', 62),
('owner', 27, 'user', 27, 'user', 27, 'signup', 61),
('owner', 28, 'user', 28, 'user', 28, 'signup', 28),
('owner', 29, 'user', 29, 'user', 29, 'signup', 41),
('owner', 30, 'user', 30, 'user', 30, 'signup', 75),
('owner', 31, 'user', 31, 'user', 31, 'signup', 93),
('owner', 32, 'user', 32, 'user', 32, 'signup', 91),
('owner', 33, 'user', 33, 'user', 33, 'signup', 60),
('owner', 34, 'user', 34, 'user', 34, 'signup', 81),
('owner', 35, 'user', 35, 'user', 35, 'signup', 35),
('owner', 36, 'user', 36, 'user', 36, 'signup', 32),
('owner', 37, 'user', 37, 'user', 37, 'signup', 50),
('owner', 38, 'user', 38, 'user', 38, 'signup', 66),
('owner', 39, 'user', 39, 'user', 39, 'signup', 88),
('owner', 40, 'user', 40, 'user', 40, 'signup', 54),
('owner', 43, 'user', 43, 'user', 43, 'signup', 89),
('owner', 44, 'user', 44, 'user', 44, 'signup', 79),
('owner', 45, 'user', 45, 'user', 45, 'signup', 80),
('owner', 46, 'user', 46, 'user', 46, 'signup', 65),
('owner', 47, 'user', 47, 'user', 47, 'signup', 49),
('owner', 48, 'user', 48, 'user', 48, 'signup', 56),
('owner', 49, 'user', 49, 'user', 49, 'signup', 64),
('owner', 50, 'user', 50, 'user', 50, 'signup', 21),
('owner', 51, 'user', 51, 'user', 51, 'signup', 20),
('owner', 52, 'user', 52, 'user', 52, 'signup', 15),
('owner', 53, 'user', 53, 'user', 53, 'signup', 14),
('owner', 54, 'user', 54, 'user', 54, 'signup', 16),
('owner', 55, 'user', 55, 'user', 55, 'signup', 17),
('owner', 56, 'user', 56, 'user', 56, 'signup', 19),
('owner', 57, 'user', 57, 'user', 57, 'signup', 43),
('owner', 58, 'user', 58, 'user', 58, 'signup', 18),
('owner', 59, 'user', 59, 'user', 59, 'signup', 86),
('owner', 60, 'user', 60, 'user', 60, 'signup', 37),
('owner', 61, 'user', 61, 'user', 61, 'signup', 87),
('owner', 62, 'user', 62, 'user', 62, 'signup', 29),
('owner', 63, 'user', 63, 'user', 63, 'signup', 53),
('owner', 64, 'user', 64, 'user', 64, 'signup', 58),
('owner', 65, 'user', 65, 'user', 65, 'signup', 36),
('owner', 66, 'user', 66, 'user', 66, 'signup', 59),
('owner', 67, 'user', 67, 'user', 67, 'signup', 70),
('owner', 68, 'user', 68, 'user', 68, 'signup', 38),
('owner', 69, 'user', 69, 'user', 69, 'signup', 40),
('owner', 70, 'user', 70, 'user', 70, 'signup', 45),
('owner', 71, 'user', 71, 'user', 71, 'signup', 31),
('owner', 72, 'user', 72, 'user', 72, 'signup', 82),
('owner', 73, 'user', 73, 'user', 73, 'signup', 51),
('owner', 74, 'user', 74, 'user', 74, 'signup', 72),
('owner', 75, 'user', 75, 'user', 75, 'signup', 73),
('owner', 77, 'user', 77, 'user', 77, 'signup', 27),
('owner', 78, 'user', 78, 'user', 78, 'signup', 26),
('owner', 79, 'user', 79, 'user', 79, 'signup', 25),
('owner', 80, 'user', 80, 'user', 80, 'signup', 30),
('owner', 81, 'user', 81, 'user', 81, 'signup', 42),
('owner', 82, 'user', 82, 'user', 82, 'signup', 48),
('owner', 83, 'user', 83, 'user', 83, 'signup', 68),
('owner', 84, 'user', 84, 'user', 84, 'signup', 24),
('owner', 85, 'user', 85, 'user', 85, 'signup', 52),
('owner', 86, 'user', 86, 'user', 86, 'signup', 57),
('owner', 87, 'user', 87, 'user', 87, 'signup', 23),
('owner', 88, 'user', 88, 'user', 88, 'signup', 76),
('owner', 89, 'user', 89, 'user', 89, 'signup', 55),
('owner', 90, 'user', 90, 'user', 90, 'signup', 84),
('owner', 91, 'user', 91, 'user', 91, 'signup', 33),
('owner', 92, 'user', 92, 'user', 92, 'signup', 85),
('owner', 93, 'user', 93, 'user', 93, 'signup', 74),
('owner', 94, 'user', 94, 'user', 94, 'signup', 92),
('owner', 95, 'user', 95, 'user', 95, 'signup', 34),
('owner', 96, 'user', 96, 'user', 96, 'signup', 83),
('owner', 573980572, 'user', 573980572, 'user', 573980572, 'signup', 96),
('owner', 674218479, 'user', 674218479, 'user', 674218479, 'signup', 97),
('owner', 886555540, 'user', 886555540, 'user', 886555540, 'signup', 104),
('owner', 1383914828, 'user', 1383914828, 'user', 1383914828, 'signup', 99),
('owner', 1383914828, 'user', 1383914828, 'user', 1383914828, 'profile_photo_update', 102),
('owner', 1610159378, 'user', 1610159378, 'user', 1610159378, 'signup', 105),
('owner', 1617228157, 'user', 1617228157, 'user', 1617228157, 'signup', 107),
('owner', 1829893787, 'user', 1829893787, 'user', 1829893787, 'signup', 98),
('owner', 2002635803, 'user', 2002635803, 'user', 2002635803, 'signup', 106),
('parent', 1, 'user', 1, 'group', 1, 'advgroup_create', 1),
('parent', 1, 'user', 1, 'group', 2, 'advgroup_create', 2),
('parent', 1, 'user', 1, 'group', 3, 'advgroup_create', 3),
('parent', 1, 'user', 1, 'group', 4, 'advgroup_create', 4),
('parent', 1, 'user', 1, 'group', 5, 'advgroup_create', 5),
('parent', 1, 'user', 1, 'group', 6, 'advgroup_create', 6),
('parent', 1, 'user', 1, 'user', 1, 'profile_photo_update', 95),
('parent', 6, 'user', 6, 'user', 6, 'signup', 11),
('parent', 13, 'user', 13, 'user', 13, 'signup', 103),
('parent', 14, 'user', 14, 'user', 14, 'signup', 71),
('parent', 16, 'user', 16, 'user', 16, 'signup', 63),
('parent', 17, 'user', 17, 'user', 17, 'signup', 69),
('parent', 18, 'user', 18, 'user', 18, 'signup', 94),
('parent', 19, 'user', 19, 'user', 19, 'signup', 78),
('parent', 20, 'user', 20, 'user', 20, 'signup', 39),
('parent', 21, 'user', 21, 'user', 21, 'signup', 44),
('parent', 22, 'user', 22, 'user', 22, 'signup', 77),
('parent', 23, 'user', 23, 'user', 23, 'signup', 67),
('parent', 24, 'user', 24, 'user', 24, 'signup', 47),
('parent', 25, 'user', 25, 'user', 25, 'signup', 90),
('parent', 26, 'user', 26, 'user', 26, 'signup', 62),
('parent', 27, 'user', 27, 'user', 27, 'signup', 61),
('parent', 28, 'user', 28, 'user', 28, 'signup', 28),
('parent', 29, 'user', 29, 'user', 29, 'signup', 41),
('parent', 30, 'user', 30, 'user', 30, 'signup', 75),
('parent', 31, 'user', 31, 'user', 31, 'signup', 93),
('parent', 32, 'user', 32, 'user', 32, 'signup', 91),
('parent', 33, 'user', 33, 'user', 33, 'signup', 60),
('parent', 34, 'user', 34, 'user', 34, 'signup', 81),
('parent', 35, 'user', 35, 'user', 35, 'signup', 35),
('parent', 36, 'user', 36, 'user', 36, 'signup', 32),
('parent', 37, 'user', 37, 'user', 37, 'signup', 50),
('parent', 38, 'user', 38, 'user', 38, 'signup', 66),
('parent', 39, 'user', 39, 'user', 39, 'signup', 88),
('parent', 40, 'user', 40, 'user', 40, 'signup', 54),
('parent', 43, 'user', 43, 'user', 43, 'signup', 89),
('parent', 44, 'user', 44, 'user', 44, 'signup', 79),
('parent', 45, 'user', 45, 'user', 45, 'signup', 80),
('parent', 46, 'user', 46, 'user', 46, 'signup', 65),
('parent', 47, 'user', 47, 'user', 47, 'signup', 49),
('parent', 48, 'user', 48, 'user', 48, 'signup', 56),
('parent', 49, 'user', 49, 'user', 49, 'signup', 64),
('parent', 50, 'user', 50, 'user', 50, 'signup', 21),
('parent', 51, 'user', 51, 'user', 51, 'signup', 20),
('parent', 52, 'user', 52, 'user', 52, 'signup', 15),
('parent', 53, 'user', 53, 'user', 53, 'signup', 14),
('parent', 54, 'user', 54, 'user', 54, 'signup', 16),
('parent', 55, 'user', 55, 'user', 55, 'signup', 17),
('parent', 56, 'user', 56, 'user', 56, 'signup', 19),
('parent', 57, 'user', 57, 'user', 57, 'signup', 43),
('parent', 58, 'user', 58, 'user', 58, 'signup', 18),
('parent', 59, 'user', 59, 'user', 59, 'signup', 86),
('parent', 60, 'user', 60, 'user', 60, 'signup', 37),
('parent', 61, 'user', 61, 'user', 61, 'signup', 87),
('parent', 62, 'user', 62, 'user', 62, 'signup', 29),
('parent', 63, 'user', 63, 'user', 63, 'signup', 53),
('parent', 64, 'user', 64, 'user', 64, 'signup', 58),
('parent', 65, 'user', 65, 'user', 65, 'signup', 36),
('parent', 66, 'user', 66, 'user', 66, 'signup', 59),
('parent', 67, 'user', 67, 'user', 67, 'signup', 70),
('parent', 68, 'user', 68, 'user', 68, 'signup', 38),
('parent', 69, 'user', 69, 'user', 69, 'signup', 40),
('parent', 70, 'user', 70, 'user', 70, 'signup', 45),
('parent', 71, 'user', 71, 'user', 71, 'signup', 31),
('parent', 72, 'user', 72, 'user', 72, 'signup', 82),
('parent', 73, 'user', 73, 'user', 73, 'signup', 51),
('parent', 74, 'user', 74, 'user', 74, 'signup', 72),
('parent', 75, 'user', 75, 'user', 75, 'signup', 73),
('parent', 77, 'user', 77, 'user', 77, 'signup', 27),
('parent', 78, 'user', 78, 'user', 78, 'signup', 26),
('parent', 79, 'user', 79, 'user', 79, 'signup', 25),
('parent', 80, 'user', 80, 'user', 80, 'signup', 30),
('parent', 81, 'user', 81, 'user', 81, 'signup', 42),
('parent', 82, 'user', 82, 'user', 82, 'signup', 48),
('parent', 83, 'user', 83, 'user', 83, 'signup', 68),
('parent', 84, 'user', 84, 'user', 84, 'signup', 24),
('parent', 85, 'user', 85, 'user', 85, 'signup', 52),
('parent', 86, 'user', 86, 'user', 86, 'signup', 57),
('parent', 87, 'user', 87, 'user', 87, 'signup', 23),
('parent', 88, 'user', 88, 'user', 88, 'signup', 76),
('parent', 89, 'user', 89, 'user', 89, 'signup', 55),
('parent', 90, 'user', 90, 'user', 90, 'signup', 84),
('parent', 91, 'user', 91, 'user', 91, 'signup', 33),
('parent', 92, 'user', 92, 'user', 92, 'signup', 85),
('parent', 93, 'user', 93, 'user', 93, 'signup', 74),
('parent', 94, 'user', 94, 'user', 94, 'signup', 92),
('parent', 95, 'user', 95, 'user', 95, 'signup', 34),
('parent', 96, 'user', 96, 'user', 96, 'signup', 83),
('parent', 573980572, 'user', 573980572, 'user', 573980572, 'signup', 96),
('parent', 674218479, 'user', 674218479, 'user', 674218479, 'signup', 97),
('parent', 886555540, 'user', 886555540, 'user', 886555540, 'signup', 104),
('parent', 1383914828, 'user', 1383914828, 'user', 1383914828, 'signup', 99),
('parent', 1383914828, 'user', 1383914828, 'user', 1383914828, 'profile_photo_update', 102),
('parent', 1610159378, 'user', 1610159378, 'user', 1610159378, 'signup', 105),
('parent', 1617228157, 'user', 1617228157, 'user', 1617228157, 'signup', 107),
('parent', 1829893787, 'user', 1829893787, 'user', 1829893787, 'signup', 98),
('parent', 2002635803, 'user', 2002635803, 'user', 2002635803, 'signup', 106),
('registered', 0, 'user', 1, 'group', 1, 'advgroup_create', 1),
('registered', 0, 'user', 1, 'group', 2, 'advgroup_create', 2),
('registered', 0, 'user', 1, 'group', 3, 'advgroup_create', 3),
('registered', 0, 'user', 1, 'group', 4, 'advgroup_create', 4);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_announcement_announcements`
--

CREATE TABLE IF NOT EXISTS `engine4_announcement_announcements` (
  `announcement_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`announcement_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_announcement_announcements`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_authorization_allow`
--

CREATE TABLE IF NOT EXISTS `engine4_authorization_allow` (
  `resource_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `action` varchar(16) character set latin1 collate latin1_general_ci NOT NULL,
  `role` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `role_id` int(11) unsigned NOT NULL default '0',
  `value` tinyint(1) NOT NULL default '0',
  `params` text collate utf8_unicode_ci,
  PRIMARY KEY  (`resource_type`,`resource_id`,`action`,`role`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_authorization_allow`
--

INSERT INTO `engine4_authorization_allow` (`resource_type`, `resource_id`, `action`, `role`, `role_id`, `value`, `params`) VALUES
('group', 1, 'comment', 'advgroup_list', 1, 1, NULL),
('group', 1, 'comment', 'member', 0, 1, NULL),
('group', 1, 'event', 'advgroup_list', 1, 1, NULL),
('group', 1, 'invite', 'advgroup_list', 1, 1, NULL),
('group', 1, 'photo', 'advgroup_list', 1, 1, NULL),
('group', 1, 'photo', 'member', 0, 1, NULL),
('group', 1, 'photo.edit', 'advgroup_list', 1, 1, NULL),
('group', 1, 'topic.edit', 'advgroup_list', 1, 1, NULL),
('group', 1, 'view', 'advgroup_list', 1, 1, NULL),
('group', 1, 'view', 'member', 0, 1, NULL),
('group', 1, 'view', 'member_requested', 0, 1, NULL),
('group', 1, 'view', 'registered', 0, 1, NULL),
('group', 2, 'comment', 'advgroup_list', 2, 1, NULL),
('group', 2, 'comment', 'member', 0, 1, NULL),
('group', 2, 'event', 'advgroup_list', 2, 1, NULL),
('group', 2, 'invite', 'advgroup_list', 2, 1, NULL),
('group', 2, 'photo', 'advgroup_list', 2, 1, NULL),
('group', 2, 'photo', 'member', 0, 1, NULL),
('group', 2, 'photo.edit', 'advgroup_list', 2, 1, NULL),
('group', 2, 'topic.edit', 'advgroup_list', 2, 1, NULL),
('group', 2, 'view', 'advgroup_list', 2, 1, NULL),
('group', 2, 'view', 'everyone', 0, 1, NULL),
('group', 2, 'view', 'member', 0, 1, NULL),
('group', 2, 'view', 'member_requested', 0, 1, NULL),
('group', 2, 'view', 'registered', 0, 1, NULL),
('group', 3, 'comment', 'advgroup_list', 3, 1, NULL),
('group', 3, 'comment', 'member', 0, 1, NULL),
('group', 3, 'event', 'advgroup_list', 3, 1, NULL),
('group', 3, 'invite', 'advgroup_list', 3, 1, NULL),
('group', 3, 'photo', 'advgroup_list', 3, 1, NULL),
('group', 3, 'photo', 'member', 0, 1, NULL),
('group', 3, 'photo.edit', 'advgroup_list', 3, 1, NULL),
('group', 3, 'topic.edit', 'advgroup_list', 3, 1, NULL),
('group', 3, 'view', 'advgroup_list', 3, 1, NULL),
('group', 3, 'view', 'everyone', 0, 1, NULL),
('group', 3, 'view', 'member', 0, 1, NULL),
('group', 3, 'view', 'member_requested', 0, 1, NULL),
('group', 3, 'view', 'registered', 0, 1, NULL),
('group', 4, 'comment', 'advgroup_list', 4, 1, NULL),
('group', 4, 'comment', 'member', 0, 1, NULL),
('group', 4, 'event', 'advgroup_list', 4, 1, NULL),
('group', 4, 'invite', 'advgroup_list', 4, 1, NULL),
('group', 4, 'photo', 'advgroup_list', 4, 1, NULL),
('group', 4, 'photo', 'member', 0, 1, NULL),
('group', 4, 'photo.edit', 'advgroup_list', 4, 1, NULL),
('group', 4, 'topic.edit', 'advgroup_list', 4, 1, NULL),
('group', 4, 'view', 'advgroup_list', 4, 1, NULL),
('group', 4, 'view', 'everyone', 0, 1, NULL),
('group', 4, 'view', 'member', 0, 1, NULL),
('group', 4, 'view', 'member_requested', 0, 1, NULL),
('group', 4, 'view', 'registered', 0, 1, NULL),
('group', 5, 'comment', 'advgroup_list', 5, 1, NULL),
('group', 5, 'comment', 'member', 0, 1, NULL),
('group', 5, 'event', 'advgroup_list', 5, 1, NULL),
('group', 5, 'invite', 'advgroup_list', 5, 1, NULL),
('group', 5, 'photo', 'advgroup_list', 5, 1, NULL),
('group', 5, 'photo', 'member', 0, 1, NULL),
('group', 5, 'photo.edit', 'advgroup_list', 5, 1, NULL),
('group', 5, 'topic.edit', 'advgroup_list', 5, 1, NULL),
('group', 5, 'view', 'advgroup_list', 5, 1, NULL),
('group', 5, 'view', 'everyone', 0, 1, NULL),
('group', 5, 'view', 'member', 0, 1, NULL),
('group', 5, 'view', 'member_requested', 0, 1, NULL),
('group', 5, 'view', 'registered', 0, 1, NULL),
('group', 6, 'comment', 'advgroup_list', 6, 1, NULL),
('group', 6, 'comment', 'member', 0, 1, NULL),
('group', 6, 'event', 'advgroup_list', 6, 1, NULL),
('group', 6, 'invite', 'advgroup_list', 6, 1, NULL),
('group', 6, 'photo', 'advgroup_list', 6, 1, NULL),
('group', 6, 'photo', 'member', 0, 1, NULL),
('group', 6, 'photo.edit', 'advgroup_list', 6, 1, NULL),
('group', 6, 'topic.edit', 'advgroup_list', 6, 1, NULL),
('group', 6, 'view', 'advgroup_list', 6, 1, NULL),
('group', 6, 'view', 'everyone', 0, 1, NULL),
('group', 6, 'view', 'member', 0, 1, NULL),
('group', 6, 'view', 'member_requested', 0, 1, NULL),
('group', 6, 'view', 'registered', 0, 1, NULL),
('user', 1, 'comment', 'everyone', 0, 1, NULL),
('user', 1, 'comment', 'member', 0, 1, NULL),
('user', 1, 'comment', 'network', 0, 1, NULL),
('user', 1, 'comment', 'registered', 0, 1, NULL),
('user', 1, 'view', 'everyone', 0, 1, NULL),
('user', 1, 'view', 'member', 0, 1, NULL),
('user', 1, 'view', 'network', 0, 1, NULL),
('user', 1, 'view', 'registered', 0, 1, NULL),
('user', 6, 'comment', 'network', 0, 1, NULL),
('user', 6, 'view', 'everyone', 0, 1, NULL),
('user', 6, 'view', 'member', 0, 1, NULL),
('user', 6, 'view', 'network', 0, 1, NULL),
('user', 6, 'view', 'registered', 0, 1, NULL),
('user', 13, 'comment', 'network', 0, 1, NULL),
('user', 13, 'view', 'everyone', 0, 1, NULL),
('user', 13, 'view', 'member', 0, 1, NULL),
('user', 13, 'view', 'network', 0, 1, NULL),
('user', 13, 'view', 'registered', 0, 1, NULL),
('user', 14, 'comment', 'network', 0, 1, NULL),
('user', 14, 'view', 'everyone', 0, 1, NULL),
('user', 14, 'view', 'member', 0, 1, NULL),
('user', 14, 'view', 'network', 0, 1, NULL),
('user', 14, 'view', 'registered', 0, 1, NULL),
('user', 16, 'comment', 'network', 0, 1, NULL),
('user', 16, 'view', 'everyone', 0, 1, NULL),
('user', 16, 'view', 'member', 0, 1, NULL),
('user', 16, 'view', 'network', 0, 1, NULL),
('user', 16, 'view', 'registered', 0, 1, NULL),
('user', 17, 'comment', 'network', 0, 1, NULL),
('user', 17, 'view', 'everyone', 0, 1, NULL),
('user', 17, 'view', 'member', 0, 1, NULL),
('user', 17, 'view', 'network', 0, 1, NULL),
('user', 17, 'view', 'registered', 0, 1, NULL),
('user', 18, 'comment', 'network', 0, 1, NULL),
('user', 18, 'view', 'everyone', 0, 1, NULL),
('user', 18, 'view', 'member', 0, 1, NULL),
('user', 18, 'view', 'network', 0, 1, NULL),
('user', 18, 'view', 'registered', 0, 1, NULL),
('user', 19, 'comment', 'network', 0, 1, NULL),
('user', 19, 'view', 'everyone', 0, 1, NULL),
('user', 19, 'view', 'member', 0, 1, NULL),
('user', 19, 'view', 'network', 0, 1, NULL),
('user', 19, 'view', 'registered', 0, 1, NULL),
('user', 20, 'comment', 'network', 0, 1, NULL),
('user', 20, 'view', 'everyone', 0, 1, NULL),
('user', 20, 'view', 'member', 0, 1, NULL),
('user', 20, 'view', 'network', 0, 1, NULL),
('user', 20, 'view', 'registered', 0, 1, NULL),
('user', 21, 'comment', 'network', 0, 1, NULL),
('user', 21, 'view', 'everyone', 0, 1, NULL),
('user', 21, 'view', 'member', 0, 1, NULL),
('user', 21, 'view', 'network', 0, 1, NULL),
('user', 21, 'view', 'registered', 0, 1, NULL),
('user', 22, 'comment', 'network', 0, 1, NULL),
('user', 22, 'view', 'everyone', 0, 1, NULL),
('user', 22, 'view', 'member', 0, 1, NULL),
('user', 22, 'view', 'network', 0, 1, NULL),
('user', 22, 'view', 'registered', 0, 1, NULL),
('user', 23, 'comment', 'network', 0, 1, NULL),
('user', 23, 'view', 'everyone', 0, 1, NULL),
('user', 23, 'view', 'member', 0, 1, NULL),
('user', 23, 'view', 'network', 0, 1, NULL),
('user', 23, 'view', 'registered', 0, 1, NULL),
('user', 24, 'comment', 'network', 0, 1, NULL),
('user', 24, 'view', 'everyone', 0, 1, NULL),
('user', 24, 'view', 'member', 0, 1, NULL),
('user', 24, 'view', 'network', 0, 1, NULL),
('user', 24, 'view', 'registered', 0, 1, NULL),
('user', 25, 'comment', 'network', 0, 1, NULL),
('user', 25, 'view', 'everyone', 0, 1, NULL),
('user', 25, 'view', 'member', 0, 1, NULL),
('user', 25, 'view', 'network', 0, 1, NULL),
('user', 25, 'view', 'registered', 0, 1, NULL),
('user', 26, 'comment', 'network', 0, 1, NULL),
('user', 26, 'view', 'everyone', 0, 1, NULL),
('user', 26, 'view', 'member', 0, 1, NULL),
('user', 26, 'view', 'network', 0, 1, NULL),
('user', 26, 'view', 'registered', 0, 1, NULL),
('user', 27, 'comment', 'network', 0, 1, NULL),
('user', 27, 'view', 'everyone', 0, 1, NULL),
('user', 27, 'view', 'member', 0, 1, NULL),
('user', 27, 'view', 'network', 0, 1, NULL),
('user', 27, 'view', 'registered', 0, 1, NULL),
('user', 28, 'comment', 'network', 0, 1, NULL),
('user', 28, 'view', 'everyone', 0, 1, NULL),
('user', 28, 'view', 'member', 0, 1, NULL),
('user', 28, 'view', 'network', 0, 1, NULL),
('user', 28, 'view', 'registered', 0, 1, NULL),
('user', 29, 'comment', 'network', 0, 1, NULL),
('user', 29, 'view', 'everyone', 0, 1, NULL),
('user', 29, 'view', 'member', 0, 1, NULL),
('user', 29, 'view', 'network', 0, 1, NULL),
('user', 29, 'view', 'registered', 0, 1, NULL),
('user', 30, 'comment', 'network', 0, 1, NULL),
('user', 30, 'view', 'everyone', 0, 1, NULL),
('user', 30, 'view', 'member', 0, 1, NULL),
('user', 30, 'view', 'network', 0, 1, NULL),
('user', 30, 'view', 'registered', 0, 1, NULL),
('user', 31, 'comment', 'network', 0, 1, NULL),
('user', 31, 'view', 'everyone', 0, 1, NULL),
('user', 31, 'view', 'member', 0, 1, NULL),
('user', 31, 'view', 'network', 0, 1, NULL),
('user', 31, 'view', 'registered', 0, 1, NULL),
('user', 32, 'comment', 'network', 0, 1, NULL),
('user', 32, 'view', 'everyone', 0, 1, NULL),
('user', 32, 'view', 'member', 0, 1, NULL),
('user', 32, 'view', 'network', 0, 1, NULL),
('user', 32, 'view', 'registered', 0, 1, NULL),
('user', 33, 'comment', 'network', 0, 1, NULL),
('user', 33, 'view', 'everyone', 0, 1, NULL),
('user', 33, 'view', 'member', 0, 1, NULL),
('user', 33, 'view', 'network', 0, 1, NULL),
('user', 33, 'view', 'registered', 0, 1, NULL),
('user', 34, 'comment', 'network', 0, 1, NULL),
('user', 34, 'view', 'everyone', 0, 1, NULL),
('user', 34, 'view', 'member', 0, 1, NULL),
('user', 34, 'view', 'network', 0, 1, NULL),
('user', 34, 'view', 'registered', 0, 1, NULL),
('user', 35, 'comment', 'network', 0, 1, NULL),
('user', 35, 'view', 'everyone', 0, 1, NULL),
('user', 35, 'view', 'member', 0, 1, NULL),
('user', 35, 'view', 'network', 0, 1, NULL),
('user', 35, 'view', 'registered', 0, 1, NULL),
('user', 36, 'comment', 'network', 0, 1, NULL),
('user', 36, 'view', 'everyone', 0, 1, NULL),
('user', 36, 'view', 'member', 0, 1, NULL),
('user', 36, 'view', 'network', 0, 1, NULL),
('user', 36, 'view', 'registered', 0, 1, NULL),
('user', 37, 'comment', 'network', 0, 1, NULL),
('user', 37, 'view', 'everyone', 0, 1, NULL),
('user', 37, 'view', 'member', 0, 1, NULL),
('user', 37, 'view', 'network', 0, 1, NULL),
('user', 37, 'view', 'registered', 0, 1, NULL),
('user', 38, 'comment', 'network', 0, 1, NULL),
('user', 38, 'view', 'everyone', 0, 1, NULL),
('user', 38, 'view', 'member', 0, 1, NULL),
('user', 38, 'view', 'network', 0, 1, NULL),
('user', 38, 'view', 'registered', 0, 1, NULL),
('user', 39, 'comment', 'network', 0, 1, NULL),
('user', 39, 'view', 'everyone', 0, 1, NULL),
('user', 39, 'view', 'member', 0, 1, NULL),
('user', 39, 'view', 'network', 0, 1, NULL),
('user', 39, 'view', 'registered', 0, 1, NULL),
('user', 40, 'comment', 'network', 0, 1, NULL),
('user', 40, 'view', 'everyone', 0, 1, NULL),
('user', 40, 'view', 'member', 0, 1, NULL),
('user', 40, 'view', 'network', 0, 1, NULL),
('user', 40, 'view', 'registered', 0, 1, NULL),
('user', 43, 'comment', 'network', 0, 1, NULL),
('user', 43, 'view', 'everyone', 0, 1, NULL),
('user', 43, 'view', 'member', 0, 1, NULL),
('user', 43, 'view', 'network', 0, 1, NULL),
('user', 43, 'view', 'registered', 0, 1, NULL),
('user', 44, 'comment', 'network', 0, 1, NULL),
('user', 44, 'view', 'everyone', 0, 1, NULL),
('user', 44, 'view', 'member', 0, 1, NULL),
('user', 44, 'view', 'network', 0, 1, NULL),
('user', 44, 'view', 'registered', 0, 1, NULL),
('user', 45, 'comment', 'network', 0, 1, NULL),
('user', 45, 'view', 'everyone', 0, 1, NULL),
('user', 45, 'view', 'member', 0, 1, NULL),
('user', 45, 'view', 'network', 0, 1, NULL),
('user', 45, 'view', 'registered', 0, 1, NULL),
('user', 46, 'comment', 'network', 0, 1, NULL),
('user', 46, 'view', 'everyone', 0, 1, NULL),
('user', 46, 'view', 'member', 0, 1, NULL),
('user', 46, 'view', 'network', 0, 1, NULL),
('user', 46, 'view', 'registered', 0, 1, NULL),
('user', 47, 'comment', 'network', 0, 1, NULL),
('user', 47, 'view', 'everyone', 0, 1, NULL),
('user', 47, 'view', 'member', 0, 1, NULL),
('user', 47, 'view', 'network', 0, 1, NULL),
('user', 47, 'view', 'registered', 0, 1, NULL),
('user', 48, 'comment', 'network', 0, 1, NULL),
('user', 48, 'view', 'everyone', 0, 1, NULL),
('user', 48, 'view', 'member', 0, 1, NULL),
('user', 48, 'view', 'network', 0, 1, NULL),
('user', 48, 'view', 'registered', 0, 1, NULL),
('user', 49, 'comment', 'network', 0, 1, NULL),
('user', 49, 'view', 'everyone', 0, 1, NULL),
('user', 49, 'view', 'member', 0, 1, NULL),
('user', 49, 'view', 'network', 0, 1, NULL),
('user', 49, 'view', 'registered', 0, 1, NULL),
('user', 50, 'comment', 'network', 0, 1, NULL),
('user', 50, 'view', 'everyone', 0, 1, NULL),
('user', 50, 'view', 'member', 0, 1, NULL),
('user', 50, 'view', 'network', 0, 1, NULL),
('user', 50, 'view', 'registered', 0, 1, NULL),
('user', 51, 'comment', 'network', 0, 1, NULL),
('user', 51, 'view', 'everyone', 0, 1, NULL),
('user', 51, 'view', 'member', 0, 1, NULL),
('user', 51, 'view', 'network', 0, 1, NULL),
('user', 51, 'view', 'registered', 0, 1, NULL),
('user', 52, 'comment', 'network', 0, 1, NULL),
('user', 52, 'view', 'everyone', 0, 1, NULL),
('user', 52, 'view', 'member', 0, 1, NULL),
('user', 52, 'view', 'network', 0, 1, NULL),
('user', 52, 'view', 'registered', 0, 1, NULL),
('user', 53, 'comment', 'network', 0, 1, NULL),
('user', 53, 'view', 'everyone', 0, 1, NULL),
('user', 53, 'view', 'member', 0, 1, NULL),
('user', 53, 'view', 'network', 0, 1, NULL),
('user', 53, 'view', 'registered', 0, 1, NULL),
('user', 54, 'comment', 'network', 0, 1, NULL),
('user', 54, 'view', 'everyone', 0, 1, NULL),
('user', 54, 'view', 'member', 0, 1, NULL),
('user', 54, 'view', 'network', 0, 1, NULL),
('user', 54, 'view', 'registered', 0, 1, NULL),
('user', 55, 'comment', 'network', 0, 1, NULL),
('user', 55, 'view', 'everyone', 0, 1, NULL),
('user', 55, 'view', 'member', 0, 1, NULL),
('user', 55, 'view', 'network', 0, 1, NULL),
('user', 55, 'view', 'registered', 0, 1, NULL),
('user', 56, 'comment', 'network', 0, 1, NULL),
('user', 56, 'view', 'everyone', 0, 1, NULL),
('user', 56, 'view', 'member', 0, 1, NULL),
('user', 56, 'view', 'network', 0, 1, NULL),
('user', 56, 'view', 'registered', 0, 1, NULL),
('user', 57, 'comment', 'network', 0, 1, NULL),
('user', 57, 'view', 'everyone', 0, 1, NULL),
('user', 57, 'view', 'member', 0, 1, NULL),
('user', 57, 'view', 'network', 0, 1, NULL),
('user', 57, 'view', 'registered', 0, 1, NULL),
('user', 58, 'comment', 'network', 0, 1, NULL),
('user', 58, 'view', 'everyone', 0, 1, NULL),
('user', 58, 'view', 'member', 0, 1, NULL),
('user', 58, 'view', 'network', 0, 1, NULL),
('user', 58, 'view', 'registered', 0, 1, NULL),
('user', 59, 'comment', 'network', 0, 1, NULL),
('user', 59, 'view', 'everyone', 0, 1, NULL),
('user', 59, 'view', 'member', 0, 1, NULL),
('user', 59, 'view', 'network', 0, 1, NULL),
('user', 59, 'view', 'registered', 0, 1, NULL),
('user', 60, 'comment', 'network', 0, 1, NULL),
('user', 60, 'view', 'everyone', 0, 1, NULL),
('user', 60, 'view', 'member', 0, 1, NULL),
('user', 60, 'view', 'network', 0, 1, NULL),
('user', 60, 'view', 'registered', 0, 1, NULL),
('user', 61, 'comment', 'network', 0, 1, NULL),
('user', 61, 'view', 'everyone', 0, 1, NULL),
('user', 61, 'view', 'member', 0, 1, NULL),
('user', 61, 'view', 'network', 0, 1, NULL),
('user', 61, 'view', 'registered', 0, 1, NULL),
('user', 62, 'comment', 'network', 0, 1, NULL),
('user', 62, 'view', 'everyone', 0, 1, NULL),
('user', 62, 'view', 'member', 0, 1, NULL),
('user', 62, 'view', 'network', 0, 1, NULL),
('user', 62, 'view', 'registered', 0, 1, NULL),
('user', 63, 'comment', 'network', 0, 1, NULL),
('user', 63, 'view', 'everyone', 0, 1, NULL),
('user', 63, 'view', 'member', 0, 1, NULL),
('user', 63, 'view', 'network', 0, 1, NULL),
('user', 63, 'view', 'registered', 0, 1, NULL),
('user', 64, 'comment', 'network', 0, 1, NULL),
('user', 64, 'view', 'everyone', 0, 1, NULL),
('user', 64, 'view', 'member', 0, 1, NULL),
('user', 64, 'view', 'network', 0, 1, NULL),
('user', 64, 'view', 'registered', 0, 1, NULL),
('user', 65, 'comment', 'network', 0, 1, NULL),
('user', 65, 'view', 'everyone', 0, 1, NULL),
('user', 65, 'view', 'member', 0, 1, NULL),
('user', 65, 'view', 'network', 0, 1, NULL),
('user', 65, 'view', 'registered', 0, 1, NULL),
('user', 66, 'comment', 'network', 0, 1, NULL),
('user', 66, 'view', 'everyone', 0, 1, NULL),
('user', 66, 'view', 'member', 0, 1, NULL),
('user', 66, 'view', 'network', 0, 1, NULL),
('user', 66, 'view', 'registered', 0, 1, NULL),
('user', 67, 'comment', 'network', 0, 1, NULL),
('user', 67, 'view', 'everyone', 0, 1, NULL),
('user', 67, 'view', 'member', 0, 1, NULL),
('user', 67, 'view', 'network', 0, 1, NULL),
('user', 67, 'view', 'registered', 0, 1, NULL),
('user', 68, 'comment', 'network', 0, 1, NULL),
('user', 68, 'view', 'everyone', 0, 1, NULL),
('user', 68, 'view', 'member', 0, 1, NULL),
('user', 68, 'view', 'network', 0, 1, NULL),
('user', 68, 'view', 'registered', 0, 1, NULL),
('user', 69, 'comment', 'network', 0, 1, NULL),
('user', 69, 'view', 'everyone', 0, 1, NULL),
('user', 69, 'view', 'member', 0, 1, NULL),
('user', 69, 'view', 'network', 0, 1, NULL),
('user', 69, 'view', 'registered', 0, 1, NULL),
('user', 70, 'comment', 'network', 0, 1, NULL),
('user', 70, 'view', 'everyone', 0, 1, NULL),
('user', 70, 'view', 'member', 0, 1, NULL),
('user', 70, 'view', 'network', 0, 1, NULL),
('user', 70, 'view', 'registered', 0, 1, NULL),
('user', 71, 'comment', 'network', 0, 1, NULL),
('user', 71, 'view', 'everyone', 0, 1, NULL),
('user', 71, 'view', 'member', 0, 1, NULL),
('user', 71, 'view', 'network', 0, 1, NULL),
('user', 71, 'view', 'registered', 0, 1, NULL),
('user', 72, 'comment', 'network', 0, 1, NULL),
('user', 72, 'view', 'everyone', 0, 1, NULL),
('user', 72, 'view', 'member', 0, 1, NULL),
('user', 72, 'view', 'network', 0, 1, NULL),
('user', 72, 'view', 'registered', 0, 1, NULL),
('user', 73, 'comment', 'network', 0, 1, NULL),
('user', 73, 'view', 'everyone', 0, 1, NULL),
('user', 73, 'view', 'member', 0, 1, NULL),
('user', 73, 'view', 'network', 0, 1, NULL),
('user', 73, 'view', 'registered', 0, 1, NULL),
('user', 74, 'comment', 'network', 0, 1, NULL),
('user', 74, 'view', 'everyone', 0, 1, NULL),
('user', 74, 'view', 'member', 0, 1, NULL),
('user', 74, 'view', 'network', 0, 1, NULL),
('user', 74, 'view', 'registered', 0, 1, NULL),
('user', 75, 'comment', 'network', 0, 1, NULL),
('user', 75, 'view', 'everyone', 0, 1, NULL),
('user', 75, 'view', 'member', 0, 1, NULL),
('user', 75, 'view', 'network', 0, 1, NULL),
('user', 75, 'view', 'registered', 0, 1, NULL),
('user', 77, 'comment', 'network', 0, 1, NULL),
('user', 77, 'view', 'everyone', 0, 1, NULL),
('user', 77, 'view', 'member', 0, 1, NULL),
('user', 77, 'view', 'network', 0, 1, NULL),
('user', 77, 'view', 'registered', 0, 1, NULL),
('user', 78, 'comment', 'network', 0, 1, NULL),
('user', 78, 'view', 'everyone', 0, 1, NULL),
('user', 78, 'view', 'member', 0, 1, NULL),
('user', 78, 'view', 'network', 0, 1, NULL),
('user', 78, 'view', 'registered', 0, 1, NULL),
('user', 79, 'comment', 'network', 0, 1, NULL),
('user', 79, 'view', 'everyone', 0, 1, NULL),
('user', 79, 'view', 'member', 0, 1, NULL),
('user', 79, 'view', 'network', 0, 1, NULL),
('user', 79, 'view', 'registered', 0, 1, NULL),
('user', 80, 'comment', 'network', 0, 1, NULL),
('user', 80, 'view', 'everyone', 0, 1, NULL),
('user', 80, 'view', 'member', 0, 1, NULL),
('user', 80, 'view', 'network', 0, 1, NULL),
('user', 80, 'view', 'registered', 0, 1, NULL),
('user', 81, 'comment', 'network', 0, 1, NULL),
('user', 81, 'view', 'everyone', 0, 1, NULL),
('user', 81, 'view', 'member', 0, 1, NULL),
('user', 81, 'view', 'network', 0, 1, NULL),
('user', 81, 'view', 'registered', 0, 1, NULL),
('user', 82, 'comment', 'network', 0, 1, NULL),
('user', 82, 'view', 'everyone', 0, 1, NULL),
('user', 82, 'view', 'member', 0, 1, NULL),
('user', 82, 'view', 'network', 0, 1, NULL),
('user', 82, 'view', 'registered', 0, 1, NULL),
('user', 83, 'comment', 'network', 0, 1, NULL),
('user', 83, 'view', 'everyone', 0, 1, NULL),
('user', 83, 'view', 'member', 0, 1, NULL),
('user', 83, 'view', 'network', 0, 1, NULL),
('user', 83, 'view', 'registered', 0, 1, NULL),
('user', 84, 'comment', 'network', 0, 1, NULL),
('user', 84, 'view', 'everyone', 0, 1, NULL),
('user', 84, 'view', 'member', 0, 1, NULL),
('user', 84, 'view', 'network', 0, 1, NULL),
('user', 84, 'view', 'registered', 0, 1, NULL),
('user', 85, 'comment', 'network', 0, 1, NULL),
('user', 85, 'view', 'everyone', 0, 1, NULL),
('user', 85, 'view', 'member', 0, 1, NULL),
('user', 85, 'view', 'network', 0, 1, NULL),
('user', 85, 'view', 'registered', 0, 1, NULL),
('user', 86, 'comment', 'network', 0, 1, NULL),
('user', 86, 'view', 'everyone', 0, 1, NULL),
('user', 86, 'view', 'member', 0, 1, NULL),
('user', 86, 'view', 'network', 0, 1, NULL),
('user', 86, 'view', 'registered', 0, 1, NULL),
('user', 87, 'comment', 'network', 0, 1, NULL),
('user', 87, 'view', 'everyone', 0, 1, NULL),
('user', 87, 'view', 'member', 0, 1, NULL),
('user', 87, 'view', 'network', 0, 1, NULL),
('user', 87, 'view', 'registered', 0, 1, NULL),
('user', 88, 'comment', 'network', 0, 1, NULL),
('user', 88, 'view', 'everyone', 0, 1, NULL),
('user', 88, 'view', 'member', 0, 1, NULL),
('user', 88, 'view', 'network', 0, 1, NULL),
('user', 88, 'view', 'registered', 0, 1, NULL),
('user', 89, 'comment', 'network', 0, 1, NULL),
('user', 89, 'view', 'everyone', 0, 1, NULL),
('user', 89, 'view', 'member', 0, 1, NULL),
('user', 89, 'view', 'network', 0, 1, NULL),
('user', 89, 'view', 'registered', 0, 1, NULL),
('user', 90, 'comment', 'network', 0, 1, NULL),
('user', 90, 'view', 'everyone', 0, 1, NULL),
('user', 90, 'view', 'member', 0, 1, NULL),
('user', 90, 'view', 'network', 0, 1, NULL),
('user', 90, 'view', 'registered', 0, 1, NULL),
('user', 91, 'comment', 'network', 0, 1, NULL),
('user', 91, 'view', 'everyone', 0, 1, NULL),
('user', 91, 'view', 'member', 0, 1, NULL),
('user', 91, 'view', 'network', 0, 1, NULL),
('user', 91, 'view', 'registered', 0, 1, NULL),
('user', 92, 'comment', 'network', 0, 1, NULL),
('user', 92, 'view', 'everyone', 0, 1, NULL),
('user', 92, 'view', 'member', 0, 1, NULL),
('user', 92, 'view', 'network', 0, 1, NULL),
('user', 92, 'view', 'registered', 0, 1, NULL),
('user', 93, 'comment', 'network', 0, 1, NULL),
('user', 93, 'view', 'everyone', 0, 1, NULL),
('user', 93, 'view', 'member', 0, 1, NULL),
('user', 93, 'view', 'network', 0, 1, NULL),
('user', 93, 'view', 'registered', 0, 1, NULL),
('user', 94, 'comment', 'network', 0, 1, NULL),
('user', 94, 'view', 'everyone', 0, 1, NULL),
('user', 94, 'view', 'member', 0, 1, NULL),
('user', 94, 'view', 'network', 0, 1, NULL),
('user', 94, 'view', 'registered', 0, 1, NULL),
('user', 95, 'comment', 'network', 0, 1, NULL),
('user', 95, 'view', 'everyone', 0, 1, NULL),
('user', 95, 'view', 'member', 0, 1, NULL),
('user', 95, 'view', 'network', 0, 1, NULL),
('user', 95, 'view', 'registered', 0, 1, NULL),
('user', 96, 'comment', 'network', 0, 1, NULL),
('user', 96, 'view', 'everyone', 0, 1, NULL),
('user', 96, 'view', 'member', 0, 1, NULL),
('user', 96, 'view', 'network', 0, 1, NULL),
('user', 96, 'view', 'registered', 0, 1, NULL),
('user', 573980572, 'comment', 'network', 0, 1, NULL),
('user', 573980572, 'view', 'everyone', 0, 1, NULL),
('user', 573980572, 'view', 'member', 0, 1, NULL),
('user', 573980572, 'view', 'network', 0, 1, NULL),
('user', 573980572, 'view', 'registered', 0, 1, NULL),
('user', 674218479, 'comment', 'network', 0, 1, NULL),
('user', 674218479, 'view', 'everyone', 0, 1, NULL),
('user', 674218479, 'view', 'member', 0, 1, NULL),
('user', 674218479, 'view', 'network', 0, 1, NULL),
('user', 674218479, 'view', 'registered', 0, 1, NULL),
('user', 886555540, 'comment', 'network', 0, 1, NULL),
('user', 886555540, 'view', 'everyone', 0, 1, NULL),
('user', 886555540, 'view', 'member', 0, 1, NULL),
('user', 886555540, 'view', 'network', 0, 1, NULL),
('user', 886555540, 'view', 'registered', 0, 1, NULL),
('user', 1383914828, 'comment', 'network', 0, 1, NULL),
('user', 1383914828, 'view', 'everyone', 0, 1, NULL),
('user', 1383914828, 'view', 'member', 0, 1, NULL),
('user', 1383914828, 'view', 'network', 0, 1, NULL),
('user', 1383914828, 'view', 'registered', 0, 1, NULL),
('user', 1610159378, 'comment', 'network', 0, 1, NULL),
('user', 1610159378, 'view', 'everyone', 0, 1, NULL),
('user', 1610159378, 'view', 'member', 0, 1, NULL),
('user', 1610159378, 'view', 'network', 0, 1, NULL),
('user', 1610159378, 'view', 'registered', 0, 1, NULL),
('user', 1617228157, 'comment', 'network', 0, 1, NULL),
('user', 1617228157, 'view', 'everyone', 0, 1, NULL),
('user', 1617228157, 'view', 'member', 0, 1, NULL),
('user', 1617228157, 'view', 'network', 0, 1, NULL),
('user', 1617228157, 'view', 'registered', 0, 1, NULL),
('user', 1829893787, 'comment', 'network', 0, 1, NULL),
('user', 1829893787, 'view', 'everyone', 0, 1, NULL),
('user', 1829893787, 'view', 'member', 0, 1, NULL),
('user', 1829893787, 'view', 'network', 0, 1, NULL),
('user', 1829893787, 'view', 'registered', 0, 1, NULL),
('user', 2002635803, 'comment', 'network', 0, 1, NULL),
('user', 2002635803, 'view', 'everyone', 0, 1, NULL),
('user', 2002635803, 'view', 'member', 0, 1, NULL),
('user', 2002635803, 'view', 'network', 0, 1, NULL),
('user', 2002635803, 'view', 'registered', 0, 1, NULL),
('user', 2031245164, 'comment', 'network', 0, 1, NULL),
('user', 2031245164, 'view', 'everyone', 0, 1, NULL),
('user', 2031245164, 'view', 'member', 0, 1, NULL),
('user', 2031245164, 'view', 'network', 0, 1, NULL),
('user', 2031245164, 'view', 'registered', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_authorization_levels`
--

CREATE TABLE IF NOT EXISTS `engine4_authorization_levels` (
  `level_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `type` enum('public','user','moderator','admin') collate utf8_unicode_ci NOT NULL default 'user',
  `flag` enum('default','superadmin','public') collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`level_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `engine4_authorization_levels`
--

INSERT INTO `engine4_authorization_levels` (`level_id`, `title`, `description`, `type`, `flag`) VALUES
(1, 'Peak Board Members and Super Admins', 'Users of this level can modify all of your settings and data.  This level cannot be modified or deleted.', 'admin', 'superadmin'),
(3, 'Coaches', 'Users of this level may edit user-side content.', 'moderator', ''),
(4, 'Players and Parents', 'This is the default user level.  New users are assigned to it automatically.', 'user', 'default'),
(5, 'Public and Scouts', 'Settings for this level apply to users who have not logged in.', 'public', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_authorization_permissions`
--

CREATE TABLE IF NOT EXISTS `engine4_authorization_permissions` (
  `level_id` int(11) unsigned NOT NULL,
  `type` varchar(16) character set latin1 collate latin1_general_ci NOT NULL,
  `name` varchar(16) character set latin1 collate latin1_general_ci NOT NULL,
  `value` tinyint(3) NOT NULL default '0',
  `params` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`level_id`,`type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_authorization_permissions`
--

INSERT INTO `engine4_authorization_permissions` (`level_id`, `type`, `name`, `value`, `params`) VALUES
(1, 'admin', 'view', 1, NULL),
(1, 'advgroup_poll', 'auth_comment', 5, '["registered", "member", "officer"]'),
(1, 'advgroup_poll', 'comment', 2, NULL),
(1, 'announcement', 'create', 1, NULL),
(1, 'announcement', 'delete', 2, NULL),
(1, 'announcement', 'edit', 2, NULL),
(1, 'announcement', 'view', 2, NULL),
(1, 'core_link', 'create', 1, NULL),
(1, 'core_link', 'delete', 2, NULL),
(1, 'core_link', 'view', 2, NULL),
(1, 'event', 'auth_comment', 5, '["registered","owner_network","owner_member_member","owner_member","parent_member","member","owner"]'),
(1, 'event', 'auth_photo', 5, '["member","owner"]'),
(1, 'event', 'auth_view', 5, '["everyone","registered","owner_network","owner_member_member","owner_member","parent_member","member"]'),
(1, 'event', 'comment', 2, NULL),
(1, 'event', 'create', 1, NULL),
(1, 'event', 'delete', 2, NULL),
(1, 'event', 'edit', 2, NULL),
(1, 'event', 'invite', 1, NULL),
(1, 'event', 'photo', 1, NULL),
(1, 'event', 'style', 1, NULL),
(1, 'event', 'view', 2, NULL),
(1, 'general', 'activity', 2, NULL),
(1, 'general', 'style', 2, NULL),
(1, 'group', 'album', 1, NULL),
(1, 'group', 'auth_comment', 5, '["registered", "member", "officer"]'),
(1, 'group', 'auth_event', 5, '["registered", "member", "officer"]'),
(1, 'group', 'auth_photo', 5, '["registered", "member", "officer"]'),
(1, 'group', 'auth_poll', 5, '["registered", "member", "officer"]'),
(1, 'group', 'auth_view', 5, '["everyone", "registered", "member"]'),
(1, 'group', 'comment', 2, NULL),
(1, 'group', 'create', 1, NULL),
(1, 'group', 'delete', 2, NULL),
(1, 'group', 'edit', 2, NULL),
(1, 'group', 'event', 1, NULL),
(1, 'group', 'invite', 1, NULL),
(1, 'group', 'numberAlbum', 3, '100'),
(1, 'group', 'numberPhoto', 0, NULL),
(1, 'group', 'photo', 1, NULL),
(1, 'group', 'photo.edit', 2, NULL),
(1, 'group', 'poll', 1, NULL),
(1, 'group', 'poll.edit', 2, NULL),
(1, 'group', 'style', 1, NULL),
(1, 'group', 'topic.edit', 2, NULL),
(1, 'group', 'view', 2, NULL),
(1, 'messages', 'auth', 3, 'everyone'),
(1, 'messages', 'create', 1, NULL),
(1, 'user', 'activity', 1, NULL),
(1, 'user', 'auth_comment', 5, '["registered","network","member","owner"]'),
(1, 'user', 'auth_view', 5, '["everyone","registered","network","member","owner"]'),
(1, 'user', 'block', 1, NULL),
(1, 'user', 'comment', 2, NULL),
(1, 'user', 'commenthtml', 3, ''),
(1, 'user', 'create', 1, NULL),
(1, 'user', 'delete', 2, NULL),
(1, 'user', 'description', 3, 'Users of this level can modify all of your settings and data.  This level cannot be modified or deleted.'),
(1, 'user', 'edit', 2, NULL),
(1, 'user', 'quota', 0, NULL),
(1, 'user', 'search', 1, NULL),
(1, 'user', 'status', 1, NULL),
(1, 'user', 'style', 2, NULL),
(1, 'user', 'title', 3, 'Peak Board Members and Super Admins'),
(1, 'user', 'username', 0, NULL),
(1, 'user', 'view', 2, NULL),
(3, 'advgroup_poll', 'auth_comment', 5, '["registered", "member", "officer"]'),
(3, 'advgroup_poll', 'comment', 2, NULL),
(3, 'announcement', 'view', 1, NULL),
(3, 'core_link', 'create', 1, NULL),
(3, 'core_link', 'delete', 2, NULL),
(3, 'core_link', 'view', 2, NULL),
(3, 'event', 'auth_comment', 5, '["registered","owner_network"]'),
(3, 'event', 'auth_photo', 5, '["member","owner"]'),
(3, 'event', 'auth_view', 5, '["everyone","registered","owner_network"]'),
(3, 'event', 'comment', 1, NULL),
(3, 'event', 'create', 1, NULL),
(3, 'event', 'delete', 1, NULL),
(3, 'event', 'edit', 1, NULL),
(3, 'event', 'invite', 1, NULL),
(3, 'event', 'photo', 1, NULL),
(3, 'event', 'style', 0, NULL),
(3, 'event', 'view', 2, NULL),
(3, 'general', 'activity', 2, NULL),
(3, 'general', 'style', 2, NULL),
(3, 'group', 'album', 1, NULL),
(3, 'group', 'auth_comment', 5, '["registered", "member", "officer"]'),
(3, 'group', 'auth_event', 5, '["registered", "member", "officer"]'),
(3, 'group', 'auth_photo', 5, '["registered", "member", "officer"]'),
(3, 'group', 'auth_poll', 5, '["registered", "member", "officer"]'),
(3, 'group', 'auth_view', 5, '["everyone", "registered", "member"]'),
(3, 'group', 'comment', 2, NULL),
(3, 'group', 'create', 1, NULL),
(3, 'group', 'delete', 2, NULL),
(3, 'group', 'edit', 2, NULL),
(3, 'group', 'event', 1, NULL),
(3, 'group', 'invite', 1, NULL),
(3, 'group', 'numberAlbum', 3, '100'),
(3, 'group', 'numberPhoto', 0, NULL),
(3, 'group', 'photo', 1, NULL),
(3, 'group', 'photo.edit', 2, NULL),
(3, 'group', 'poll', 1, NULL),
(3, 'group', 'poll.edit', 2, NULL),
(3, 'group', 'style', 1, NULL),
(3, 'group', 'topic.edit', 2, NULL),
(3, 'group', 'view', 2, NULL),
(3, 'messages', 'auth', 3, 'everyone'),
(3, 'messages', 'create', 1, NULL),
(3, 'user', 'activity', 1, NULL),
(3, 'user', 'auth_comment', 5, '["registered","network"]'),
(3, 'user', 'auth_view', 5, '["everyone","registered","network","member","owner"]'),
(3, 'user', 'block', 0, NULL),
(3, 'user', 'comment', 2, NULL),
(3, 'user', 'commenthtml', 3, ''),
(3, 'user', 'create', 1, NULL),
(3, 'user', 'delete', 0, NULL),
(3, 'user', 'description', 3, 'Users of this level may edit user-side content.'),
(3, 'user', 'edit', 1, NULL),
(3, 'user', 'quota', 0, NULL),
(3, 'user', 'search', 0, NULL),
(3, 'user', 'status', 1, NULL),
(3, 'user', 'style', 0, NULL),
(3, 'user', 'title', 3, 'Coaches'),
(3, 'user', 'username', 0, NULL),
(3, 'user', 'view', 2, NULL),
(4, 'advgroup_poll', 'auth_comment', 5, '["registered", "member", "officer"]'),
(4, 'advgroup_poll', 'comment', 1, NULL),
(4, 'announcement', 'view', 1, NULL),
(4, 'core_link', 'create', 1, NULL),
(4, 'core_link', 'delete', 1, NULL),
(4, 'core_link', 'view', 1, NULL),
(4, 'event', 'auth_comment', 5, '["owner_network"]'),
(4, 'event', 'auth_photo', 5, '["owner"]'),
(4, 'event', 'auth_view', 5, '["owner_network"]'),
(4, 'event', 'comment', 0, NULL),
(4, 'event', 'create', 0, NULL),
(4, 'event', 'delete', 0, NULL),
(4, 'event', 'edit', 0, NULL),
(4, 'event', 'invite', 1, NULL),
(4, 'event', 'photo', 1, NULL),
(4, 'event', 'style', 0, NULL),
(4, 'event', 'view', 1, NULL),
(4, 'general', 'style', 1, NULL),
(4, 'group', 'album', 1, NULL),
(4, 'group', 'auth_comment', 5, '["registered", "member", "officer"]'),
(4, 'group', 'auth_event', 5, '["registered", "member", "officer"]'),
(4, 'group', 'auth_photo', 5, '["registered", "member", "officer"]'),
(4, 'group', 'auth_poll', 5, '["registered", "member", "officer"]'),
(4, 'group', 'auth_view', 5, '["everyone", "registered", "member"]'),
(4, 'group', 'comment', 1, NULL),
(4, 'group', 'create', 1, NULL),
(4, 'group', 'delete', 1, NULL),
(4, 'group', 'edit', 1, NULL),
(4, 'group', 'event', 1, NULL),
(4, 'group', 'invite', 1, NULL),
(4, 'group', 'numberAlbum', 3, '20'),
(4, 'group', 'numberPhoto', 3, '50'),
(4, 'group', 'photo', 1, NULL),
(4, 'group', 'photo.edit', 1, NULL),
(4, 'group', 'poll', 1, NULL),
(4, 'group', 'poll.edit', 1, NULL),
(4, 'group', 'style', 1, NULL),
(4, 'group', 'topic.edit', 1, NULL),
(4, 'group', 'view', 1, NULL),
(4, 'messages', 'auth', 3, 'everyone'),
(4, 'messages', 'create', 1, NULL),
(4, 'user', 'auth_comment', 5, '["network"]'),
(4, 'user', 'auth_view', 5, '["everyone","registered","network","member","owner"]'),
(4, 'user', 'block', 0, NULL),
(4, 'user', 'comment', 1, NULL),
(4, 'user', 'commenthtml', 3, ''),
(4, 'user', 'create', 1, NULL),
(4, 'user', 'delete', 0, NULL),
(4, 'user', 'description', 3, 'This is the default user level.  New users are assigned to it automatically.'),
(4, 'user', 'edit', 1, NULL),
(4, 'user', 'quota', 0, NULL),
(4, 'user', 'search', 0, NULL),
(4, 'user', 'status', 1, NULL),
(4, 'user', 'style', 0, NULL),
(4, 'user', 'title', 3, 'Players and Parents'),
(4, 'user', 'username', 0, NULL),
(4, 'user', 'view', 1, NULL),
(5, 'announcement', 'view', 1, NULL),
(5, 'core_link', 'view', 1, NULL),
(5, 'event', 'view', 1, NULL),
(5, 'group', 'view', 1, NULL),
(5, 'messages', 'auth', 0, NULL),
(5, 'messages', 'create', 0, NULL),
(5, 'user', 'description', 3, 'Settings for this level apply to users who have not logged in.'),
(5, 'user', 'title', 3, 'Public and Scouts'),
(5, 'user', 'view', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_adcampaigns`
--

CREATE TABLE IF NOT EXISTS `engine4_core_adcampaigns` (
  `adcampaign_id` int(11) unsigned NOT NULL auto_increment,
  `end_settings` tinyint(4) NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `limit_view` int(11) unsigned NOT NULL default '0',
  `limit_click` int(11) unsigned NOT NULL default '0',
  `limit_ctr` varchar(11) collate utf8_unicode_ci NOT NULL default '0',
  `network` varchar(255) collate utf8_unicode_ci NOT NULL,
  `level` varchar(255) collate utf8_unicode_ci NOT NULL,
  `views` int(11) unsigned NOT NULL default '0',
  `clicks` int(11) unsigned NOT NULL default '0',
  `status` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`adcampaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_adcampaigns`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_adphotos`
--

CREATE TABLE IF NOT EXISTS `engine4_core_adphotos` (
  `adphoto_id` int(11) unsigned NOT NULL auto_increment,
  `ad_id` int(11) unsigned NOT NULL,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY  (`adphoto_id`),
  KEY `ad_id` (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_adphotos`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_ads`
--

CREATE TABLE IF NOT EXISTS `engine4_core_ads` (
  `ad_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(16) collate utf8_unicode_ci NOT NULL,
  `ad_campaign` int(11) unsigned NOT NULL,
  `views` int(11) unsigned NOT NULL default '0',
  `clicks` int(11) unsigned NOT NULL default '0',
  `media_type` varchar(255) collate utf8_unicode_ci NOT NULL,
  `html_code` text collate utf8_unicode_ci NOT NULL,
  `photo_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ad_id`),
  KEY `ad_campaign` (`ad_campaign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_ads`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_auth`
--

CREATE TABLE IF NOT EXISTS `engine4_core_auth` (
  `id` varchar(40) character set latin1 collate latin1_general_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(32) character set latin1 collate latin1_general_ci default NULL,
  `expires` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`user_id`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_auth`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_bannedemails`
--

CREATE TABLE IF NOT EXISTS `engine4_core_bannedemails` (
  `bannedemail_id` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`bannedemail_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `engine4_core_bannedemails`
--

INSERT INTO `engine4_core_bannedemails` (`bannedemail_id`, `email`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_bannedips`
--

CREATE TABLE IF NOT EXISTS `engine4_core_bannedips` (
  `bannedip_id` int(10) unsigned NOT NULL auto_increment,
  `start` varbinary(16) NOT NULL,
  `stop` varbinary(16) NOT NULL,
  PRIMARY KEY  (`bannedip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_bannedips`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_bannedusernames`
--

CREATE TABLE IF NOT EXISTS `engine4_core_bannedusernames` (
  `bannedusername_id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`bannedusername_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `engine4_core_bannedusernames`
--

INSERT INTO `engine4_core_bannedusernames` (`bannedusername_id`, `username`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_bannedwords`
--

CREATE TABLE IF NOT EXISTS `engine4_core_bannedwords` (
  `bannedword_id` int(10) unsigned NOT NULL auto_increment,
  `word` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`bannedword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_bannedwords`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_comments`
--

CREATE TABLE IF NOT EXISTS `engine4_core_comments` (
  `comment_id` int(11) unsigned NOT NULL auto_increment,
  `resource_type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `like_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_id`),
  KEY `resource_type` (`resource_type`,`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_content`
--

CREATE TABLE IF NOT EXISTS `engine4_core_content` (
  `content_id` int(11) unsigned NOT NULL auto_increment,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL default 'widget',
  `name` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `parent_content_id` int(11) unsigned default NULL,
  `order` int(11) NOT NULL default '1',
  `params` text collate utf8_unicode_ci,
  `attribs` text collate utf8_unicode_ci,
  PRIMARY KEY  (`content_id`),
  KEY `page_id` (`page_id`,`order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=711 ;

--
-- Dumping data for table `engine4_core_content`
--

INSERT INTO `engine4_core_content` (`content_id`, `page_id`, `type`, `name`, `parent_content_id`, `order`, `params`, `attribs`) VALUES
(100, 1, 'container', 'main', NULL, 2, '[""]', NULL),
(110, 1, 'widget', 'core.menu-mini', 100, 2, '[""]', NULL),
(111, 1, 'widget', 'core.menu-logo', 100, 3, '{"title":"","name":"core.menu-logo","logo":"public\\/admin\\/peak_logo_admin.png","nomobile":"0"}', NULL),
(112, 1, 'widget', 'core.menu-main', 100, 4, '[""]', NULL),
(200, 2, 'container', 'main', NULL, 1, '', NULL),
(210, 2, 'widget', 'core.menu-footer', 200, 2, '', NULL),
(300, 3, 'container', 'main', NULL, 1, '', NULL),
(310, 3, 'container', 'left', 300, 1, '', NULL),
(311, 3, 'container', 'right', 300, 2, '', NULL),
(312, 3, 'container', 'middle', 300, 3, '', NULL),
(320, 3, 'widget', 'user.login-or-signup', 310, 1, '', NULL),
(321, 3, 'widget', 'user.list-online', 310, 2, '{"title":"%s Members Online"}', NULL),
(322, 3, 'widget', 'core.statistics', 310, 3, '{"title":"Network Stats"}', NULL),
(330, 3, 'widget', 'user.list-signups', 311, 1, '{"title":"Newest Members"}', NULL),
(331, 3, 'widget', 'user.list-popular', 311, 2, '{"title":"Popular Members"}', NULL),
(340, 3, 'widget', 'announcement.list-announcements', 312, 1, '', NULL),
(341, 3, 'widget', 'activity.feed', 312, 2, '{"title":"What''s New"}', NULL),
(400, 4, 'container', 'main', NULL, 1, '', NULL),
(410, 4, 'container', 'left', 400, 1, '', NULL),
(411, 4, 'container', 'right', 400, 2, '', NULL),
(412, 4, 'container', 'middle', 400, 3, '', NULL),
(420, 4, 'widget', 'user.home-photo', 410, 1, '', NULL),
(421, 4, 'widget', 'user.home-links', 410, 2, '', NULL),
(422, 4, 'widget', 'user.list-online', 410, 3, '{"title":"%s Members Online"}', NULL),
(423, 4, 'widget', 'core.statistics', 410, 4, '{"title":"Network Stats"}', NULL),
(430, 4, 'widget', 'activity.list-requests', 411, 1, '{"title":"Requests"}', NULL),
(431, 4, 'widget', 'user.list-signups', 411, 2, '{"title":"Newest Members"}', NULL),
(432, 4, 'widget', 'user.list-popular', 411, 3, '{"title":"Popular Members"}', NULL),
(440, 4, 'widget', 'announcement.list-announcements', 412, 1, '', NULL),
(441, 4, 'widget', 'activity.feed', 412, 2, '{"title":"What''s New"}', NULL),
(500, 5, 'container', 'main', NULL, 1, '', NULL),
(510, 5, 'container', 'left', 500, 1, '', NULL),
(511, 5, 'container', 'middle', 500, 3, '', NULL),
(520, 5, 'widget', 'user.profile-photo', 510, 1, '', NULL),
(521, 5, 'widget', 'user.profile-options', 510, 2, '', NULL),
(522, 5, 'widget', 'user.profile-friends-common', 510, 3, '{"title":"Mutual Friends"}', NULL),
(523, 5, 'widget', 'user.profile-info', 510, 4, '{"title":"Member Info"}', NULL),
(530, 5, 'widget', 'user.profile-status', 511, 1, '', NULL),
(531, 5, 'widget', 'core.container-tabs', 511, 2, '{"max":"6"}', NULL),
(540, 5, 'widget', 'activity.feed', 531, 1, '{"title":"Updates"}', NULL),
(541, 5, 'widget', 'user.profile-fields', 531, 2, '{"title":"Info"}', NULL),
(542, 5, 'widget', 'user.profile-friends', 531, 3, '{"title":"Friends","titleCount":true}', NULL),
(546, 5, 'widget', 'core.profile-links', 531, 7, '{"title":"Links","titleCount":true}', NULL),
(547, 6, 'container', 'main', NULL, 1, NULL, NULL),
(548, 6, 'container', 'middle', 547, 2, NULL, NULL),
(549, 6, 'widget', 'core.content', 548, 1, NULL, NULL),
(550, 7, 'container', 'main', NULL, 1, NULL, NULL),
(551, 7, 'container', 'middle', 550, 2, NULL, NULL),
(552, 7, 'widget', 'core.content', 551, 1, NULL, NULL),
(553, 8, 'container', 'main', NULL, 1, NULL, NULL),
(554, 8, 'container', 'middle', 553, 2, NULL, NULL),
(555, 8, 'widget', 'core.content', 554, 1, NULL, NULL),
(556, 9, 'container', 'main', NULL, 1, NULL, NULL),
(557, 9, 'container', 'middle', 556, 1, NULL, NULL),
(558, 9, 'widget', 'core.content', 557, 1, NULL, NULL),
(559, 10, 'container', 'main', NULL, 1, NULL, NULL),
(560, 10, 'container', 'middle', 559, 1, NULL, NULL),
(561, 10, 'widget', 'core.content', 560, 1, NULL, NULL),
(562, 11, 'container', 'main', NULL, 1, NULL, NULL),
(563, 11, 'container', 'middle', 562, 1, NULL, NULL),
(564, 11, 'widget', 'core.content', 563, 1, NULL, NULL),
(565, 12, 'container', 'main', NULL, 1, NULL, NULL),
(566, 12, 'container', 'middle', 565, 1, NULL, NULL),
(567, 12, 'widget', 'core.content', 566, 1, NULL, NULL),
(568, 13, 'container', 'main', NULL, 1, NULL, NULL),
(569, 13, 'container', 'middle', 568, 1, NULL, NULL),
(570, 13, 'widget', 'core.content', 569, 2, NULL, NULL),
(571, 13, 'widget', 'messages.menu', 569, 1, NULL, NULL),
(572, 14, 'container', 'main', NULL, 1, NULL, NULL),
(573, 14, 'container', 'middle', 572, 1, NULL, NULL),
(574, 14, 'widget', 'core.content', 573, 2, NULL, NULL),
(575, 14, 'widget', 'messages.menu', 573, 1, NULL, NULL),
(576, 15, 'container', 'main', NULL, 1, '', NULL),
(577, 15, 'widget', 'core.menu-logo', 576, 2, '', NULL),
(578, 15, 'widget', 'mobi.mobi-menu-main', 576, 3, '', NULL),
(579, 16, 'container', 'main', NULL, 1, '', NULL),
(580, 16, 'widget', 'mobi.mobi-footer', 579, 2, '', NULL),
(581, 17, 'container', 'main', NULL, 1, '', NULL),
(582, 17, 'container', 'middle', 581, 2, '', NULL),
(583, 17, 'widget', 'user.login-or-signup', 582, 3, '', NULL),
(584, 18, 'container', 'main', NULL, 1, '', NULL),
(585, 18, 'container', 'middle', 584, 2, '', NULL),
(586, 18, 'widget', 'activity.feed', 585, 3, '', NULL),
(587, 19, 'container', 'main', NULL, 1, '', NULL),
(588, 19, 'container', 'middle', 587, 2, '', NULL),
(589, 19, 'widget', 'user.profile-photo', 588, 3, '', NULL),
(590, 19, 'widget', 'user.profile-status', 588, 4, '', NULL),
(591, 19, 'widget', 'mobi.mobi-profile-options', 588, 5, '', NULL),
(592, 19, 'widget', 'core.container-tabs', 588, 6, '{"max":6}', NULL),
(593, 19, 'widget', 'activity.feed', 592, 7, '{"title":"What''s New"}', NULL),
(594, 19, 'widget', 'user.profile-fields', 592, 8, '{"title":"Info"}', NULL),
(595, 19, 'widget', 'user.profile-friends', 592, 9, '{"title":"Friends","titleCount":true}', NULL),
(596, 20, 'container', 'main', NULL, 1, '', NULL),
(597, 20, 'container', 'middle', 596, 2, '', NULL),
(598, 20, 'widget', 'event.profile-status', 597, 3, '', NULL),
(599, 20, 'widget', 'event.profile-photo', 597, 4, '', NULL),
(600, 20, 'widget', 'event.profile-info', 597, 5, '', NULL),
(601, 20, 'widget', 'event.profile-rsvp', 597, 6, '', NULL),
(602, 20, 'widget', 'core.container-tabs', 597, 7, '{"max":6}', NULL),
(603, 20, 'widget', 'activity.feed', 602, 8, '{"title":"What''s New"}', NULL),
(604, 20, 'widget', 'event.profile-members', 602, 9, '{"title":"Guests","titleCount":true}', NULL),
(605, 21, 'container', 'main', NULL, 1, '', NULL),
(606, 21, 'container', 'middle', 605, 3, '', NULL),
(607, 21, 'container', 'left', 605, 1, '', NULL),
(608, 21, 'widget', 'core.container-tabs', 606, 2, '{"max":"6"}', NULL),
(609, 21, 'widget', 'event.profile-status', 606, 1, '', NULL),
(610, 21, 'widget', 'event.profile-photo', 607, 1, '', NULL),
(611, 21, 'widget', 'event.profile-options', 607, 2, '', NULL),
(612, 21, 'widget', 'event.profile-info', 607, 3, '', NULL),
(613, 21, 'widget', 'event.profile-rsvp', 607, 4, '', NULL),
(614, 21, 'widget', 'activity.feed', 608, 1, '{"title":"Updates"}', NULL),
(615, 21, 'widget', 'event.profile-members', 608, 2, '{"title":"Guests","titleCount":true}', NULL),
(616, 21, 'widget', 'event.profile-photos', 608, 3, '{"title":"Photos","titleCount":true}', NULL),
(617, 21, 'widget', 'event.profile-discussions', 608, 4, '{"title":"Discussions","titleCount":true}', NULL),
(618, 21, 'widget', 'core.profile-links', 608, 5, '{"title":"Links","titleCount":true}', NULL),
(619, 4, 'widget', 'event.home-upcoming', 411, 1, '{"title":"Upcoming Events","titleCount":true}', NULL),
(620, 5, 'widget', 'event.profile-events', 531, 8, '{"title":"Events","titleCount":true}', NULL),
(621, 22, 'container', 'top', NULL, 1, NULL, NULL),
(622, 22, 'container', 'main', NULL, 2, NULL, NULL),
(623, 22, 'container', 'middle', 621, 1, NULL, NULL),
(624, 22, 'container', 'middle', 622, 2, NULL, NULL),
(625, 22, 'container', 'right', 622, 1, NULL, NULL),
(626, 22, 'widget', 'event.browse-menu', 623, 1, NULL, NULL),
(627, 22, 'widget', 'core.content', 624, 1, NULL, NULL),
(628, 22, 'widget', 'event.browse-search', 625, 1, NULL, NULL),
(629, 22, 'widget', 'event.browse-menu-quick', 625, 2, NULL, NULL),
(630, 5, 'widget', 'advgroup.profile-groups', 531, 9, '{"title":"Groups","titleCount":true}', NULL),
(631, 23, 'container', 'main', NULL, 1, '', NULL),
(632, 23, 'container', 'middle', 631, 3, '', NULL),
(633, 23, 'container', 'left', 631, 1, '', NULL),
(634, 23, 'widget', 'core.container-tabs', 632, 2, '{"max":"6"}', NULL),
(635, 23, 'widget', 'group.profile-status', 632, 1, '', NULL),
(636, 23, 'widget', 'group.profile-photo', 633, 1, '', NULL),
(637, 23, 'widget', 'group.profile-options', 633, 2, '', NULL),
(638, 23, 'widget', 'group.profile-info', 633, 3, '', NULL),
(639, 23, 'widget', 'activity.feed', 634, 1, '{"title":"Updates"}', NULL),
(640, 23, 'widget', 'group.profile-members', 634, 2, '{"title":"Members","titleCount":true}', NULL),
(641, 23, 'widget', 'group.profile-photos', 634, 3, '{"title":"Photos","titleCount":true}', NULL),
(642, 23, 'widget', 'group.profile-discussions', 634, 4, '{"title":"Discussions","titleCount":true}', NULL),
(643, 23, 'widget', 'core.profile-links', 634, 5, '{"title":"Links","titleCount":true}', NULL),
(644, 23, 'widget', 'group.profile-events', 634, 6, '{"title":"Events","titleCount":true}', NULL),
(645, 24, 'container', 'main', NULL, 1, '', NULL),
(646, 24, 'container', 'middle', 645, 2, '', NULL),
(647, 24, 'widget', 'group.profile-status', 646, 3, '', NULL),
(648, 24, 'widget', 'group.profile-photo', 646, 4, '', NULL),
(649, 24, 'widget', 'group.profile-info', 646, 5, '', NULL),
(650, 24, 'widget', 'core.container-tabs', 646, 6, '{"max":6}', NULL),
(651, 24, 'widget', 'activity.feed', 650, 7, '{"title":"What''s New"}', NULL),
(652, 24, 'widget', 'group.profile-members', 650, 8, '{"title":"Members","titleCount":true}', NULL),
(653, 25, 'container', 'top', NULL, 1, NULL, NULL),
(654, 25, 'container', 'main', NULL, 2, NULL, NULL),
(655, 25, 'container', 'middle', 653, 1, NULL, NULL),
(656, 25, 'container', 'middle', 654, 2, NULL, NULL),
(657, 25, 'container', 'right', 654, 1, NULL, NULL),
(658, 25, 'widget', 'group.browse-menu', 655, 1, NULL, NULL),
(659, 25, 'widget', 'core.content', 656, 1, NULL, NULL),
(660, 25, 'widget', 'group.browse-search', 657, 1, NULL, NULL),
(661, 25, 'widget', 'group.browse-menu-quick', 657, 2, NULL, NULL),
(662, 26, 'container', 'top', NULL, 1, '', NULL),
(663, 26, 'container', 'middle', 662, 6, '', NULL),
(664, 26, 'widget', 'advgroup.groups-menu', 663, 1, '', NULL),
(665, 26, 'container', 'main', NULL, 2, '', NULL),
(666, 26, 'container', 'middle', 665, 6, '', NULL),
(667, 26, 'container', 'right', 665, 5, '', NULL),
(668, 26, 'widget', 'advgroup.featured-groups', 666, 7, '{"title":"Featured Groups"}', NULL),
(669, 26, 'widget', 'core.container-tabs', 666, 8, '{"max":"6"}', NULL),
(670, 26, 'widget', 'advgroup.list-recent-groups', 669, 9, '{"title":"Newest Groups"}', NULL),
(671, 26, 'widget', 'advgroup.list-popular-groups', 669, 10, '{"title":"Popular Groups"}', NULL),
(672, 26, 'widget', 'advgroup.list-active-groups', 669, 11, '{"title":"Active Groups"}', NULL),
(673, 26, 'widget', 'advgroup.groups-search', 667, 7, '', NULL),
(674, 26, 'widget', 'advgroup.overall-statistic', 667, 8, '{"title":"Statistics"}', NULL),
(675, 27, 'container', 'top', NULL, 1, '', NULL),
(676, 27, 'container', 'middle', 675, 6, '', NULL),
(677, 27, 'widget', 'advgroup.groups-menu', 676, 7, '', NULL),
(678, 27, 'container', 'main', NULL, 2, '', NULL),
(679, 27, 'container', 'middle', 678, 6, '', NULL),
(680, 27, 'widget', 'advgroup.groups-listing', 679, 7, '', NULL),
(681, 27, 'container', 'right', 678, 5, '', NULL),
(682, 27, 'widget', 'advgroup.groups-search', 681, 7, '', NULL),
(683, 28, 'container', 'main', NULL, 1, '', NULL),
(684, 28, 'container', 'left', 683, 1, '', NULL),
(685, 28, 'container', 'middle', 683, 3, '', NULL),
(686, 28, 'container', 'right', 683, 2, '', NULL),
(687, 28, 'widget', 'advgroup.profile-info', 685, 1, '', NULL),
(688, 28, 'widget', 'advgroup.profile-group-announcements', 685, 2, '{"title":"Announcement"}', NULL),
(689, 28, 'widget', 'core.container-tabs', 685, 3, '{"max":"8"}', NULL),
(690, 28, 'widget', 'advgroup.profile-photo', 684, 1, '', NULL),
(691, 28, 'widget', 'advgroup.profile-options', 684, 2, '', NULL),
(692, 28, 'widget', 'advgroup.profile-statistic', 684, 3, '', NULL),
(693, 28, 'widget', 'activity.feed', 689, 1, '{"title":"Updates"}', NULL),
(694, 28, 'widget', 'advgroup.profile-members', 689, 2, '{"title":"Members","titleCount":true}', NULL),
(695, 28, 'widget', 'advgroup.profile-discussions', 689, 3, '{"title":"Discussions","titleCount":true}', NULL),
(696, 28, 'widget', 'advgroup.profile-events', 689, 4, '{"title":"Events","titleCount":true}', NULL),
(697, 28, 'widget', 'advgroup.profile-useful-links', 689, 5, '{"title":"Useful Links","titleCount":true}', NULL),
(698, 28, 'widget', 'core.profile-links', 689, 6, '{"title":"Shared Links","titleCount":true}', NULL),
(699, 28, 'widget', 'advgroup.suggested-poll', 686, 2, '{"title":"Suggested Poll"}', NULL),
(700, 28, 'widget', 'advgroup.profile-albums', 686, 2, '{"title":"Recent Albums","titleCount":true}', NULL),
(701, 28, 'widget', 'advgroup.groups-top-posters', 686, 3, '{"title":"Top Posters"}', NULL),
(702, 29, 'container', 'main', NULL, 1, '', NULL),
(703, 29, 'container', 'middle', 702, 2, '', NULL),
(704, 29, 'widget', 'advgroup.profile-status', 703, 3, '', NULL),
(705, 29, 'widget', 'advgroup.profile-photo', 703, 4, '', NULL),
(706, 29, 'widget', 'advgroup.profile-info', 703, 5, '', NULL),
(707, 29, 'widget', 'core.container-tabs', 703, 6, '{"max":6}', NULL),
(708, 29, 'widget', 'activity.feed', 707, 7, '{"title":"What''s New"}', NULL),
(709, 29, 'widget', 'advgroup.profile-members', 707, 8, '{"title":"Members","titleCount":true}', NULL),
(710, 5, 'widget', 'group.profile-groups', 531, 9, '{"title":"Groups","titleCount":true}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_geotags`
--

CREATE TABLE IF NOT EXISTS `engine4_core_geotags` (
  `geotag_id` int(11) unsigned NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY  (`geotag_id`),
  KEY `latitude` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_geotags`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_jobs`
--

CREATE TABLE IF NOT EXISTS `engine4_core_jobs` (
  `job_id` bigint(20) unsigned NOT NULL auto_increment,
  `jobtype_id` int(10) unsigned NOT NULL,
  `state` enum('pending','active','sleeping','failed','cancelled','completed','timeout') collate utf8_unicode_ci NOT NULL default 'pending',
  `is_complete` tinyint(1) unsigned NOT NULL default '0',
  `progress` decimal(5,4) unsigned NOT NULL default '0.0000',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime default NULL,
  `started_date` datetime default NULL,
  `completion_date` datetime default NULL,
  `priority` mediumint(9) NOT NULL default '100',
  `data` text collate utf8_unicode_ci,
  `messages` text collate utf8_unicode_ci,
  PRIMARY KEY  (`job_id`),
  KEY `jobtype_id` (`jobtype_id`),
  KEY `state` (`state`),
  KEY `is_complete` (`is_complete`,`priority`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_jobs`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_jobtypes`
--

CREATE TABLE IF NOT EXISTS `engine4_core_jobtypes` (
  `jobtype_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `type` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `module` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `plugin` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `form` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `enabled` tinyint(1) unsigned NOT NULL default '1',
  `priority` mediumint(9) NOT NULL default '100',
  `multi` tinyint(3) unsigned default '1',
  PRIMARY KEY  (`jobtype_id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `engine4_core_jobtypes`
--

INSERT INTO `engine4_core_jobtypes` (`jobtype_id`, `title`, `type`, `module`, `plugin`, `form`, `enabled`, `priority`, `multi`) VALUES
(1, 'Download File', 'file_download', 'core', 'Core_Plugin_Job_FileDownload', 'Core_Form_Admin_Job_FileDownload', 1, 100, 1),
(2, 'Upload File', 'file_upload', 'core', 'Core_Plugin_Job_FileUpload', 'Core_Form_Admin_Job_FileUpload', 1, 100, 1),
(3, 'Rebuild Activity Privacy', 'activity_maintenance_rebuild_privacy', 'activity', 'Activity_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(4, 'Rebuild Member Privacy', 'user_maintenance_rebuild_privacy', 'user', 'User_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(5, 'Rebuild Network Membership', 'network_maintenance_rebuild_membership', 'network', 'Network_Plugin_Job_Maintenance_RebuildMembership', NULL, 1, 50, 1),
(6, 'Storage Transfer', 'storage_transfer', 'core', 'Storage_Plugin_Job_Transfer', 'Core_Form_Admin_Job_Generic', 1, 100, 1),
(7, 'Storage Cleanup', 'storage_cleanup', 'core', 'Storage_Plugin_Job_Cleanup', 'Core_Form_Admin_Job_Generic', 1, 100, 1),
(8, 'Rebuild Event Privacy', 'event_maintenance_rebuild_privacy', 'event', 'Event_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(9, 'Rebuild Group Privacy', 'group_maintenance_rebuild_privacy', 'group', 'Group_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1),
(10, 'Rebuild Group Privacy', 'advgroup_maintenance_rebuild_privacy', 'advgroup', 'Advgroup_Plugin_Job_Maintenance_RebuildPrivacy', NULL, 1, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_languages`
--

CREATE TABLE IF NOT EXISTS `engine4_core_languages` (
  `language_id` int(11) unsigned NOT NULL auto_increment,
  `code` varchar(8) character set latin1 collate latin1_general_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `fallback` varchar(8) character set latin1 collate latin1_general_ci default NULL,
  `order` smallint(6) NOT NULL default '1',
  PRIMARY KEY  (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `engine4_core_languages`
--

INSERT INTO `engine4_core_languages` (`language_id`, `code`, `name`, `fallback`, `order`) VALUES
(1, 'en', 'English', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_likes`
--

CREATE TABLE IF NOT EXISTS `engine4_core_likes` (
  `like_id` int(11) unsigned NOT NULL auto_increment,
  `resource_type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `poster_type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `poster_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`like_id`),
  KEY `resource_type` (`resource_type`,`resource_id`),
  KEY `poster_type` (`poster_type`,`poster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_likes`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_links`
--

CREATE TABLE IF NOT EXISTS `engine4_core_links` (
  `link_id` int(11) unsigned NOT NULL auto_increment,
  `uri` varchar(255) collate utf8_unicode_ci NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `photo_id` int(11) unsigned NOT NULL default '0',
  `parent_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `owner_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `owner_id` int(11) unsigned NOT NULL,
  `view_count` mediumint(6) unsigned NOT NULL default '0',
  `creation_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`link_id`),
  KEY `owner` (`owner_type`,`owner_id`),
  KEY `parent` (`parent_type`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_listitems`
--

CREATE TABLE IF NOT EXISTS `engine4_core_listitems` (
  `listitem_id` int(11) unsigned NOT NULL auto_increment,
  `list_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`listitem_id`),
  KEY `list_id` (`list_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_listitems`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_lists`
--

CREATE TABLE IF NOT EXISTS `engine4_core_lists` (
  `list_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `owner_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `owner_id` int(11) unsigned NOT NULL,
  `child_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `child_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`list_id`),
  KEY `owner_type` (`owner_type`,`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_lists`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_log`
--

CREATE TABLE IF NOT EXISTS `engine4_core_log` (
  `message_id` bigint(20) unsigned NOT NULL auto_increment,
  `domain` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `user_id` int(10) unsigned default NULL,
  `plugin` varchar(128) collate utf8_unicode_ci default NULL,
  `timestamp` datetime NOT NULL,
  `message` longtext collate utf8_unicode_ci NOT NULL,
  `priority` smallint(2) NOT NULL default '6',
  `priorityName` varchar(16) collate utf8_unicode_ci NOT NULL default 'INFO',
  PRIMARY KEY  (`message_id`),
  KEY `domain` (`domain`,`timestamp`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_mail`
--

CREATE TABLE IF NOT EXISTS `engine4_core_mail` (
  `mail_id` int(11) unsigned NOT NULL auto_increment,
  `type` enum('system','zend') character set latin1 collate latin1_general_ci NOT NULL,
  `body` longtext collate utf8_unicode_ci NOT NULL,
  `priority` smallint(3) default '100',
  `recipient_count` int(11) unsigned default '0',
  `recipient_total` int(10) NOT NULL default '0',
  `creation_time` datetime NOT NULL,
  PRIMARY KEY  (`mail_id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=325 ;

--
-- Dumping data for table `engine4_core_mail`
--

INSERT INTO `engine4_core_mail` (`mail_id`, `type`, `body`, `priority`, `recipient_count`, `recipient_total`, `creation_time`) VALUES
(25, 'system', 'a:2:{s:4:"type";s:26:"core_verification_password";s:6:"params";a:8:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:15:"odesk@op2vb.com";s:4:"date";i:1326321779;s:15:"recipient_title";s:6:"admin2";s:14:"recipient_link";s:20:"/peak/profile/admin2";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/odesk%40op2vb.com/verify/c064c063f5790a253147095ff934038e";s:8:"password";s:10:"667281c8cf";}}', 100, 1, 0, '2012-01-11 22:42:59'),
(26, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:15:"odesk@op2vb.com";s:4:"date";i:1326321936;s:15:"recipient_title";s:7:"Admin 2";s:14:"recipient_link";s:20:"/peak/profile/admin2";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-11 22:45:36'),
(27, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:15:"odesk@op2vb.com";s:4:"date";i:1326321937;s:15:"recipient_title";s:7:"Admin 2";s:14:"recipient_link";s:20:"/peak/profile/admin2";s:15:"recipient_photo";N;s:11:"object_link";s:27:"http://op2vb.com/peak/login";}}', 100, 1, 0, '2012-01-11 22:45:37'),
(28, 'system', 'a:2:{s:4:"type";s:21:"core_welcome_password";s:6:"params";a:8:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:15:"test3@op2vb.com";s:4:"date";i:1327372433;s:15:"recipient_title";s:5:"test3";s:14:"recipient_link";s:15:"/peak/profile/7";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";s:8:"password";s:10:"16f9c1d135";}}', 100, 1, 0, '2012-01-24 02:33:53'),
(29, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:15:"test3@op2vb.com";s:4:"date";i:1327372433;s:15:"recipient_title";s:9:"zxcv zxcv";s:14:"recipient_link";s:15:"/peak/profile/7";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-24 02:33:53'),
(30, 'system', 'a:2:{s:4:"type";s:21:"core_welcome_password";s:6:"params";a:8:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:23:"clloyd@crossingsokc.org";s:4:"date";i:1327372847;s:15:"recipient_title";s:6:"clloyd";s:14:"recipient_link";s:15:"/peak/profile/8";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";s:8:"password";s:10:"87ee3f4c26";}}', 100, 1, 0, '2012-01-24 02:40:47'),
(31, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:23:"clloyd@crossingsokc.org";s:4:"date";i:1327372847;s:15:"recipient_title";s:17:"Christopher Lloyd";s:14:"recipient_link";s:15:"/peak/profile/8";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-24 02:40:47'),
(32, 'system', 'a:2:{s:4:"type";s:26:"core_verification_password";s:6:"params";a:8:{s:4:"host";s:9:"op2vb.com";s:5:"email";s:23:"clloyd@crossingsokc.org";s:4:"date";i:1327373259;s:15:"recipient_title";s:6:"clloyd";s:14:"recipient_link";s:15:"/peak/profile/9";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/clloyd%40crossingsokc.org/verify/94fe69994e0be51f60b824d9b1d0c896";s:8:"password";s:10:"17252f4f54";}}', 100, 1, 0, '2012-01-24 02:47:39'),
(33, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"clloyd@crossingsokc.org";s:4:"date";i:1327445333;s:15:"recipient_title";s:6:"clloyd";s:14:"recipient_link";s:16:"/peak/profile/10";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/clloyd%40crossingsokc.org/verify/82e7aed854e4a8c6f1757296023683f1";}}', 100, 1, 0, '2012-01-24 22:48:53'),
(34, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"marjoejek@aol.com";s:4:"date";i:1327551483;s:15:"recipient_title";s:9:"marjoejek";s:14:"recipient_link";s:16:"/peak/profile/11";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/marjoejek%40aol.com/verify/0af1d1b93d2b415e099aa8b12a8c2e3e";}}', 100, 1, 0, '2012-01-26 04:18:03'),
(35, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"marjoejek@gmail.com";s:4:"date";i:1327551788;s:15:"recipient_title";s:9:"marjoejek";s:14:"recipient_link";s:16:"/peak/profile/12";s:15:"recipient_photo";N;s:11:"object_link";s:87:"/peak/signup/verify/email/marjoejek%40gmail.com/verify/8fe199664a7a6952bc0c2bac44567b39";}}', 100, 1, 0, '2012-01-26 04:23:08'),
(36, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"annedecker@att.net";s:4:"date";i:1327552699;s:15:"recipient_title";s:10:"annedecker";s:14:"recipient_link";s:16:"/peak/profile/13";s:15:"recipient_photo";N;s:11:"object_link";s:86:"/peak/signup/verify/email/annedecker%40att.net/verify/ecaf0cc824030af3ac205406f77da897";}}', 100, 1, 0, '2012-01-26 04:38:20'),
(37, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"jchoi@ppandco.com";s:4:"date";i:1327553320;s:15:"recipient_title";s:5:"jchoi";s:14:"recipient_link";s:16:"/peak/profile/14";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/jchoi%40ppandco.com/verify/9adaf1f919704e121bf560d75b5ebfc0";}}', 100, 1, 0, '2012-01-26 04:48:40'),
(38, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"test@op2vb.com";s:4:"date";i:1327583370;s:15:"recipient_title";s:4:"test";s:14:"recipient_link";s:16:"/peak/profile/15";s:15:"recipient_photo";N;s:11:"object_link";s:82:"/peak/signup/verify/email/test%40op2vb.com/verify/a0e10cff6920959566c0708b6d47469a";}}', 100, 1, 0, '2012-01-26 13:09:31'),
(39, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"mkmrucker@cox.net";s:4:"date";i:1327587354;s:15:"recipient_title";s:9:"mkmrucker";s:14:"recipient_link";s:16:"/peak/profile/16";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/mkmrucker%40cox.net/verify/7629f7ad5163ae45aca024aac12ec3c5";}}', 100, 1, 0, '2012-01-26 14:15:54'),
(40, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:25:"edmondroberts@hotmail.com";s:4:"date";i:1327593836;s:15:"recipient_title";s:13:"edmondroberts";s:14:"recipient_link";s:16:"/peak/profile/17";s:15:"recipient_photo";N;s:11:"object_link";s:93:"/peak/signup/verify/email/edmondroberts%40hotmail.com/verify/f489c4d482bf2cf0d31672bfc21cecac";}}', 100, 1, 0, '2012-01-26 16:03:57'),
(41, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"diane@ehsrg.com";s:4:"date";i:1327598658;s:15:"recipient_title";s:5:"diane";s:14:"recipient_link";s:16:"/peak/profile/18";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/diane%40ehsrg.com/verify/507909e1224a2d7a01be609d1acc8f6e";}}', 100, 1, 0, '2012-01-26 17:24:18'),
(42, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"kellycrotts@gmail.com";s:4:"date";i:1327598987;s:15:"recipient_title";s:11:"kellycrotts";s:14:"recipient_link";s:16:"/peak/profile/19";s:15:"recipient_photo";N;s:11:"object_link";s:89:"/peak/signup/verify/email/kellycrotts%40gmail.com/verify/964ceb6013976f9c42505495d0c8e118";}}', 100, 1, 0, '2012-01-26 17:29:47'),
(43, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"tbell1961@aol.com";s:4:"date";i:1327605754;s:15:"recipient_title";s:9:"tbell1961";s:14:"recipient_link";s:16:"/peak/profile/20";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/tbell1961%40aol.com/verify/1bfca8f9a71593ded7488045a2dca93a";}}', 100, 1, 0, '2012-01-26 19:22:34'),
(44, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"prbert66@cox.net";s:4:"date";i:1327611662;s:15:"recipient_title";s:8:"prbert66";s:14:"recipient_link";s:16:"/peak/profile/21";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/prbert66%40cox.net/verify/dd97dd179f94c125ea3647c5cf241cb9";}}', 100, 1, 0, '2012-01-26 21:01:02'),
(45, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"kellykeckwright1@yahoo.com";s:4:"date";i:1327623624;s:15:"recipient_title";s:16:"kellykeckwright1";s:14:"recipient_link";s:16:"/peak/profile/22";s:15:"recipient_photo";N;s:11:"object_link";s:94:"/peak/signup/verify/email/kellykeckwright1%40yahoo.com/verify/ee20d0b3a3c47bbe38ce6e466cb23bb6";}}', 100, 1, 0, '2012-01-27 00:20:24'),
(46, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"macyfam@cox.net";s:4:"date";i:1327632870;s:15:"recipient_title";s:7:"macyfam";s:14:"recipient_link";s:16:"/peak/profile/23";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/macyfam%40cox.net/verify/97122d47df86d013e40954509e36e495";}}', 100, 1, 0, '2012-01-27 02:54:30'),
(47, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"radecker@att.net";s:4:"date";i:1327638696;s:15:"recipient_title";s:8:"radecker";s:14:"recipient_link";s:16:"/peak/profile/24";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/radecker%40att.net/verify/c524ec99c69741197cc6a4a2a32e4f00";}}', 100, 1, 0, '2012-01-27 04:31:36'),
(48, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"sandyroberts@mac.com";s:4:"date";i:1327638879;s:15:"recipient_title";s:12:"sandyroberts";s:14:"recipient_link";s:16:"/peak/profile/25";s:15:"recipient_photo";N;s:11:"object_link";s:88:"/peak/signup/verify/email/sandyroberts%40mac.com/verify/ac39d8b7c688710092f91a2e6732c63f";}}', 100, 1, 0, '2012-01-27 04:34:39'),
(49, 'system', 'a:2:{s:4:"type";s:12:"core_contact";s:6:"params";a:10:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"rdecker@op2vb.com";s:4:"date";i:1327669603;s:15:"recipient_title";s:17:"Christopher Lloyd";s:14:"recipient_link";s:19:"/peak/profile/admin";s:15:"recipient_photo";N;s:12:"sender_title";s:10:"mary jekel";s:12:"sender_email";s:17:"marjoejek@aol.com";s:7:"message";s:332:"Could you please re-set all my information for myself with the email marjoejek@aol.com and marjoejek@gmail.com(had to use other address for my daughter).  I can not go in and finish the sign up and it is not sending me any emails to confirm.  Is there any way I can just start over?\r\nThanks,\r\nMary Jekel, Coach\r\nAshley Jekel, Player";s:12:"error_report";s:0:"";}}', 100, 1, 0, '2012-01-27 13:06:43'),
(50, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"becky.ethridge@gmail.com";s:4:"date";i:1327670186;s:15:"recipient_title";s:14:"becky.ethridge";s:14:"recipient_link";s:16:"/peak/profile/26";s:15:"recipient_photo";N;s:11:"object_link";s:92:"/peak/signup/verify/email/becky.ethridge%40gmail.com/verify/f357869cc1ea34359c5c4b7742c929ff";}}', 100, 1, 0, '2012-01-27 13:16:26'),
(51, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"catherine.dortch@dvn.com";s:4:"date";i:1327672572;s:15:"recipient_title";s:16:"catherine.dortch";s:14:"recipient_link";s:16:"/peak/profile/27";s:15:"recipient_photo";N;s:11:"object_link";s:92:"/peak/signup/verify/email/catherine.dortch%40dvn.com/verify/c06d235caf44bb4053789b8350f5adb1";}}', 100, 1, 0, '2012-01-27 13:56:12'),
(52, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"zona@scholls.net";s:4:"date";i:1327673609;s:15:"recipient_title";s:4:"zona";s:14:"recipient_link";s:16:"/peak/profile/28";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/zona%40scholls.net/verify/72765712afb98b4f494203a8eb8404a2";}}', 100, 1, 0, '2012-01-27 14:13:29'),
(53, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"terri.mccoy@cox.net";s:4:"date";i:1327673954;s:15:"recipient_title";s:11:"terri.mccoy";s:14:"recipient_link";s:16:"/peak/profile/29";s:15:"recipient_photo";N;s:11:"object_link";s:87:"/peak/signup/verify/email/terri.mccoy%40cox.net/verify/a4653b3c00841bf4aca8f84825aa49ec";}}', 100, 1, 0, '2012-01-27 14:19:14'),
(54, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"wrassemom2@sbcglobal.net";s:4:"date";i:1327674320;s:15:"recipient_title";s:10:"wrassemom2";s:14:"recipient_link";s:16:"/peak/profile/30";s:15:"recipient_photo";N;s:11:"object_link";s:92:"/peak/signup/verify/email/wrassemom2%40sbcglobal.net/verify/f9865dca8b7ff0271a2e06d0404e4f9f";}}', 100, 1, 0, '2012-01-27 14:25:20'),
(55, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"dandmrude@yahoo.com";s:4:"date";i:1327676415;s:15:"recipient_title";s:9:"dandmrude";s:14:"recipient_link";s:16:"/peak/profile/31";s:15:"recipient_photo";N;s:11:"object_link";s:87:"/peak/signup/verify/email/dandmrude%40yahoo.com/verify/9cc8dc1e42e66377eb10c3d47af19dff";}}', 100, 1, 0, '2012-01-27 15:00:15'),
(56, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"tkelley7@cox.net";s:4:"date";i:1327676755;s:15:"recipient_title";s:8:"tkelley7";s:14:"recipient_link";s:16:"/peak/profile/32";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/tkelley7%40cox.net/verify/e4a1581a2375170a8ba209f3eb329763";}}', 100, 1, 0, '2012-01-27 15:05:56'),
(57, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:29:"michellerobnett@sbcglobal.net";s:4:"date";i:1327678662;s:15:"recipient_title";s:15:"michellerobnett";s:14:"recipient_link";s:16:"/peak/profile/33";s:15:"recipient_photo";N;s:11:"object_link";s:97:"/peak/signup/verify/email/michellerobnett%40sbcglobal.net/verify/f27763a05b6c9baf083a80ce4483cb80";}}', 100, 1, 0, '2012-01-27 15:37:42'),
(58, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"efrogge@cox.net";s:4:"date";i:1327679209;s:15:"recipient_title";s:7:"efrogge";s:14:"recipient_link";s:16:"/peak/profile/34";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/efrogge%40cox.net/verify/45f8af0b4279a9b2a1f2f54ed94f9fc7";}}', 100, 1, 0, '2012-01-27 15:46:49'),
(59, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"brandi.spear2@gmail.com";s:4:"date";i:1327680989;s:15:"recipient_title";s:13:"brandi.spear2";s:14:"recipient_link";s:16:"/peak/profile/35";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/brandi.spear2%40gmail.com/verify/21a3492ec64b4b78a192d59bdccbbb40";}}', 100, 1, 0, '2012-01-27 16:16:29'),
(60, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"polcovich@sbcglobal.net";s:4:"date";i:1327682405;s:15:"recipient_title";s:9:"polcovich";s:14:"recipient_link";s:16:"/peak/profile/36";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/polcovich%40sbcglobal.net/verify/35d189c1a2655fa99447d7dd96568ae5";}}', 100, 1, 0, '2012-01-27 16:40:05'),
(61, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"djjackson@okcps.org";s:4:"date";i:1327683236;s:15:"recipient_title";s:9:"djjackson";s:14:"recipient_link";s:16:"/peak/profile/37";s:15:"recipient_photo";N;s:11:"object_link";s:87:"/peak/signup/verify/email/djjackson%40okcps.org/verify/07649c80a9877925bfd3797c325bf637";}}', 100, 1, 0, '2012-01-27 16:53:56'),
(62, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"lisatburgess68@sbcglobal.net";s:4:"date";i:1327683450;s:15:"recipient_title";s:14:"lisatburgess68";s:14:"recipient_link";s:16:"/peak/profile/38";s:15:"recipient_photo";N;s:11:"object_link";s:96:"/peak/signup/verify/email/lisatburgess68%40sbcglobal.net/verify/dd51a6e016be23bb00b8e5f2b92b0b09";}}', 100, 1, 0, '2012-01-27 16:57:31'),
(63, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"kylee.rice@sbcglobal.net";s:4:"date";i:1327685894;s:15:"recipient_title";s:10:"kylee.rice";s:14:"recipient_link";s:16:"/peak/profile/39";s:15:"recipient_photo";N;s:11:"object_link";s:92:"/peak/signup/verify/email/kylee.rice%40sbcglobal.net/verify/c4706ca5c26ec2256e5619d777c819ec";}}', 100, 1, 0, '2012-01-27 17:38:14'),
(64, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"shellyjohnson@sbcglobal.net";s:4:"date";i:1327686426;s:15:"recipient_title";s:13:"shellyjohnson";s:14:"recipient_link";s:16:"/peak/profile/40";s:15:"recipient_photo";N;s:11:"object_link";s:95:"/peak/signup/verify/email/shellyjohnson%40sbcglobal.net/verify/8699b85f3828319abb8fd7d0e024513c";}}', 100, 1, 0, '2012-01-27 17:47:06'),
(65, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:9:"aa@bb.com";s:4:"date";i:1327688909;s:15:"recipient_title";s:2:"aa";s:14:"recipient_link";s:16:"/peak/profile/41";s:15:"recipient_photo";N;s:11:"object_link";s:77:"/peak/signup/verify/email/aa%40bb.com/verify/47bd15ac13bfbd99befe0c12fe86d76f";}}', 100, 1, 0, '2012-01-27 18:28:29'),
(66, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:10:"aca@bb.com";s:4:"date";i:1327689168;s:15:"recipient_title";s:3:"aca";s:14:"recipient_link";s:16:"/peak/profile/42";s:15:"recipient_photo";N;s:11:"object_link";s:78:"/peak/signup/verify/email/aca%40bb.com/verify/457eb16a1fa66a4be4815c7f1698c295";}}', 100, 1, 0, '2012-01-27 18:32:48'),
(67, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"joewade@cox.net";s:4:"date";i:1327689537;s:15:"recipient_title";s:7:"joewade";s:14:"recipient_link";s:16:"/peak/profile/43";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/joewade%40cox.net/verify/fa45f22c9609ab326e56888f89b9dbdf";}}', 100, 1, 0, '2012-01-27 18:38:58'),
(68, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"gandall7@cox.net";s:4:"date";i:1327689782;s:15:"recipient_title";s:8:"gandall7";s:14:"recipient_link";s:16:"/peak/profile/44";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/gandall7%40cox.net/verify/5ae2f18f1a9ba0a1d3e1f8c6e169a6bf";}}', 100, 1, 0, '2012-01-27 18:43:02'),
(69, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"Robynharwell@sbcglobal.net";s:4:"date";i:1327692244;s:15:"recipient_title";s:12:"Robynharwell";s:14:"recipient_link";s:16:"/peak/profile/45";s:15:"recipient_photo";N;s:11:"object_link";s:94:"/peak/signup/verify/email/Robynharwell%40sbcglobal.net/verify/917b903bcff8325f4c6b527f36cd0bde";}}', 100, 1, 0, '2012-01-27 19:24:04'),
(70, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"rbolles@cox.net";s:4:"date";i:1327692384;s:15:"recipient_title";s:7:"rbolles";s:14:"recipient_link";s:16:"/peak/profile/46";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/rbolles%40cox.net/verify/d22bc1fb2d9432b52b2aa2e60d9fbee1";}}', 100, 1, 0, '2012-01-27 19:26:24'),
(71, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"madisonward@live.com";s:4:"date";i:1327702845;s:15:"recipient_title";s:11:"madisonward";s:14:"recipient_link";s:16:"/peak/profile/47";s:15:"recipient_photo";N;s:11:"object_link";s:88:"/peak/signup/verify/email/madisonward%40live.com/verify/bce50ebdceca0e58e6d17e7c67781e7c";}}', 100, 1, 0, '2012-01-27 22:20:46'),
(72, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"rszawisza@cox.net";s:4:"date";i:1327702980;s:15:"recipient_title";s:9:"rszawisza";s:14:"recipient_link";s:16:"/peak/profile/48";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/rszawisza%40cox.net/verify/4e78c0e8869a28d1f26c9034e3f1b047";}}', 100, 1, 0, '2012-01-27 22:23:00'),
(73, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"alecia3@att.net";s:4:"date";i:1327704223;s:15:"recipient_title";s:7:"alecia3";s:14:"recipient_link";s:16:"/peak/profile/49";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/alecia3%40att.net/verify/71d8a96240d500f66811309022ce890a";}}', 100, 1, 0, '2012-01-27 22:43:43'),
(74, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"kimoaweau@live.com";s:4:"date";i:1327704801;s:15:"recipient_title";s:9:"kimoaweau";s:14:"recipient_link";s:16:"/peak/profile/50";s:15:"recipient_photo";N;s:11:"object_link";s:86:"/peak/signup/verify/email/kimoaweau%40live.com/verify/5792cba5fc08ffbc9e979eb11d9e7f7a";}}', 100, 1, 0, '2012-01-27 22:53:21'),
(75, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"rhaney7317@aol.com";s:4:"date";i:1327712241;s:15:"recipient_title";s:10:"rhaney7317";s:14:"recipient_link";s:16:"/peak/profile/51";s:15:"recipient_photo";N;s:11:"object_link";s:86:"/peak/signup/verify/email/rhaney7317%40aol.com/verify/29b262808f6572062db7dda6797edd46";}}', 100, 1, 0, '2012-01-28 00:57:21'),
(76, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"Willethr@aol.com";s:4:"date";i:1327714619;s:15:"recipient_title";s:8:"Willethr";s:14:"recipient_link";s:16:"/peak/profile/52";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/Willethr%40aol.com/verify/a21f40733aa4faefb4abff30e6e2d995";}}', 100, 1, 0, '2012-01-28 01:36:59'),
(77, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"rdecker@op2vb.com";s:4:"date";i:1327715430;s:15:"recipient_title";s:7:"rdecker";s:14:"recipient_link";s:16:"/peak/profile/53";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/rdecker%40op2vb.com/verify/36a9a6f9a66fd266738e8ddb82cf8685";}}', 100, 1, 0, '2012-01-28 01:50:30'),
(78, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"gatorvb@cox.net";s:4:"date";i:1327715525;s:15:"recipient_title";s:7:"gatorvb";s:14:"recipient_link";s:16:"/peak/profile/54";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/gatorvb%40cox.net/verify/92bf32eadf7cdf7efd50f00d49f9103a";}}', 100, 1, 0, '2012-01-28 01:52:05'),
(79, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"kena_thompson@yahoo.com";s:4:"date";i:1327719398;s:15:"recipient_title";s:13:"kena_thompson";s:14:"recipient_link";s:16:"/peak/profile/55";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/kena_thompson%40yahoo.com/verify/fc50249fcadcefd722cbe90fd0e9b400";}}', 100, 1, 0, '2012-01-28 02:56:38'),
(80, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"jelliotblake@yahoo.com";s:4:"date";i:1327719742;s:15:"recipient_title";s:12:"jelliotblake";s:14:"recipient_link";s:16:"/peak/profile/56";s:15:"recipient_photo";N;s:11:"object_link";s:90:"/peak/signup/verify/email/jelliotblake%40yahoo.com/verify/887c319116ed5f5334cd15c2cf1a9ce0";}}', 100, 1, 0, '2012-01-28 03:02:23'),
(81, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"kbradley16@cox.net";s:4:"date";i:1327720361;s:15:"recipient_title";s:10:"kbradley16";s:14:"recipient_link";s:16:"/peak/profile/57";s:15:"recipient_photo";N;s:11:"object_link";s:86:"/peak/signup/verify/email/kbradley16%40cox.net/verify/36d57150883ef1a25c0433c806b9a35a";}}', 100, 1, 0, '2012-01-28 03:12:42'),
(82, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"lisa@sportsimpact.biz";s:4:"date";i:1327720796;s:15:"recipient_title";s:4:"lisa";s:14:"recipient_link";s:16:"/peak/profile/58";s:15:"recipient_photo";N;s:11:"object_link";s:89:"/peak/signup/verify/email/lisa%40sportsimpact.biz/verify/4c62056a83974d31ed5eb42c60bb37ec";}}', 100, 1, 0, '2012-01-28 03:19:56'),
(83, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"herickson001@hotmail.com";s:4:"date";i:1327720803;s:15:"recipient_title";s:12:"herickson001";s:14:"recipient_link";s:16:"/peak/profile/59";s:15:"recipient_photo";N;s:11:"object_link";s:92:"/peak/signup/verify/email/herickson001%40hotmail.com/verify/88ecf8301c87572e2576200b8737cf38";}}', 100, 1, 0, '2012-01-28 03:20:03'),
(84, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"sophiebonadeo@yahoo.com";s:4:"date";i:1327721355;s:15:"recipient_title";s:13:"sophiebonadeo";s:14:"recipient_link";s:16:"/peak/profile/60";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/sophiebonadeo%40yahoo.com/verify/7cc4fbed54f50cefba8acfcae08a05d9";}}', 100, 1, 0, '2012-01-28 03:29:15'),
(85, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"forbelles@aol.com";s:4:"date";i:1327727129;s:15:"recipient_title";s:9:"forbelles";s:14:"recipient_link";s:16:"/peak/profile/61";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/forbelles%40aol.com/verify/29be8b6cce0e2d26c19ac1ed03a9a3b3";}}', 100, 1, 0, '2012-01-28 05:05:29'),
(86, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"wljess@aol.com";s:4:"date";i:1327727180;s:15:"recipient_title";s:6:"wljess";s:14:"recipient_link";s:16:"/peak/profile/62";s:15:"recipient_photo";N;s:11:"object_link";s:82:"/peak/signup/verify/email/wljess%40aol.com/verify/9ac22fdf1ec5dcab6401d71eb911372a";}}', 100, 1, 0, '2012-01-28 05:06:20'),
(87, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"susan@showsecretary.com";s:4:"date";i:1327730776;s:15:"recipient_title";s:5:"susan";s:14:"recipient_link";s:16:"/peak/profile/63";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/susan%40showsecretary.com/verify/7ae3728b943aabc47921ddf6a3396df8";}}', 100, 1, 0, '2012-01-28 06:06:16'),
(88, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"peytonf123@hotmail.com";s:4:"date";i:1327761167;s:15:"recipient_title";s:10:"peytonf123";s:14:"recipient_link";s:16:"/peak/profile/64";s:15:"recipient_photo";N;s:11:"object_link";s:90:"/peak/signup/verify/email/peytonf123%40hotmail.com/verify/d7eab45b68175a57e8b8a74b30b531e4";}}', 100, 1, 0, '2012-01-28 14:32:48'),
(89, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"claymiles@gmail.com";s:4:"date";i:1327769767;s:15:"recipient_title";s:9:"claymiles";s:14:"recipient_link";s:16:"/peak/profile/65";s:15:"recipient_photo";N;s:11:"object_link";s:87:"/peak/signup/verify/email/claymiles%40gmail.com/verify/3a5c014166c8f255d2d96d8a167fc801";}}', 100, 1, 0, '2012-01-28 16:56:07'),
(90, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"lm1312@mac.com";s:4:"date";i:1327770304;s:15:"recipient_title";s:6:"lm1312";s:14:"recipient_link";s:16:"/peak/profile/66";s:15:"recipient_photo";N;s:11:"object_link";s:82:"/peak/signup/verify/email/lm1312%40mac.com/verify/f47a5dc02b4ccb9f58d50282557c07a8";}}', 100, 1, 0, '2012-01-28 17:05:04'),
(91, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"hbmacy@gmail.com";s:4:"date";i:1327771628;s:15:"recipient_title";s:6:"hbmacy";s:14:"recipient_link";s:16:"/peak/profile/67";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/hbmacy%40gmail.com/verify/a0672d54a9c0226e9b645a702190fb5d";}}', 100, 1, 0, '2012-01-28 17:27:08'),
(92, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"3tdorseys@cox.net";s:4:"date";i:1327775448;s:15:"recipient_title";s:9:"3tdorseys";s:14:"recipient_link";s:16:"/peak/profile/68";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/3tdorseys%40cox.net/verify/c5890f8364293900c3cac1e856b5a66f";}}', 100, 1, 0, '2012-01-28 18:30:48'),
(93, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"alica.sexton@gmail.com";s:4:"date";i:1327806049;s:15:"recipient_title";s:12:"alica.sexton";s:14:"recipient_link";s:16:"/peak/profile/69";s:15:"recipient_photo";N;s:11:"object_link";s:90:"/peak/signup/verify/email/alica.sexton%40gmail.com/verify/51a92790e9122e217761a061d4553f1e";}}', 100, 1, 0, '2012-01-29 03:00:49'),
(94, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"3srites@cox.net";s:4:"date";i:1327856430;s:15:"recipient_title";s:7:"3srites";s:14:"recipient_link";s:16:"/peak/profile/70";s:15:"recipient_photo";N;s:11:"object_link";s:83:"/peak/signup/verify/email/3srites%40cox.net/verify/82064b96b6aa893cfc63d7f4eafd2d47";}}', 100, 1, 0, '2012-01-29 17:00:31'),
(95, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"vmanri2000@yahoo.com";s:4:"date";i:1327861571;s:15:"recipient_title";s:10:"vmanri2000";s:14:"recipient_link";s:16:"/peak/profile/71";s:15:"recipient_photo";N;s:11:"object_link";s:88:"/peak/signup/verify/email/vmanri2000%40yahoo.com/verify/2c94f748b45848bf65db857da0808954";}}', 100, 1, 0, '2012-01-29 18:26:11'),
(96, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"dbenson@simplexgrinnell.com";s:4:"date";i:1327868610;s:15:"recipient_title";s:7:"dbenson";s:14:"recipient_link";s:16:"/peak/profile/72";s:15:"recipient_photo";N;s:11:"object_link";s:95:"/peak/signup/verify/email/dbenson%40simplexgrinnell.com/verify/e6b9193079aa3b1dd0d4c0689238dffc";}}', 100, 1, 0, '2012-01-29 20:23:30'),
(97, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"AlissaBBenson@gmail.com";s:4:"date";i:1327869075;s:15:"recipient_title";s:13:"AlissaBBenson";s:14:"recipient_link";s:16:"/peak/profile/73";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/AlissaBBenson%40gmail.com/verify/52be1e1632ac39487f11c5fc22934f6f";}}', 100, 1, 0, '2012-01-29 20:31:15'),
(98, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"vbmoocow22@att.net";s:4:"date";i:1327869435;s:15:"recipient_title";s:10:"vbmoocow22";s:14:"recipient_link";s:16:"/peak/profile/74";s:15:"recipient_photo";N;s:11:"object_link";s:86:"/peak/signup/verify/email/vbmoocow22%40att.net/verify/dbe9ff8edea74689da68eb3e733170a6";}}', 100, 1, 0, '2012-01-29 20:37:15'),
(99, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"sherri.wiewel@cox.net";s:4:"date";i:1327884552;s:15:"recipient_title";s:13:"sherri.wiewel";s:14:"recipient_link";s:16:"/peak/profile/75";s:15:"recipient_photo";N;s:11:"object_link";s:89:"/peak/signup/verify/email/sherri.wiewel%40cox.net/verify/1d66f6a52d0d599c93b3c535521f584a";}}', 100, 1, 0, '2012-01-30 00:49:13'),
(100, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"rdecker@op2vb.com";s:4:"date";i:1327892071;s:15:"recipient_title";s:12:"Randy Decker";s:14:"recipient_link";s:16:"/peak/profile/53";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 02:54:31'),
(101, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"rdecker@op2vb.com";s:4:"date";i:1327892071;s:15:"recipient_title";s:12:"Randy Decker";s:14:"recipient_link";s:16:"/peak/profile/53";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 02:54:31'),
(102, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"Willethr@aol.com";s:4:"date";i:1327892122;s:15:"recipient_title";s:13:"Will Ethridge";s:14:"recipient_link";s:16:"/peak/profile/52";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 02:55:22'),
(103, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"Willethr@aol.com";s:4:"date";i:1327892122;s:15:"recipient_title";s:13:"Will Ethridge";s:14:"recipient_link";s:16:"/peak/profile/52";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 02:55:22'),
(104, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"gatorvb@cox.net";s:4:"date";i:1327893058;s:15:"recipient_title";s:12:"Jeff Boyland";s:14:"recipient_link";s:16:"/peak/profile/54";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:10:58'),
(105, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"gatorvb@cox.net";s:4:"date";i:1327893058;s:15:"recipient_title";s:12:"Jeff Boyland";s:14:"recipient_link";s:16:"/peak/profile/54";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:10:58'),
(106, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"kena_thompson@yahoo.com";s:4:"date";i:1327893126;s:15:"recipient_title";s:13:"Kena Thompson";s:14:"recipient_link";s:16:"/peak/profile/55";s:15:"recipient_photo";s:41:"/peak/public/user/1f/001f_17aa.JPG?c=f689";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:12:06'),
(107, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"kena_thompson@yahoo.com";s:4:"date";i:1327893126;s:15:"recipient_title";s:13:"Kena Thompson";s:14:"recipient_link";s:16:"/peak/profile/55";s:15:"recipient_photo";s:41:"/peak/public/user/1f/001f_17aa.JPG?c=f689";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:12:06'),
(108, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"lisa@sportsimpact.biz";s:4:"date";i:1327893248;s:15:"recipient_title";s:14:"Lisa Polcovich";s:14:"recipient_link";s:16:"/peak/profile/58";s:15:"recipient_photo";s:41:"/peak/public/user/23/0023_be50.JPG?c=3898";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:14:08'),
(109, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"lisa@sportsimpact.biz";s:4:"date";i:1327893248;s:15:"recipient_title";s:14:"Lisa Polcovich";s:14:"recipient_link";s:16:"/peak/profile/58";s:15:"recipient_photo";s:41:"/peak/public/user/23/0023_be50.JPG?c=3898";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:14:08'),
(110, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"jelliotblake@yahoo.com";s:4:"date";i:1327893277;s:15:"recipient_title";s:12:"Elliot Blake";s:14:"recipient_link";s:16:"/peak/profile/56";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:14:37'),
(111, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"jelliotblake@yahoo.com";s:4:"date";i:1327893277;s:15:"recipient_title";s:12:"Elliot Blake";s:14:"recipient_link";s:16:"/peak/profile/56";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:14:37'),
(112, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"rhaney7317@aol.com";s:4:"date";i:1327893316;s:15:"recipient_title";s:14:"Kristen Wilson";s:14:"recipient_link";s:16:"/peak/profile/51";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:15:16'),
(113, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"rhaney7317@aol.com";s:4:"date";i:1327893316;s:15:"recipient_title";s:14:"Kristen Wilson";s:14:"recipient_link";s:16:"/peak/profile/51";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:15:16'),
(114, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"kimoaweau@live.com";s:4:"date";i:1327893347;s:15:"recipient_title";s:10:"Kimo Aweau";s:14:"recipient_link";s:16:"/peak/profile/50";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:15:47'),
(115, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"kimoaweau@live.com";s:4:"date";i:1327893347;s:15:"recipient_title";s:10:"Kimo Aweau";s:14:"recipient_link";s:16:"/peak/profile/50";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:15:47'),
(116, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"marjoejek@aol.com";s:4:"date";i:1327893482;s:15:"recipient_title";s:10:"Mary Jekel";s:14:"recipient_link";s:16:"/peak/profile/11";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:18:02'),
(117, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"marjoejek@aol.com";s:4:"date";i:1327893482;s:15:"recipient_title";s:10:"Mary Jekel";s:14:"recipient_link";s:16:"/peak/profile/11";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-30 03:18:02'),
(118, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"pam.bert@chk.com";s:4:"date";i:1327895378;s:15:"recipient_title";s:8:"pam.bert";s:14:"recipient_link";s:16:"/peak/profile/76";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/pam.bert%40chk.com/verify/095a3d681bf82dbb87424b389cb553a1";}}', 100, 1, 0, '2012-01-30 03:49:39'),
(119, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"samduncanokre@gmail.com";s:4:"date";i:1327895819;s:15:"recipient_title";s:13:"samduncanokre";s:14:"recipient_link";s:16:"/peak/profile/77";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/samduncanokre%40gmail.com/verify/5ae871e2f38da58147f6e4078130ba5f";}}', 100, 1, 0, '2012-01-30 03:56:59'),
(120, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"mboevers@zagmail.gonzaga.edu";s:4:"date";i:1327897251;s:15:"recipient_title";s:8:"mboevers";s:14:"recipient_link";s:16:"/peak/profile/78";s:15:"recipient_photo";N;s:11:"object_link";s:96:"/peak/signup/verify/email/mboevers%40zagmail.gonzaga.edu/verify/5a8cb2b40eb76f0f2cfea301ca37e413";}}', 100, 1, 0, '2012-01-30 04:20:51'),
(121, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"heather.overturf@gmail.com";s:4:"date";i:1327929354;s:15:"recipient_title";s:16:"heather.overturf";s:14:"recipient_link";s:16:"/peak/profile/79";s:15:"recipient_photo";N;s:11:"object_link";s:94:"/peak/signup/verify/email/heather.overturf%40gmail.com/verify/9d1d3fd1fba9e0a8adaafaf5b421084d";}}', 100, 1, 0, '2012-01-30 13:15:54'),
(122, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"wekfam@cox.net";s:4:"date";i:1327930957;s:15:"recipient_title";s:6:"wekfam";s:14:"recipient_link";s:16:"/peak/profile/80";s:15:"recipient_photo";N;s:11:"object_link";s:82:"/peak/signup/verify/email/wekfam%40cox.net/verify/26a3c20e6cfd6bce9acbba8bf761a7e7";}}', 100, 1, 0, '2012-01-30 13:42:37'),
(123, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"jheiden2@cox.net";s:4:"date";i:1327935004;s:15:"recipient_title";s:8:"jheiden2";s:14:"recipient_link";s:16:"/peak/profile/81";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/jheiden2%40cox.net/verify/a00e67190960ac78a2931896b75720f4";}}', 100, 1, 0, '2012-01-30 14:50:05'),
(124, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"mbrooks@levybeffort.com";s:4:"date";i:1327936597;s:15:"recipient_title";s:7:"mbrooks";s:14:"recipient_link";s:16:"/peak/profile/82";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/mbrooks%40levybeffort.com/verify/354a2f9eb895af3a86ac46210cd0681b";}}', 100, 1, 0, '2012-01-30 15:16:37'),
(125, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"lkleindahlberg@gmail.com";s:4:"date";i:1327936784;s:15:"recipient_title";s:14:"lkleindahlberg";s:14:"recipient_link";s:16:"/peak/profile/83";s:15:"recipient_photo";N;s:11:"object_link";s:92:"/peak/signup/verify/email/lkleindahlberg%40gmail.com/verify/a5cc152b5e4c4cc2cc060134bb9ef8a4";}}', 100, 1, 0, '2012-01-30 15:19:45'),
(126, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"mherrin@op2vb.com";s:4:"date";i:1327943183;s:15:"recipient_title";s:7:"mherrin";s:14:"recipient_link";s:16:"/peak/profile/84";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/mherrin%40op2vb.com/verify/0acc9dfd92c65a2f8c71ccbb0526f249";}}', 100, 1, 0, '2012-01-30 17:06:23'),
(127, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"jjbeeson12@yahoo.com";s:4:"date";i:1327946489;s:15:"recipient_title";s:10:"jjbeeson12";s:14:"recipient_link";s:16:"/peak/profile/85";s:15:"recipient_photo";N;s:11:"object_link";s:88:"/peak/signup/verify/email/jjbeeson12%40yahoo.com/verify/4c12d6f5dd25d02f160cd4093674de70";}}', 100, 1, 0, '2012-01-30 18:01:30'),
(128, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"randall.gantz@yahoo.com";s:4:"date";i:1327952525;s:15:"recipient_title";s:13:"randall.gantz";s:14:"recipient_link";s:16:"/peak/profile/86";s:15:"recipient_photo";N;s:11:"object_link";s:91:"/peak/signup/verify/email/randall.gantz%40yahoo.com/verify/fb9bfa8f801db1bf0d262a4ba3f70934";}}', 100, 1, 0, '2012-01-30 19:42:05'),
(129, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:25:"nataliejo_op2@hotmail.com";s:4:"date";i:1327955226;s:15:"recipient_title";s:13:"nataliejo_op2";s:14:"recipient_link";s:16:"/peak/profile/87";s:15:"recipient_photo";N;s:11:"object_link";s:93:"/peak/signup/verify/email/nataliejo_op2%40hotmail.com/verify/f74aca0982f71e673e8c9353df155386";}}', 100, 1, 0, '2012-01-30 20:27:06'),
(130, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"knettleton@dealercapital.com";s:4:"date";i:1327957960;s:15:"recipient_title";s:10:"knettleton";s:14:"recipient_link";s:16:"/peak/profile/88";s:15:"recipient_photo";N;s:11:"object_link";s:96:"/peak/signup/verify/email/knettleton%40dealercapital.com/verify/6708035250dee779e51e18e5a156d43a";}}', 100, 1, 0, '2012-01-30 21:12:40'),
(131, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"c_skoch@yahoo.com";s:4:"date";i:1327958370;s:15:"recipient_title";s:7:"c_skoch";s:14:"recipient_link";s:16:"/peak/profile/89";s:15:"recipient_photo";N;s:11:"object_link";s:85:"/peak/signup/verify/email/c_skoch%40yahoo.com/verify/753fb1a63099a722929c213192d1950a";}}', 100, 1, 0, '2012-01-30 21:19:31'),
(132, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"donlisacochran@sbcglobal.net";s:4:"date";i:1327959523;s:15:"recipient_title";s:14:"donlisacochran";s:14:"recipient_link";s:16:"/peak/profile/90";s:15:"recipient_photo";N;s:11:"object_link";s:96:"/peak/signup/verify/email/donlisacochran%40sbcglobal.net/verify/c855487723c118ddb803dad17d154a77";}}', 100, 1, 0, '2012-01-30 21:38:43'),
(133, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"tpearson11@cox.net";s:4:"date";i:1327961669;s:15:"recipient_title";s:10:"tpearson11";s:14:"recipient_link";s:16:"/peak/profile/91";s:15:"recipient_photo";N;s:11:"object_link";s:86:"/peak/signup/verify/email/tpearson11%40cox.net/verify/b5725b84cb1861e32e514899521b98d5";}}', 100, 1, 0, '2012-01-30 22:14:29'),
(134, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"gboyland@cox.net";s:4:"date";i:1327969653;s:15:"recipient_title";s:8:"gboyland";s:14:"recipient_link";s:16:"/peak/profile/92";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/gboyland%40cox.net/verify/6f23d3071b1495dcf5bf1d6c147dd170";}}', 100, 1, 0, '2012-01-31 00:27:33'),
(135, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:25:"nataliejo_op2@hotmail.com";s:4:"date";i:1327976399;s:15:"recipient_title";s:14:"Natalie Murray";s:14:"recipient_link";s:16:"/peak/profile/87";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:19:59'),
(136, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:25:"nataliejo_op2@hotmail.com";s:4:"date";i:1327976399;s:15:"recipient_title";s:14:"Natalie Murray";s:14:"recipient_link";s:16:"/peak/profile/87";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:19:59'),
(137, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"mherrin@op2vb.com";s:4:"date";i:1327976430;s:15:"recipient_title";s:11:"Mark Herrin";s:14:"recipient_link";s:16:"/peak/profile/84";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:20:30'),
(138, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"mherrin@op2vb.com";s:4:"date";i:1327976430;s:15:"recipient_title";s:11:"Mark Herrin";s:14:"recipient_link";s:16:"/peak/profile/84";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:20:30'),
(139, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"heather.overturf@gmail.com";s:4:"date";i:1327976476;s:15:"recipient_title";s:12:"Heather Ruiz";s:14:"recipient_link";s:16:"/peak/profile/79";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:21:16'),
(140, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"heather.overturf@gmail.com";s:4:"date";i:1327976476;s:15:"recipient_title";s:12:"Heather Ruiz";s:14:"recipient_link";s:16:"/peak/profile/79";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:21:16'),
(141, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"mboevers@zagmail.gonzaga.edu";s:4:"date";i:1327976500;s:15:"recipient_title";s:16:"Michelle Boevers";s:14:"recipient_link";s:16:"/peak/profile/78";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:21:40'),
(142, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"mboevers@zagmail.gonzaga.edu";s:4:"date";i:1327976500;s:15:"recipient_title";s:16:"Michelle Boevers";s:14:"recipient_link";s:16:"/peak/profile/78";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:21:40');
INSERT INTO `engine4_core_mail` (`mail_id`, `type`, `body`, `priority`, `recipient_count`, `recipient_total`, `creation_time`) VALUES
(143, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"samduncanokre@gmail.com";s:4:"date";i:1327976522;s:15:"recipient_title";s:12:"Sammy Duncan";s:14:"recipient_link";s:16:"/peak/profile/77";s:15:"recipient_photo";s:41:"/peak/public/user/3b/003b_fe30.jpg?c=5077";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:22:02'),
(144, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"samduncanokre@gmail.com";s:4:"date";i:1327976522;s:15:"recipient_title";s:12:"Sammy Duncan";s:14:"recipient_link";s:16:"/peak/profile/77";s:15:"recipient_photo";s:41:"/peak/public/user/3b/003b_fe30.jpg?c=5077";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 02:22:02'),
(145, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"jamie_massengill@yahoo.com";s:4:"date";i:1327978831;s:15:"recipient_title";s:16:"jamie_massengill";s:14:"recipient_link";s:16:"/peak/profile/93";s:15:"recipient_photo";N;s:11:"object_link";s:94:"/peak/signup/verify/email/jamie_massengill%40yahoo.com/verify/e73cccc558c66ae372528df5e28e2a23";}}', 100, 1, 0, '2012-01-31 03:00:31'),
(146, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:13:"meget@att.net";s:4:"date";i:1327980633;s:15:"recipient_title";s:5:"meget";s:14:"recipient_link";s:16:"/peak/profile/94";s:15:"recipient_photo";N;s:11:"object_link";s:81:"/peak/signup/verify/email/meget%40att.net/verify/973de93274ef7bfcceb2d35c7063c92c";}}', 100, 1, 0, '2012-01-31 03:30:33'),
(147, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"lj_baker@cox.net";s:4:"date";i:1327987701;s:15:"recipient_title";s:8:"lj_baker";s:14:"recipient_link";s:16:"/peak/profile/95";s:15:"recipient_photo";N;s:11:"object_link";s:84:"/peak/signup/verify/email/lj_baker%40cox.net/verify/26fa98696d20a3946e96c398602314e7";}}', 100, 1, 0, '2012-01-31 05:28:21'),
(148, 'system', 'a:2:{s:4:"type";s:17:"core_verification";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"elanna.killackey@gmail.com";s:4:"date";i:1328019351;s:15:"recipient_title";s:16:"elanna.killackey";s:14:"recipient_link";s:16:"/peak/profile/96";s:15:"recipient_photo";N;s:11:"object_link";s:94:"/peak/signup/verify/email/elanna.killackey%40gmail.com/verify/abd21849ee0b4d96ac1ba82db5c6f449";}}', 100, 1, 0, '2012-01-31 14:15:52'),
(149, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"zona@scholls.net";s:4:"date";i:1328037729;s:15:"recipient_title";s:13:"Ericka Scholl";s:14:"recipient_link";s:16:"/peak/profile/28";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:22:09'),
(150, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"zona@scholls.net";s:4:"date";i:1328037729;s:15:"recipient_title";s:13:"Ericka Scholl";s:14:"recipient_link";s:16:"/peak/profile/28";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:22:09'),
(151, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"wljess@aol.com";s:4:"date";i:1328037759;s:15:"recipient_title";s:11:"Ciera Jesse";s:14:"recipient_link";s:16:"/peak/profile/62";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:22:39'),
(152, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"wljess@aol.com";s:4:"date";i:1328037759;s:15:"recipient_title";s:11:"Ciera Jesse";s:14:"recipient_link";s:16:"/peak/profile/62";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:22:39'),
(153, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"wekfam@cox.net";s:4:"date";i:1328037811;s:15:"recipient_title";s:15:"Paige Wekenborg";s:14:"recipient_link";s:16:"/peak/profile/80";s:15:"recipient_photo";s:41:"/peak/public/user/3f/003f_4b44.jpg?c=a472";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:23:31'),
(154, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"wekfam@cox.net";s:4:"date";i:1328037811;s:15:"recipient_title";s:15:"Paige Wekenborg";s:14:"recipient_link";s:16:"/peak/profile/80";s:15:"recipient_photo";s:41:"/peak/public/user/3f/003f_4b44.jpg?c=a472";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:23:31'),
(155, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"vmanri2000@yahoo.com";s:4:"date";i:1328037871;s:15:"recipient_title";s:16:"Rachel Manriquez";s:14:"recipient_link";s:16:"/peak/profile/71";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:24:31'),
(156, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"vmanri2000@yahoo.com";s:4:"date";i:1328037871;s:15:"recipient_title";s:16:"Rachel Manriquez";s:14:"recipient_link";s:16:"/peak/profile/71";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:24:31'),
(157, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"polcovich@sbcglobal.net";s:4:"date";i:1328037889;s:15:"recipient_title";s:16:"Teagan Polcovich";s:14:"recipient_link";s:16:"/peak/profile/36";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:24:49'),
(158, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"polcovich@sbcglobal.net";s:4:"date";i:1328037889;s:15:"recipient_title";s:16:"Teagan Polcovich";s:14:"recipient_link";s:16:"/peak/profile/36";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:24:49'),
(159, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"tpearson11@cox.net";s:4:"date";i:1328037913;s:15:"recipient_title";s:15:"Madison Pearson";s:14:"recipient_link";s:16:"/peak/profile/91";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:25:13'),
(160, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"tpearson11@cox.net";s:4:"date";i:1328037913;s:15:"recipient_title";s:15:"Madison Pearson";s:14:"recipient_link";s:16:"/peak/profile/91";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:25:13'),
(161, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"lj_baker@cox.net";s:4:"date";i:1328038081;s:15:"recipient_title";s:12:"Reagan Baker";s:14:"recipient_link";s:16:"/peak/profile/95";s:15:"recipient_photo";s:41:"/peak/public/user/4b/004b_bf3a.JPG?c=5a1e";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:28:01'),
(162, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"lj_baker@cox.net";s:4:"date";i:1328038081;s:15:"recipient_title";s:12:"Reagan Baker";s:14:"recipient_link";s:16:"/peak/profile/95";s:15:"recipient_photo";s:41:"/peak/public/user/4b/004b_bf3a.JPG?c=5a1e";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:28:01'),
(163, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"brandi.spear2@gmail.com";s:4:"date";i:1328038106;s:15:"recipient_title";s:16:"Tayler  Burzette";s:14:"recipient_link";s:16:"/peak/profile/35";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:28:26'),
(164, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"brandi.spear2@gmail.com";s:4:"date";i:1328038106;s:15:"recipient_title";s:16:"Tayler  Burzette";s:14:"recipient_link";s:16:"/peak/profile/35";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:28:26'),
(165, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"claymiles@gmail.com";s:4:"date";i:1328038124;s:15:"recipient_title";s:12:"Sydney Miles";s:14:"recipient_link";s:16:"/peak/profile/65";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:28:44'),
(166, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"claymiles@gmail.com";s:4:"date";i:1328038124;s:15:"recipient_title";s:12:"Sydney Miles";s:14:"recipient_link";s:16:"/peak/profile/65";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:28:44'),
(167, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"sophiebonadeo@yahoo.com";s:4:"date";i:1328038145;s:15:"recipient_title";s:14:"Sophie Bonadeo";s:14:"recipient_link";s:16:"/peak/profile/60";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:29:05'),
(168, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"sophiebonadeo@yahoo.com";s:4:"date";i:1328038146;s:15:"recipient_title";s:14:"Sophie Bonadeo";s:14:"recipient_link";s:16:"/peak/profile/60";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:29:06'),
(169, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"3tdorseys@cox.net";s:4:"date";i:1328038193;s:15:"recipient_title";s:13:"Timmie Dorsey";s:14:"recipient_link";s:16:"/peak/profile/68";s:15:"recipient_photo";s:41:"/peak/public/user/33/0033_5f26.JPG?c=d75a";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:29:53'),
(170, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"3tdorseys@cox.net";s:4:"date";i:1328038193;s:15:"recipient_title";s:13:"Timmie Dorsey";s:14:"recipient_link";s:16:"/peak/profile/68";s:15:"recipient_photo";s:41:"/peak/public/user/33/0033_5f26.JPG?c=d75a";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:29:53'),
(171, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"tbell1961@aol.com";s:4:"date";i:1328038224;s:15:"recipient_title";s:10:"Tonya Bell";s:14:"recipient_link";s:16:"/peak/profile/20";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:30:24'),
(172, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"tbell1961@aol.com";s:4:"date";i:1328038224;s:15:"recipient_title";s:10:"Tonya Bell";s:14:"recipient_link";s:16:"/peak/profile/20";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:30:24'),
(173, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"alica.sexton@gmail.com";s:4:"date";i:1328038258;s:15:"recipient_title";s:12:"Alica Sexton";s:14:"recipient_link";s:16:"/peak/profile/69";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:30:58'),
(174, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"alica.sexton@gmail.com";s:4:"date";i:1328038258;s:15:"recipient_title";s:12:"Alica Sexton";s:14:"recipient_link";s:16:"/peak/profile/69";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:30:58'),
(175, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"terri.mccoy@cox.net";s:4:"date";i:1328038304;s:15:"recipient_title";s:11:"Terri McCoy";s:14:"recipient_link";s:16:"/peak/profile/29";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:31:44'),
(176, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"terri.mccoy@cox.net";s:4:"date";i:1328038304;s:15:"recipient_title";s:11:"Terri McCoy";s:14:"recipient_link";s:16:"/peak/profile/29";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:31:44'),
(177, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"terri.mccoy@cox.net";s:4:"date";i:1328038333;s:15:"recipient_title";s:11:"Terri McCoy";s:14:"recipient_link";s:16:"/peak/profile/29";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:17:"Christopher Lloyd";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"object_title";s:4:"Team";s:11:"object_link";s:24:"/peak/messages/view/id/1";s:12:"object_photo";N;s:18:"object_description";s:27:"What team is your child in?";}}', 100, 1, 0, '2012-01-31 19:32:13'),
(178, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"jheiden2@cox.net";s:4:"date";i:1328038355;s:15:"recipient_title";s:13:"Jessie Heiden";s:14:"recipient_link";s:16:"/peak/profile/81";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:32:35'),
(179, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"jheiden2@cox.net";s:4:"date";i:1328038355;s:15:"recipient_title";s:13:"Jessie Heiden";s:14:"recipient_link";s:16:"/peak/profile/81";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:32:35'),
(180, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"kbradley16@cox.net";s:4:"date";i:1328038386;s:15:"recipient_title";s:16:"Samantha Bradley";s:14:"recipient_link";s:16:"/peak/profile/57";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:33:06'),
(181, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"kbradley16@cox.net";s:4:"date";i:1328038386;s:15:"recipient_title";s:16:"Samantha Bradley";s:14:"recipient_link";s:16:"/peak/profile/57";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:33:06'),
(182, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"prbert66@cox.net";s:4:"date";i:1328038971;s:15:"recipient_title";s:11:"Alyssa Bert";s:14:"recipient_link";s:16:"/peak/profile/21";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:42:51'),
(183, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"prbert66@cox.net";s:4:"date";i:1328038971;s:15:"recipient_title";s:11:"Alyssa Bert";s:14:"recipient_link";s:16:"/peak/profile/21";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:42:51'),
(184, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"3srites@cox.net";s:4:"date";i:1328038989;s:15:"recipient_title";s:14:"Samantha Srite";s:14:"recipient_link";s:16:"/peak/profile/70";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:09'),
(185, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"3srites@cox.net";s:4:"date";i:1328038989;s:15:"recipient_title";s:14:"Samantha Srite";s:14:"recipient_link";s:16:"/peak/profile/70";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:09'),
(186, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"pam.bert@chk.com";s:4:"date";i:1328039005;s:15:"recipient_title";s:11:"Alyssa Bert";s:14:"recipient_link";s:16:"/peak/profile/76";s:15:"recipient_photo";s:41:"/peak/public/user/37/0037_cb55.jpg?c=4856";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:25'),
(187, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"pam.bert@chk.com";s:4:"date";i:1328039006;s:15:"recipient_title";s:11:"Alyssa Bert";s:14:"recipient_link";s:16:"/peak/profile/76";s:15:"recipient_photo";s:41:"/peak/public/user/37/0037_cb55.jpg?c=4856";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:26'),
(188, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"radecker@att.net";s:4:"date";i:1328039021;s:15:"recipient_title";s:12:"Sarah Decker";s:14:"recipient_link";s:16:"/peak/profile/24";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:41'),
(189, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"radecker@att.net";s:4:"date";i:1328039021;s:15:"recipient_title";s:12:"Sarah Decker";s:14:"recipient_link";s:16:"/peak/profile/24";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:41'),
(190, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"mbrooks@levybeffort.com";s:4:"date";i:1328039036;s:15:"recipient_title";s:15:"Jennifer Brooks";s:14:"recipient_link";s:16:"/peak/profile/82";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:56'),
(191, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"mbrooks@levybeffort.com";s:4:"date";i:1328039036;s:15:"recipient_title";s:15:"Jennifer Brooks";s:14:"recipient_link";s:16:"/peak/profile/82";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:43:56'),
(192, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"madisonward@live.com";s:4:"date";i:1328039054;s:15:"recipient_title";s:12:"Madison Ward";s:14:"recipient_link";s:16:"/peak/profile/47";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:44:14'),
(193, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"madisonward@live.com";s:4:"date";i:1328039054;s:15:"recipient_title";s:12:"Madison Ward";s:14:"recipient_link";s:16:"/peak/profile/47";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:44:14'),
(194, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"susan@showsecretary.com";s:4:"date";i:1328039064;s:15:"recipient_title";s:12:"Anna Peacock";s:14:"recipient_link";s:16:"/peak/profile/63";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:44:24'),
(195, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"djjackson@okcps.org";s:4:"date";i:1328039134;s:15:"recipient_title";s:14:"Aeriel Jackson";s:14:"recipient_link";s:16:"/peak/profile/37";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:45:34'),
(196, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"djjackson@okcps.org";s:4:"date";i:1328039221;s:15:"recipient_title";s:14:"Aeriel Jackson";s:14:"recipient_link";s:16:"/peak/profile/37";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:47:01'),
(197, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"djjackson@okcps.org";s:4:"date";i:1328039221;s:15:"recipient_title";s:14:"Aeriel Jackson";s:14:"recipient_link";s:16:"/peak/profile/37";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:47:01'),
(198, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"AlissaBBenson@gmail.com";s:4:"date";i:1328039256;s:15:"recipient_title";s:13:"Alissa Benson";s:14:"recipient_link";s:16:"/peak/profile/73";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:47:36'),
(199, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"AlissaBBenson@gmail.com";s:4:"date";i:1328039256;s:15:"recipient_title";s:13:"Alissa Benson";s:14:"recipient_link";s:16:"/peak/profile/73";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:47:36'),
(200, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"jjbeeson12@yahoo.com";s:4:"date";i:1328039431;s:15:"recipient_title";s:14:"Skylar Hamlett";s:14:"recipient_link";s:16:"/peak/profile/85";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:50:31'),
(201, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"jjbeeson12@yahoo.com";s:4:"date";i:1328039431;s:15:"recipient_title";s:14:"Skylar Hamlett";s:14:"recipient_link";s:16:"/peak/profile/85";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:50:31'),
(202, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"susan@showsecretary.com";s:4:"date";i:1328039448;s:15:"recipient_title";s:12:"Anna Peacock";s:14:"recipient_link";s:16:"/peak/profile/63";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:50:48'),
(203, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"susan@showsecretary.com";s:4:"date";i:1328039448;s:15:"recipient_title";s:12:"Anna Peacock";s:14:"recipient_link";s:16:"/peak/profile/63";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:50:48'),
(204, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"shellyjohnson@sbcglobal.net";s:4:"date";i:1328039462;s:15:"recipient_title";s:13:"Sarah Johnson";s:14:"recipient_link";s:16:"/peak/profile/40";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:51:02'),
(205, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"shellyjohnson@sbcglobal.net";s:4:"date";i:1328039462;s:15:"recipient_title";s:13:"Sarah Johnson";s:14:"recipient_link";s:16:"/peak/profile/40";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:51:02'),
(206, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"c_skoch@yahoo.com";s:4:"date";i:1328039478;s:15:"recipient_title";s:15:"Sarah Gilkerson";s:14:"recipient_link";s:16:"/peak/profile/89";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:51:18'),
(207, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"c_skoch@yahoo.com";s:4:"date";i:1328039478;s:15:"recipient_title";s:15:"Sarah Gilkerson";s:14:"recipient_link";s:16:"/peak/profile/89";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:51:18'),
(208, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"rszawisza@cox.net";s:4:"date";i:1328039526;s:15:"recipient_title";s:15:"Miranda Zawisza";s:14:"recipient_link";s:16:"/peak/profile/48";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:52:06'),
(209, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"rszawisza@cox.net";s:4:"date";i:1328039526;s:15:"recipient_title";s:15:"Miranda Zawisza";s:14:"recipient_link";s:16:"/peak/profile/48";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:52:06'),
(210, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"randall.gantz@yahoo.com";s:4:"date";i:1328039539;s:15:"recipient_title";s:12:"Reagan Gantz";s:14:"recipient_link";s:16:"/peak/profile/86";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:52:19'),
(211, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"randall.gantz@yahoo.com";s:4:"date";i:1328039540;s:15:"recipient_title";s:12:"Reagan Gantz";s:14:"recipient_link";s:16:"/peak/profile/86";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:52:20'),
(212, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"peytonf123@hotmail.com";s:4:"date";i:1328039553;s:15:"recipient_title";s:12:"Peyton Fryer";s:14:"recipient_link";s:16:"/peak/profile/64";s:15:"recipient_photo";s:41:"/peak/public/user/2f/002f_3402.jpg?c=1cfb";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:52:33'),
(213, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"peytonf123@hotmail.com";s:4:"date";i:1328039553;s:15:"recipient_title";s:12:"Peyton Fryer";s:14:"recipient_link";s:16:"/peak/profile/64";s:15:"recipient_photo";s:41:"/peak/public/user/2f/002f_3402.jpg?c=1cfb";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:52:33'),
(214, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"lm1312@mac.com";s:4:"date";i:1328039665;s:15:"recipient_title";s:11:"Paige Miles";s:14:"recipient_link";s:16:"/peak/profile/66";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:54:25'),
(215, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"lm1312@mac.com";s:4:"date";i:1328039665;s:15:"recipient_title";s:11:"Paige Miles";s:14:"recipient_link";s:16:"/peak/profile/66";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:54:25'),
(216, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:29:"michellerobnett@sbcglobal.net";s:4:"date";i:1328039687;s:15:"recipient_title";s:15:"Katelyn Robnett";s:14:"recipient_link";s:16:"/peak/profile/33";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:54:47'),
(217, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:29:"michellerobnett@sbcglobal.net";s:4:"date";i:1328039687;s:15:"recipient_title";s:15:"Katelyn Robnett";s:14:"recipient_link";s:16:"/peak/profile/33";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:54:47'),
(218, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"catherine.dortch@dvn.com";s:4:"date";i:1328039704;s:15:"recipient_title";s:14:"McKinly Dortch";s:14:"recipient_link";s:16:"/peak/profile/27";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:55:04'),
(219, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"catherine.dortch@dvn.com";s:4:"date";i:1328039704;s:15:"recipient_title";s:14:"McKinly Dortch";s:14:"recipient_link";s:16:"/peak/profile/27";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:55:04'),
(220, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"becky.ethridge@gmail.com";s:4:"date";i:1328039726;s:15:"recipient_title";s:14:"Becky Ethridge";s:14:"recipient_link";s:16:"/peak/profile/26";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:55:26'),
(221, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"becky.ethridge@gmail.com";s:4:"date";i:1328039726;s:15:"recipient_title";s:14:"Becky Ethridge";s:14:"recipient_link";s:16:"/peak/profile/26";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:55:26'),
(222, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"mkmrucker@cox.net";s:4:"date";i:1328039740;s:15:"recipient_title";s:13:"Bailey Rucker";s:14:"recipient_link";s:16:"/peak/profile/16";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:55:40'),
(223, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"mkmrucker@cox.net";s:4:"date";i:1328039740;s:15:"recipient_title";s:13:"Bailey Rucker";s:14:"recipient_link";s:16:"/peak/profile/16";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:55:40'),
(224, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"alecia3@att.net";s:4:"date";i:1328039772;s:15:"recipient_title";s:13:"maicee morgan";s:14:"recipient_link";s:16:"/peak/profile/49";s:15:"recipient_photo";s:41:"/peak/public/user/1b/001b_be5d.JPG?c=9308";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:56:12'),
(225, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"alecia3@att.net";s:4:"date";i:1328039772;s:15:"recipient_title";s:13:"maicee morgan";s:14:"recipient_link";s:16:"/peak/profile/49";s:15:"recipient_photo";s:41:"/peak/public/user/1b/001b_be5d.JPG?c=9308";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:56:12'),
(226, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"rbolles@cox.net";s:4:"date";i:1328039791;s:15:"recipient_title";s:14:"Madison Bolles";s:14:"recipient_link";s:16:"/peak/profile/46";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:56:31'),
(227, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"rbolles@cox.net";s:4:"date";i:1328039791;s:15:"recipient_title";s:14:"Madison Bolles";s:14:"recipient_link";s:16:"/peak/profile/46";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:56:31'),
(228, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"lisatburgess68@sbcglobal.net";s:4:"date";i:1328039835;s:15:"recipient_title";s:14:"Lauren Burgess";s:14:"recipient_link";s:16:"/peak/profile/38";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:57:15'),
(229, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"lisatburgess68@sbcglobal.net";s:4:"date";i:1328039835;s:15:"recipient_title";s:14:"Lauren Burgess";s:14:"recipient_link";s:16:"/peak/profile/38";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:57:15'),
(230, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"macyfam@cox.net";s:4:"date";i:1328039850;s:15:"recipient_title";s:12:"Kristen Macy";s:14:"recipient_link";s:16:"/peak/profile/23";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:57:30'),
(231, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"macyfam@cox.net";s:4:"date";i:1328039850;s:15:"recipient_title";s:12:"Kristen Macy";s:14:"recipient_link";s:16:"/peak/profile/23";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:57:30'),
(232, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"lkleindahlberg@gmail.com";s:4:"date";i:1328039879;s:15:"recipient_title";s:14:"REGAN DEQUASIE";s:14:"recipient_link";s:16:"/peak/profile/83";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:57:59'),
(233, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"lkleindahlberg@gmail.com";s:4:"date";i:1328039879;s:15:"recipient_title";s:14:"REGAN DEQUASIE";s:14:"recipient_link";s:16:"/peak/profile/83";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:57:59'),
(234, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:25:"edmondroberts@hotmail.com";s:4:"date";i:1328039895;s:15:"recipient_title";s:13:"Emily Roberts";s:14:"recipient_link";s:16:"/peak/profile/17";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:58:15'),
(235, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:25:"edmondroberts@hotmail.com";s:4:"date";i:1328039896;s:15:"recipient_title";s:13:"Emily Roberts";s:14:"recipient_link";s:16:"/peak/profile/17";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:58:16'),
(236, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"hbmacy@gmail.com";s:4:"date";i:1328039910;s:15:"recipient_title";s:10:"Kenna Macy";s:14:"recipient_link";s:16:"/peak/profile/67";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:58:30'),
(237, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"hbmacy@gmail.com";s:4:"date";i:1328039910;s:15:"recipient_title";s:10:"Kenna Macy";s:14:"recipient_link";s:16:"/peak/profile/67";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:58:30'),
(238, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"jchoi@ppandco.com";s:4:"date";i:1328039960;s:15:"recipient_title";s:10:"Jenni Choi";s:14:"recipient_link";s:16:"/peak/profile/14";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:59:20'),
(239, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"jchoi@ppandco.com";s:4:"date";i:1328039960;s:15:"recipient_title";s:10:"Jenni Choi";s:14:"recipient_link";s:16:"/peak/profile/14";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:59:20'),
(240, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"vbmoocow22@att.net";s:4:"date";i:1328039989;s:15:"recipient_title";s:13:"Maggie Benson";s:14:"recipient_link";s:16:"/peak/profile/74";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:59:49'),
(241, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"vbmoocow22@att.net";s:4:"date";i:1328039989;s:15:"recipient_title";s:13:"Maggie Benson";s:14:"recipient_link";s:16:"/peak/profile/74";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 19:59:49'),
(242, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"sherri.wiewel@cox.net";s:4:"date";i:1328040923;s:15:"recipient_title";s:11:"ANNA WIEWEL";s:14:"recipient_link";s:16:"/peak/profile/75";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:15:23'),
(243, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"sherri.wiewel@cox.net";s:4:"date";i:1328040923;s:15:"recipient_title";s:11:"ANNA WIEWEL";s:14:"recipient_link";s:16:"/peak/profile/75";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:15:23'),
(244, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"jamie_massengill@yahoo.com";s:4:"date";i:1328040943;s:15:"recipient_title";s:16:"Lakyn Massengill";s:14:"recipient_link";s:16:"/peak/profile/93";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:15:43'),
(245, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"jamie_massengill@yahoo.com";s:4:"date";i:1328040943;s:15:"recipient_title";s:16:"Lakyn Massengill";s:14:"recipient_link";s:16:"/peak/profile/93";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:15:43'),
(246, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"wrassemom2@sbcglobal.net";s:4:"date";i:1328040961;s:15:"recipient_title";s:14:"Bethany Wrasse";s:14:"recipient_link";s:16:"/peak/profile/30";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:16:01'),
(247, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"wrassemom2@sbcglobal.net";s:4:"date";i:1328040961;s:15:"recipient_title";s:14:"Bethany Wrasse";s:14:"recipient_link";s:16:"/peak/profile/30";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:16:01'),
(248, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"knettleton@dealercapital.com";s:4:"date";i:1328040987;s:15:"recipient_title";s:14:"Emma Nettleton";s:14:"recipient_link";s:16:"/peak/profile/88";s:15:"recipient_photo";s:41:"/peak/public/user/47/0047_209f.jpg?c=a0e1";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:16:27'),
(249, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"knettleton@dealercapital.com";s:4:"date";i:1328040987;s:15:"recipient_title";s:14:"Emma Nettleton";s:14:"recipient_link";s:16:"/peak/profile/88";s:15:"recipient_photo";s:41:"/peak/public/user/47/0047_209f.jpg?c=a0e1";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:16:27'),
(250, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"kellykeckwright1@yahoo.com";s:4:"date";i:1328041001;s:15:"recipient_title";s:13:"Bailee Wright";s:14:"recipient_link";s:16:"/peak/profile/22";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:16:41'),
(251, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"kellykeckwright1@yahoo.com";s:4:"date";i:1328041001;s:15:"recipient_title";s:13:"Bailee Wright";s:14:"recipient_link";s:16:"/peak/profile/22";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:16:41'),
(252, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"annedecker@att.net";s:4:"date";i:1328041052;s:15:"recipient_title";s:11:"Kate Decker";s:14:"recipient_link";s:16:"/peak/profile/13";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:17:"Christopher Lloyd";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"object_title";s:4:"Team";s:11:"object_link";s:24:"/peak/messages/view/id/2";s:12:"object_photo";N;s:18:"object_description";s:39:"What team are you on?&amp;nbsp; Thanks!";}}', 100, 1, 0, '2012-01-31 20:17:32'),
(253, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"kellycrotts@gmail.com";s:4:"date";i:1328041065;s:15:"recipient_title";s:14:"Jillian Crotts";s:14:"recipient_link";s:16:"/peak/profile/19";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:17:45'),
(254, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"kellycrotts@gmail.com";s:4:"date";i:1328041065;s:15:"recipient_title";s:14:"Jillian Crotts";s:14:"recipient_link";s:16:"/peak/profile/19";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:17:45'),
(255, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"gandall7@cox.net";s:4:"date";i:1328041079;s:15:"recipient_title";s:13:"Josie Gandall";s:14:"recipient_link";s:16:"/peak/profile/44";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:17:59'),
(256, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"gandall7@cox.net";s:4:"date";i:1328041079;s:15:"recipient_title";s:13:"Josie Gandall";s:14:"recipient_link";s:16:"/peak/profile/44";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:17:59'),
(257, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"Robynharwell@sbcglobal.net";s:4:"date";i:1328041099;s:15:"recipient_title";s:14:"Isabel Harwell";s:14:"recipient_link";s:16:"/peak/profile/45";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:18:19'),
(258, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"Robynharwell@sbcglobal.net";s:4:"date";i:1328041100;s:15:"recipient_title";s:14:"Isabel Harwell";s:14:"recipient_link";s:16:"/peak/profile/45";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:18:20'),
(259, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"efrogge@cox.net";s:4:"date";i:1328041113;s:15:"recipient_title";s:13:"Hannah Frogge";s:14:"recipient_link";s:16:"/peak/profile/34";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:18:33'),
(260, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"efrogge@cox.net";s:4:"date";i:1328041113;s:15:"recipient_title";s:13:"Hannah Frogge";s:14:"recipient_link";s:16:"/peak/profile/34";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:18:33'),
(261, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"dbenson@simplexgrinnell.com";s:4:"date";i:1328041128;s:15:"recipient_title";s:17:"B. DeWayne Benson";s:14:"recipient_link";s:16:"/peak/profile/72";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:18:48'),
(262, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"dbenson@simplexgrinnell.com";s:4:"date";i:1328041128;s:15:"recipient_title";s:17:"B. DeWayne Benson";s:14:"recipient_link";s:16:"/peak/profile/72";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:18:48'),
(263, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"elanna.killackey@gmail.com";s:4:"date";i:1328041150;s:15:"recipient_title";s:16:"Elanna Killackey";s:14:"recipient_link";s:16:"/peak/profile/96";s:15:"recipient_photo";s:41:"/peak/public/user/4f/004f_734e.jpg?c=37b6";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:10'),
(264, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"elanna.killackey@gmail.com";s:4:"date";i:1328041150;s:15:"recipient_title";s:16:"Elanna Killackey";s:14:"recipient_link";s:16:"/peak/profile/96";s:15:"recipient_photo";s:41:"/peak/public/user/4f/004f_734e.jpg?c=37b6";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:10'),
(265, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"donlisacochran@sbcglobal.net";s:4:"date";i:1328041167;s:15:"recipient_title";s:13:"Haley Cochran";s:14:"recipient_link";s:16:"/peak/profile/90";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:27'),
(266, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"donlisacochran@sbcglobal.net";s:4:"date";i:1328041167;s:15:"recipient_title";s:13:"Haley Cochran";s:14:"recipient_link";s:16:"/peak/profile/90";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:27'),
(267, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"gboyland@cox.net";s:4:"date";i:1328041179;s:15:"recipient_title";s:13:"Taryn Boyland";s:14:"recipient_link";s:16:"/peak/profile/92";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:39'),
(268, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"gboyland@cox.net";s:4:"date";i:1328041179;s:15:"recipient_title";s:13:"Taryn Boyland";s:14:"recipient_link";s:16:"/peak/profile/92";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:39'),
(269, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"herickson001@hotmail.com";s:4:"date";i:1328041196;s:15:"recipient_title";s:17:"Heather  Erickson";s:14:"recipient_link";s:16:"/peak/profile/59";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:56'),
(270, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"herickson001@hotmail.com";s:4:"date";i:1328041196;s:15:"recipient_title";s:17:"Heather  Erickson";s:14:"recipient_link";s:16:"/peak/profile/59";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:19:56'),
(271, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"forbelles@aol.com";s:4:"date";i:1328041223;s:15:"recipient_title";s:14:"Taylor Harvick";s:14:"recipient_link";s:16:"/peak/profile/61";s:15:"recipient_photo";s:41:"/peak/public/user/27/0027_f0e4.JPG?c=0767";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:20:23'),
(272, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"forbelles@aol.com";s:4:"date";i:1328041223;s:15:"recipient_title";s:14:"Taylor Harvick";s:14:"recipient_link";s:16:"/peak/profile/61";s:15:"recipient_photo";s:41:"/peak/public/user/27/0027_f0e4.JPG?c=0767";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:20:23'),
(273, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"kylee.rice@sbcglobal.net";s:4:"date";i:1328041237;s:15:"recipient_title";s:10:"Allie Rice";s:14:"recipient_link";s:16:"/peak/profile/39";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:20:37');
INSERT INTO `engine4_core_mail` (`mail_id`, `type`, `body`, `priority`, `recipient_count`, `recipient_total`, `creation_time`) VALUES
(274, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"kylee.rice@sbcglobal.net";s:4:"date";i:1328041237;s:15:"recipient_title";s:10:"Allie Rice";s:14:"recipient_link";s:16:"/peak/profile/39";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:20:37'),
(275, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"joewade@cox.net";s:4:"date";i:1328041269;s:15:"recipient_title";s:11:"Ashley Wade";s:14:"recipient_link";s:16:"/peak/profile/43";s:15:"recipient_photo";s:41:"/peak/public/user/17/0017_da16.jpg?c=1095";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:09'),
(276, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"joewade@cox.net";s:4:"date";i:1328041269;s:15:"recipient_title";s:11:"Ashley Wade";s:14:"recipient_link";s:16:"/peak/profile/43";s:15:"recipient_photo";s:41:"/peak/public/user/17/0017_da16.jpg?c=1095";s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:09'),
(277, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"sandyroberts@mac.com";s:4:"date";i:1328041283;s:15:"recipient_title";s:13:"Katie Roberts";s:14:"recipient_link";s:16:"/peak/profile/25";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:23'),
(278, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:20:"sandyroberts@mac.com";s:4:"date";i:1328041283;s:15:"recipient_title";s:13:"Katie Roberts";s:14:"recipient_link";s:16:"/peak/profile/25";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:23'),
(279, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"tkelley7@cox.net";s:4:"date";i:1328041298;s:15:"recipient_title";s:13:"Claire Kelley";s:14:"recipient_link";s:16:"/peak/profile/32";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:38'),
(280, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"tkelley7@cox.net";s:4:"date";i:1328041298;s:15:"recipient_title";s:13:"Claire Kelley";s:14:"recipient_link";s:16:"/peak/profile/32";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:38'),
(281, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:13:"meget@att.net";s:4:"date";i:1328041311;s:15:"recipient_title";s:12:"SYDNEY MEGET";s:14:"recipient_link";s:16:"/peak/profile/94";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:51'),
(282, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:13:"meget@att.net";s:4:"date";i:1328041312;s:15:"recipient_title";s:12:"SYDNEY MEGET";s:14:"recipient_link";s:16:"/peak/profile/94";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:21:52'),
(283, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"dandmrude@yahoo.com";s:4:"date";i:1328041325;s:15:"recipient_title";s:12:"Miranda Rude";s:14:"recipient_link";s:16:"/peak/profile/31";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:22:05'),
(284, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"dandmrude@yahoo.com";s:4:"date";i:1328041325;s:15:"recipient_title";s:12:"Miranda Rude";s:14:"recipient_link";s:16:"/peak/profile/31";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:22:05'),
(285, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"diane@ehsrg.com";s:4:"date";i:1328041338;s:15:"recipient_title";s:10:"Diane Fair";s:14:"recipient_link";s:16:"/peak/profile/18";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:22:18'),
(286, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"diane@ehsrg.com";s:4:"date";i:1328041338;s:15:"recipient_title";s:10:"Diane Fair";s:14:"recipient_link";s:16:"/peak/profile/18";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-01-31 20:22:18'),
(287, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"marjoejek@gmail.com";s:4:"date";i:1328041370;s:15:"recipient_title";s:12:"Ashley Jekel";s:14:"recipient_link";s:16:"/peak/profile/12";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:17:"Christopher Lloyd";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"object_title";s:5:"Team?";s:11:"object_link";s:24:"/peak/messages/view/id/3";s:12:"object_photo";N;s:18:"object_description";s:21:"What team are you on?";}}', 100, 1, 0, '2012-01-31 20:22:50'),
(288, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"dbenson@simplexgrinnell.com";s:4:"date";i:1328046532;s:15:"recipient_title";s:17:"B. DeWayne Benson";s:14:"recipient_link";s:16:"/peak/profile/72";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:17:"Christopher Lloyd";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"object_title";s:7:"Network";s:11:"object_link";s:24:"/peak/messages/view/id/4";s:12:"object_photo";N;s:18:"object_description";s:122:"Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!";}}', 100, 1, 0, '2012-01-31 21:48:52'),
(289, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"becky.ethridge@gmail.com";s:4:"date";i:1328046558;s:15:"recipient_title";s:14:"Becky Ethridge";s:14:"recipient_link";s:16:"/peak/profile/26";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:17:"Christopher Lloyd";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"object_title";s:9:"Peak Team";s:11:"object_link";s:24:"/peak/messages/view/id/5";s:12:"object_photo";N;s:18:"object_description";s:122:"Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!";}}', 100, 1, 0, '2012-01-31 21:49:18'),
(290, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"jchoi@ppandco.com";s:4:"date";i:1328046581;s:15:"recipient_title";s:10:"Jenni Choi";s:14:"recipient_link";s:16:"/peak/profile/14";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:17:"Christopher Lloyd";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"object_title";s:9:"Peak Team";s:11:"object_link";s:24:"/peak/messages/view/id/6";s:12:"object_photo";N;s:18:"object_description";s:122:"Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!";}}', 100, 1, 0, '2012-01-31 21:49:41'),
(291, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"terri.mccoy@cox.net";s:4:"date";i:1328046602;s:15:"recipient_title";s:11:"Terri McCoy";s:14:"recipient_link";s:16:"/peak/profile/29";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:17:"Christopher Lloyd";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"object_title";s:9:"Peak Team";s:11:"object_link";s:24:"/peak/messages/view/id/7";s:12:"object_photo";N;s:18:"object_description";s:122:"Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!";}}', 100, 1, 0, '2012-01-31 21:50:02'),
(292, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"savannahonley@sbcglobal.net";s:4:"date";i:1328105448;s:15:"recipient_title";s:14:"Savannah Onley";s:14:"recipient_link";s:23:"/peak/profile/573980572";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 14:10:48'),
(293, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:27:"savannahonley@sbcglobal.net";s:4:"date";i:1328105448;s:15:"recipient_title";s:14:"Savannah Onley";s:14:"recipient_link";s:23:"/peak/profile/573980572";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 14:10:48'),
(294, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"cbouvette@cox.net";s:4:"date";i:1328105526;s:15:"recipient_title";s:14:"Shary Bouvette";s:14:"recipient_link";s:23:"/peak/profile/674218479";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 14:12:06'),
(295, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"cbouvette@cox.net";s:4:"date";i:1328105526;s:15:"recipient_title";s:14:"Shary Bouvette";s:14:"recipient_link";s:23:"/peak/profile/674218479";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 14:12:06'),
(296, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"dshifty1@cox.net";s:4:"date";i:1328105561;s:15:"recipient_title";s:14:"Livi Schiffner";s:14:"recipient_link";s:24:"/peak/profile/1829893787";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 14:12:41'),
(297, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"dshifty1@cox.net";s:4:"date";i:1328105561;s:15:"recipient_title";s:14:"Livi Schiffner";s:14:"recipient_link";s:24:"/peak/profile/1829893787";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 14:12:41'),
(298, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"edgarmiraku@yahoo.com";s:4:"date";i:1328136631;s:15:"recipient_title";s:12:"Edgar Miraku";s:14:"recipient_link";s:24:"/peak/profile/1383914828";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 22:50:31'),
(299, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"edgarmiraku@yahoo.com";s:4:"date";i:1328136631;s:15:"recipient_title";s:12:"Edgar Miraku";s:14:"recipient_link";s:24:"/peak/profile/1383914828";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-01 22:50:31'),
(300, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"annedecker@att.net";s:4:"date";i:1328141061;s:15:"recipient_title";s:11:"Kate Decker";s:14:"recipient_link";s:16:"/peak/profile/13";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 00:04:21'),
(301, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"annedecker@att.net";s:4:"date";i:1328141161;s:15:"recipient_title";s:11:"Kate Decker";s:14:"recipient_link";s:16:"/peak/profile/13";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 00:06:01'),
(302, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"annedecker@att.net";s:4:"date";i:1328141585;s:15:"recipient_title";s:11:"Kate Decker";s:14:"recipient_link";s:16:"/peak/profile/13";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 00:13:05'),
(303, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:18:"annedecker@att.net";s:4:"date";i:1328141585;s:15:"recipient_title";s:11:"Kate Decker";s:14:"recipient_link";s:16:"/peak/profile/13";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 00:13:05'),
(304, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:26:"elanna.killackey@gmail.com";s:4:"date";i:1328144942;s:15:"recipient_title";s:16:"Elanna Killackey";s:14:"recipient_link";s:16:"/peak/profile/96";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:24:"/peak/messages/view/id/8";s:12:"object_photo";N;s:18:"object_description";s:204:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the system, your photo was accidentally removed.&amp;nbsp; Could you please re-upload at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:09:02'),
(305, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:15:"joewade@cox.net";s:4:"date";i:1328145048;s:15:"recipient_title";s:11:"Ashley Wade";s:14:"recipient_link";s:16:"/peak/profile/43";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:24:"/peak/messages/view/id/9";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:10:48'),
(306, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:28:"knettleton@dealercapital.com";s:4:"date";i:1328145074;s:15:"recipient_title";s:14:"Emma Nettleton";s:14:"recipient_link";s:16:"/peak/profile/88";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/10";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:11:14'),
(307, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"kena_thompson@yahoo.com";s:4:"date";i:1328145101;s:15:"recipient_title";s:13:"Kena Thompson";s:14:"recipient_link";s:16:"/peak/profile/55";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/11";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:11:41'),
(308, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"3tdorseys@cox.net";s:4:"date";i:1328145134;s:15:"recipient_title";s:13:"Timmie Dorsey";s:14:"recipient_link";s:16:"/peak/profile/68";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/12";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:12:14'),
(309, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:17:"forbelles@aol.com";s:4:"date";i:1328145161;s:15:"recipient_title";s:14:"Taylor Harvick";s:14:"recipient_link";s:16:"/peak/profile/61";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/13";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:12:41'),
(310, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:23:"samduncanokre@gmail.com";s:4:"date";i:1328145198;s:15:"recipient_title";s:12:"Sammy Duncan";s:14:"recipient_link";s:16:"/peak/profile/77";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/14";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:13:18'),
(311, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"lj_baker@cox.net";s:4:"date";i:1328145228;s:15:"recipient_title";s:12:"Reagan Baker";s:14:"recipient_link";s:16:"/peak/profile/95";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/15";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:13:48'),
(312, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:22:"peytonf123@hotmail.com";s:4:"date";i:1328145319;s:15:"recipient_title";s:12:"Peyton Fryer";s:14:"recipient_link";s:16:"/peak/profile/64";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/16";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:15:19'),
(313, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:14:"wekfam@cox.net";s:4:"date";i:1328145367;s:15:"recipient_title";s:15:"Paige Wekenborg";s:14:"recipient_link";s:16:"/peak/profile/80";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/17";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:16:07'),
(314, 'system', 'a:2:{s:4:"type";s:18:"notify_message_new";s:6:"params";a:13:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:21:"lisa@sportsimpact.biz";s:4:"date";i:1328145405;s:15:"recipient_title";s:14:"Lisa Polcovich";s:14:"recipient_link";s:16:"/peak/profile/58";s:15:"recipient_photo";s:76:"//peak/application/modules/User/externals/images/nophoto_user_thumb_icon.png";s:12:"sender_title";s:20:"System Administrator";s:11:"sender_link";s:19:"/peak/profile/admin";s:12:"sender_photo";s:41:"/peak/public/user/57/0057_b12e.jpg?c=85d5";s:12:"object_title";s:5:"Photo";s:11:"object_link";s:25:"/peak/messages/view/id/18";s:12:"object_photo";N;s:18:"object_description";s:208:"While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!";}}', 100, 1, 0, '2012-02-02 01:16:45'),
(315, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"jm-mccormick@hotmail.com";s:4:"date";i:1328145546;s:15:"recipient_title";s:18:"Chanelle McCormick";s:14:"recipient_link";s:23:"/peak/profile/886555540";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:19:06'),
(316, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:24:"jm-mccormick@hotmail.com";s:4:"date";i:1328145546;s:15:"recipient_title";s:18:"Chanelle McCormick";s:14:"recipient_link";s:23:"/peak/profile/886555540";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:19:06'),
(317, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"hbmacy@gmail.com";s:4:"date";i:1328145559;s:15:"recipient_title";s:10:"Kenna Macy";s:14:"recipient_link";s:24:"/peak/profile/1610159378";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:19:19'),
(318, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"hbmacy@gmail.com";s:4:"date";i:1328145559;s:15:"recipient_title";s:10:"Kenna Macy";s:14:"recipient_link";s:24:"/peak/profile/1610159378";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:19:19'),
(319, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"hbmacy@gmail.com";s:4:"date";i:1328145574;s:15:"recipient_title";s:10:"Kenna Macy";s:14:"recipient_link";s:24:"/peak/profile/1610159378";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:19:34'),
(320, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:16:"hbmacy@gmail.com";s:4:"date";i:1328145574;s:15:"recipient_title";s:10:"Kenna Macy";s:14:"recipient_link";s:24:"/peak/profile/1610159378";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:19:34'),
(321, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:13:"smroy@cox.net";s:4:"date";i:1328146057;s:15:"recipient_title";s:11:"Lindsey Roy";s:14:"recipient_link";s:24:"/peak/profile/2002635803";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:27:37'),
(322, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:13:"smroy@cox.net";s:4:"date";i:1328146057;s:15:"recipient_title";s:11:"Lindsey Roy";s:14:"recipient_link";s:24:"/peak/profile/2002635803";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:27:37'),
(323, 'system', 'a:2:{s:4:"type";s:21:"user_account_approved";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"mark.mccoy1@cox.net";s:4:"date";i:1328146073;s:15:"recipient_title";s:12:"Ashley McCoy";s:14:"recipient_link";s:24:"/peak/profile/1617228157";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:27:53'),
(324, 'system', 'a:2:{s:4:"type";s:12:"core_welcome";s:6:"params";a:7:{s:4:"host";s:13:"www.op2vb.com";s:5:"email";s:19:"mark.mccoy1@cox.net";s:4:"date";i:1328146073;s:15:"recipient_title";s:12:"Ashley McCoy";s:14:"recipient_link";s:24:"/peak/profile/1617228157";s:15:"recipient_photo";N;s:11:"object_link";s:11:"/peak/login";}}', 100, 1, 0, '2012-02-02 01:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_mailrecipients`
--

CREATE TABLE IF NOT EXISTS `engine4_core_mailrecipients` (
  `recipient_id` int(11) unsigned NOT NULL auto_increment,
  `mail_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned default NULL,
  `email` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  PRIMARY KEY  (`recipient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=325 ;

--
-- Dumping data for table `engine4_core_mailrecipients`
--

INSERT INTO `engine4_core_mailrecipients` (`recipient_id`, `mail_id`, `user_id`, `email`) VALUES
(25, 25, 6, NULL),
(26, 26, 6, NULL),
(27, 27, 6, NULL),
(28, 28, 7, NULL),
(29, 29, 7, NULL),
(30, 30, 8, NULL),
(31, 31, 8, NULL),
(32, 32, 9, NULL),
(33, 33, 10, NULL),
(34, 34, 11, NULL),
(35, 35, 12, NULL),
(36, 36, 13, NULL),
(37, 37, 14, NULL),
(38, 38, 15, NULL),
(39, 39, 16, NULL),
(40, 40, 17, NULL),
(41, 41, 18, NULL),
(42, 42, 19, NULL),
(43, 43, 20, NULL),
(44, 44, 21, NULL),
(45, 45, 22, NULL),
(46, 46, 23, NULL),
(47, 47, 24, NULL),
(48, 48, 25, NULL),
(49, 49, NULL, 'rdecker@op2vb.com'),
(50, 50, 26, NULL),
(51, 51, 27, NULL),
(52, 52, 28, NULL),
(53, 53, 29, NULL),
(54, 54, 30, NULL),
(55, 55, 31, NULL),
(56, 56, 32, NULL),
(57, 57, 33, NULL),
(58, 58, 34, NULL),
(59, 59, 35, NULL),
(60, 60, 36, NULL),
(61, 61, 37, NULL),
(62, 62, 38, NULL),
(63, 63, 39, NULL),
(64, 64, 40, NULL),
(65, 65, 41, NULL),
(66, 66, 42, NULL),
(67, 67, 43, NULL),
(68, 68, 44, NULL),
(69, 69, 45, NULL),
(70, 70, 46, NULL),
(71, 71, 47, NULL),
(72, 72, 48, NULL),
(73, 73, 49, NULL),
(74, 74, 50, NULL),
(75, 75, 51, NULL),
(76, 76, 52, NULL),
(77, 77, 53, NULL),
(78, 78, 54, NULL),
(79, 79, 55, NULL),
(80, 80, 56, NULL),
(81, 81, 57, NULL),
(82, 82, 58, NULL),
(83, 83, 59, NULL),
(84, 84, 60, NULL),
(85, 85, 61, NULL),
(86, 86, 62, NULL),
(87, 87, 63, NULL),
(88, 88, 64, NULL),
(89, 89, 65, NULL),
(90, 90, 66, NULL),
(91, 91, 67, NULL),
(92, 92, 68, NULL),
(93, 93, 69, NULL),
(94, 94, 70, NULL),
(95, 95, 71, NULL),
(96, 96, 72, NULL),
(97, 97, 73, NULL),
(98, 98, 74, NULL),
(99, 99, 75, NULL),
(100, 100, 53, NULL),
(101, 101, 53, NULL),
(102, 102, 52, NULL),
(103, 103, 52, NULL),
(104, 104, 54, NULL),
(105, 105, 54, NULL),
(106, 106, 55, NULL),
(107, 107, 55, NULL),
(108, 108, 58, NULL),
(109, 109, 58, NULL),
(110, 110, 56, NULL),
(111, 111, 56, NULL),
(112, 112, 51, NULL),
(113, 113, 51, NULL),
(114, 114, 50, NULL),
(115, 115, 50, NULL),
(116, 116, 11, NULL),
(117, 117, 11, NULL),
(118, 118, 76, NULL),
(119, 119, 77, NULL),
(120, 120, 78, NULL),
(121, 121, 79, NULL),
(122, 122, 80, NULL),
(123, 123, 81, NULL),
(124, 124, 82, NULL),
(125, 125, 83, NULL),
(126, 126, 84, NULL),
(127, 127, 85, NULL),
(128, 128, 86, NULL),
(129, 129, 87, NULL),
(130, 130, 88, NULL),
(131, 131, 89, NULL),
(132, 132, 90, NULL),
(133, 133, 91, NULL),
(134, 134, 92, NULL),
(135, 135, 87, NULL),
(136, 136, 87, NULL),
(137, 137, 84, NULL),
(138, 138, 84, NULL),
(139, 139, 79, NULL),
(140, 140, 79, NULL),
(141, 141, 78, NULL),
(142, 142, 78, NULL),
(143, 143, 77, NULL),
(144, 144, 77, NULL),
(145, 145, 93, NULL),
(146, 146, 94, NULL),
(147, 147, 95, NULL),
(148, 148, 96, NULL),
(149, 149, 28, NULL),
(150, 150, 28, NULL),
(151, 151, 62, NULL),
(152, 152, 62, NULL),
(153, 153, 80, NULL),
(154, 154, 80, NULL),
(155, 155, 71, NULL),
(156, 156, 71, NULL),
(157, 157, 36, NULL),
(158, 158, 36, NULL),
(159, 159, 91, NULL),
(160, 160, 91, NULL),
(161, 161, 95, NULL),
(162, 162, 95, NULL),
(163, 163, 35, NULL),
(164, 164, 35, NULL),
(165, 165, 65, NULL),
(166, 166, 65, NULL),
(167, 167, 60, NULL),
(168, 168, 60, NULL),
(169, 169, 68, NULL),
(170, 170, 68, NULL),
(171, 171, 20, NULL),
(172, 172, 20, NULL),
(173, 173, 69, NULL),
(174, 174, 69, NULL),
(175, 175, 29, NULL),
(176, 176, 29, NULL),
(177, 177, 29, NULL),
(178, 178, 81, NULL),
(179, 179, 81, NULL),
(180, 180, 57, NULL),
(181, 181, 57, NULL),
(182, 182, 21, NULL),
(183, 183, 21, NULL),
(184, 184, 70, NULL),
(185, 185, 70, NULL),
(186, 186, 76, NULL),
(187, 187, 76, NULL),
(188, 188, 24, NULL),
(189, 189, 24, NULL),
(190, 190, 82, NULL),
(191, 191, 82, NULL),
(192, 192, 47, NULL),
(193, 193, 47, NULL),
(194, 194, 63, NULL),
(195, 195, 37, NULL),
(196, 196, 37, NULL),
(197, 197, 37, NULL),
(198, 198, 73, NULL),
(199, 199, 73, NULL),
(200, 200, 85, NULL),
(201, 201, 85, NULL),
(202, 202, 63, NULL),
(203, 203, 63, NULL),
(204, 204, 40, NULL),
(205, 205, 40, NULL),
(206, 206, 89, NULL),
(207, 207, 89, NULL),
(208, 208, 48, NULL),
(209, 209, 48, NULL),
(210, 210, 86, NULL),
(211, 211, 86, NULL),
(212, 212, 64, NULL),
(213, 213, 64, NULL),
(214, 214, 66, NULL),
(215, 215, 66, NULL),
(216, 216, 33, NULL),
(217, 217, 33, NULL),
(218, 218, 27, NULL),
(219, 219, 27, NULL),
(220, 220, 26, NULL),
(221, 221, 26, NULL),
(222, 222, 16, NULL),
(223, 223, 16, NULL),
(224, 224, 49, NULL),
(225, 225, 49, NULL),
(226, 226, 46, NULL),
(227, 227, 46, NULL),
(228, 228, 38, NULL),
(229, 229, 38, NULL),
(230, 230, 23, NULL),
(231, 231, 23, NULL),
(232, 232, 83, NULL),
(233, 233, 83, NULL),
(234, 234, 17, NULL),
(235, 235, 17, NULL),
(236, 236, 67, NULL),
(237, 237, 67, NULL),
(238, 238, 14, NULL),
(239, 239, 14, NULL),
(240, 240, 74, NULL),
(241, 241, 74, NULL),
(242, 242, 75, NULL),
(243, 243, 75, NULL),
(244, 244, 93, NULL),
(245, 245, 93, NULL),
(246, 246, 30, NULL),
(247, 247, 30, NULL),
(248, 248, 88, NULL),
(249, 249, 88, NULL),
(250, 250, 22, NULL),
(251, 251, 22, NULL),
(252, 252, 13, NULL),
(253, 253, 19, NULL),
(254, 254, 19, NULL),
(255, 255, 44, NULL),
(256, 256, 44, NULL),
(257, 257, 45, NULL),
(258, 258, 45, NULL),
(259, 259, 34, NULL),
(260, 260, 34, NULL),
(261, 261, 72, NULL),
(262, 262, 72, NULL),
(263, 263, 96, NULL),
(264, 264, 96, NULL),
(265, 265, 90, NULL),
(266, 266, 90, NULL),
(267, 267, 92, NULL),
(268, 268, 92, NULL),
(269, 269, 59, NULL),
(270, 270, 59, NULL),
(271, 271, 61, NULL),
(272, 272, 61, NULL),
(273, 273, 39, NULL),
(274, 274, 39, NULL),
(275, 275, 43, NULL),
(276, 276, 43, NULL),
(277, 277, 25, NULL),
(278, 278, 25, NULL),
(279, 279, 32, NULL),
(280, 280, 32, NULL),
(281, 281, 94, NULL),
(282, 282, 94, NULL),
(283, 283, 31, NULL),
(284, 284, 31, NULL),
(285, 285, 18, NULL),
(286, 286, 18, NULL),
(287, 287, 12, NULL),
(288, 288, 72, NULL),
(289, 289, 26, NULL),
(290, 290, 14, NULL),
(291, 291, 29, NULL),
(292, 292, 573980572, NULL),
(293, 293, 573980572, NULL),
(294, 294, 674218479, NULL),
(295, 295, 674218479, NULL),
(296, 296, 1829893787, NULL),
(297, 297, 1829893787, NULL),
(298, 298, 1383914828, NULL),
(299, 299, 1383914828, NULL),
(300, 300, 13, NULL),
(301, 301, 13, NULL),
(302, 302, 13, NULL),
(303, 303, 13, NULL),
(304, 304, 96, NULL),
(305, 305, 43, NULL),
(306, 306, 88, NULL),
(307, 307, 55, NULL),
(308, 308, 68, NULL),
(309, 309, 61, NULL),
(310, 310, 77, NULL),
(311, 311, 95, NULL),
(312, 312, 64, NULL),
(313, 313, 80, NULL),
(314, 314, 58, NULL),
(315, 315, 886555540, NULL),
(316, 316, 886555540, NULL),
(317, 317, 1610159378, NULL),
(318, 318, 1610159378, NULL),
(319, 319, 1610159378, NULL),
(320, 320, 1610159378, NULL),
(321, 321, 2002635803, NULL),
(322, 322, 2002635803, NULL),
(323, 323, 1617228157, NULL),
(324, 324, 1617228157, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_mailtemplates`
--

CREATE TABLE IF NOT EXISTS `engine4_core_mailtemplates` (
  `mailtemplate_id` int(11) unsigned NOT NULL auto_increment,
  `type` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `module` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `vars` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`mailtemplate_id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `engine4_core_mailtemplates`
--

INSERT INTO `engine4_core_mailtemplates` (`mailtemplate_id`, `type`, `module`, `vars`) VALUES
(1, 'header', 'core', ''),
(2, 'footer', 'core', ''),
(3, 'header_member', 'core', ''),
(4, 'footer_member', 'core', ''),
(5, 'core_contact', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_name],[sender_email],[sender_link],[sender_photo],[message]'),
(6, 'core_verification', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
(7, 'core_verification_password', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link],[password]'),
(8, 'core_welcome', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
(9, 'core_welcome_password', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link],[password]'),
(10, 'core_lostpassword', 'core', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[object_link]'),
(11, 'notify_commented', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(12, 'notify_commented_commented', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(13, 'notify_liked', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(14, 'notify_liked_commented', 'activity', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(15, 'user_account_approved', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo]'),
(16, 'notify_friend_accepted', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(17, 'notify_friend_request', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(18, 'notify_friend_follow_request', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(19, 'notify_friend_follow_accepted', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(20, 'notify_friend_follow', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(21, 'notify_post_user', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(22, 'notify_tagged', 'user', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(23, 'notify_message_new', 'messages', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(24, 'invite', 'invite', '[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[message],[object_link],[code]'),
(25, 'invite_code', 'invite', '[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[message],[object_link],[code]'),
(26, 'payment_subscription_active', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(27, 'payment_subscription_cancelled', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(28, 'payment_subscription_expired', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(29, 'payment_subscription_overdue', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(30, 'payment_subscription_pending', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(31, 'payment_subscription_recurrence', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(32, 'payment_subscription_refunded', 'payment', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[subscription_title],[subscription_description],[object_link]'),
(33, 'notify_event_accepted', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(34, 'notify_event_approve', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(35, 'notify_event_discussion_response', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(36, 'notify_event_discussion_reply', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(37, 'notify_event_invite', 'event', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(38, 'notify_group_accepted', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(39, 'notify_group_approve', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(40, 'notify_group_discussion_reply', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(41, 'notify_group_discussion_response', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(42, 'notify_group_invite', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(43, 'notify_group_promote', 'group', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(44, 'notify_advgroup_accepted', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(45, 'notify_advgroup_approve', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(46, 'notify_advgroup_discussion_reply', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(47, 'notify_advgroup_discussion_response', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(48, 'notify_advgroup_invite', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(49, 'notify_advgroup_promote', 'advgroup', '[host],[email],[recipient_title],[recipient_link],[recipient_photo],[sender_title],[sender_link],[sender_photo],[object_title],[object_link],[object_photo],[object_description]'),
(50, 'notify_advgroup_invite_nonmembers', 'advgroup', '[host],[email],[sender_email],[sender_title],[sender_link],[sender_photo],[object_link],[code],[group_link],[group_title],[message]');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_menuitems`
--

CREATE TABLE IF NOT EXISTS `engine4_core_menuitems` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `module` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `label` varchar(32) collate utf8_unicode_ci NOT NULL,
  `plugin` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `params` text collate utf8_unicode_ci NOT NULL,
  `menu` varchar(32) character set latin1 collate latin1_general_ci default NULL,
  `submenu` varchar(32) character set latin1 collate latin1_general_ci default NULL,
  `enabled` tinyint(1) NOT NULL default '1',
  `custom` tinyint(1) NOT NULL default '0',
  `order` smallint(6) NOT NULL default '999',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `LOOKUP` (`name`,`order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=183 ;

--
-- Dumping data for table `engine4_core_menuitems`
--

INSERT INTO `engine4_core_menuitems` (`id`, `name`, `module`, `label`, `plugin`, `params`, `menu`, `submenu`, `enabled`, `custom`, `order`) VALUES
(1, 'core_main_home', 'core', 'Home', 'User_Plugin_Menus', '', 'core_main', '', 1, 0, 1),
(2, 'core_sitemap_home', 'core', 'Home', '', '{"route":"default"}', 'core_sitemap', '', 1, 0, 1),
(3, 'core_footer_privacy', 'core', 'Privacy', '', '{"route":"default","module":"core","controller":"help","action":"privacy"}', 'core_footer', '', 1, 0, 1),
(4, 'core_footer_terms', 'core', 'Terms of Service', '', '{"route":"default","module":"core","controller":"help","action":"terms"}', 'core_footer', '', 1, 0, 2),
(5, 'core_footer_contact', 'core', 'Contact', '', '{"route":"default","module":"core","controller":"help","action":"contact"}', 'core_footer', '', 1, 0, 3),
(6, 'core_mini_admin', 'core', 'Admin', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 6),
(7, 'core_mini_profile', 'user', 'My Profile', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 5),
(8, 'core_mini_settings', 'user', 'Settings', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 3),
(9, 'core_mini_auth', 'user', 'Auth', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 2),
(10, 'core_mini_signup', 'user', 'Signup', 'User_Plugin_Menus', '', 'core_mini', '', 1, 0, 1),
(11, 'core_admin_main_home', 'core', 'Home', '', '{"route":"admin_default"}', 'core_admin_main', '', 1, 0, 1),
(12, 'core_admin_main_manage', 'core', 'Manage', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_manage', 1, 0, 2),
(13, 'core_admin_main_settings', 'core', 'Settings', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_settings', 1, 0, 3),
(14, 'core_admin_main_plugins', 'core', 'Plugins', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_plugins', 1, 0, 4),
(15, 'core_admin_main_layout', 'core', 'Layout', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_layout', 1, 0, 5),
(16, 'core_admin_main_ads', 'core', 'Ads', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_ads', 1, 0, 6),
(17, 'core_admin_main_stats', 'core', 'Stats', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_stats', 1, 0, 8),
(18, 'core_admin_main_manage_levels', 'core', 'Member Levels', '', '{"route":"admin_default","module":"authorization","controller":"level"}', 'core_admin_main_manage', '', 1, 0, 2),
(19, 'core_admin_main_manage_networks', 'network', 'Networks', '', '{"route":"admin_default","module":"network","controller":"manage"}', 'core_admin_main_manage', '', 1, 0, 3),
(20, 'core_admin_main_manage_announcements', 'announcement', 'Announcements', '', '{"route":"admin_default","module":"announcement","controller":"manage"}', 'core_admin_main_manage', '', 1, 0, 4),
(21, 'core_admin_message_mail', 'core', 'Email All Members', '', '{"route":"admin_default","module":"core","controller":"message","action":"mail"}', 'core_admin_main_manage', '', 1, 0, 5),
(22, 'core_admin_main_manage_reports', 'core', 'Abuse Reports', '', '{"route":"admin_default","module":"core","controller":"report"}', 'core_admin_main_manage', '', 1, 0, 6),
(23, 'core_admin_main_manage_packages', 'core', 'Packages & Plugins', '', '{"route":"admin_default","module":"core","controller":"packages"}', 'core_admin_main_manage', '', 1, 0, 7),
(24, 'core_admin_main_settings_general', 'core', 'General Settings', '', '{"route":"core_admin_settings","action":"general"}', 'core_admin_main_settings', '', 1, 0, 1),
(25, 'core_admin_main_settings_locale', 'core', 'Locale Settings', '', '{"route":"core_admin_settings","action":"locale"}', 'core_admin_main_settings', '', 1, 0, 1),
(26, 'core_admin_main_settings_fields', 'fields', 'Profile Questions', '', '{"route":"admin_default","module":"user","controller":"fields"}', 'core_admin_main_settings', '', 1, 0, 2),
(27, 'core_admin_main_settings_spam', 'core', 'Spam & Banning Tools', '', '{"route":"core_admin_settings","action":"spam"}', 'core_admin_main_settings', '', 1, 0, 5),
(28, 'core_admin_main_settings_mailtemplates', 'core', 'Mail Templates', '', '{"route":"admin_default","controller":"mail","action":"templates"}', 'core_admin_main_settings', '', 1, 0, 6),
(29, 'core_admin_main_settings_mailsettings', 'core', 'Mail Settings', '', '{"route":"admin_default","controller":"mail","action":"settings"}', 'core_admin_main_settings', '', 1, 0, 7),
(30, 'core_admin_main_settings_performance', 'core', 'Performance & Caching', '', '{"route":"core_admin_settings","action":"performance"}', 'core_admin_main_settings', '', 1, 0, 8),
(31, 'core_admin_main_settings_password', 'core', 'Admin Password', '', '{"route":"core_admin_settings","action":"password"}', 'core_admin_main_settings', '', 1, 0, 9),
(32, 'core_admin_main_settings_tasks', 'core', 'Task Scheduler', '', '{"route":"admin_default","controller":"tasks"}', 'core_admin_main_settings', '', 1, 0, 10),
(33, 'core_admin_main_layout_content', 'core', 'Layout Editor', '', '{"route":"admin_default","controller":"content"}', 'core_admin_main_layout', '', 1, 0, 1),
(34, 'core_admin_main_layout_themes', 'core', 'Theme Editor', '', '{"route":"admin_default","controller":"themes"}', 'core_admin_main_layout', '', 1, 0, 2),
(35, 'core_admin_main_layout_files', 'core', 'File & Media Manager', '', '{"route":"admin_default","controller":"files"}', 'core_admin_main_layout', '', 1, 0, 3),
(36, 'core_admin_main_layout_language', 'core', 'Language Manager', '', '{"route":"admin_default","controller":"language"}', 'core_admin_main_layout', '', 1, 0, 4),
(37, 'core_admin_main_layout_menus', 'core', 'Menu Editor', '', '{"route":"admin_default","controller":"menus"}', 'core_admin_main_layout', '', 1, 0, 5),
(38, 'core_admin_main_ads_manage', 'core', 'Manage Ad Campaigns', '', '{"route":"admin_default","controller":"ads"}', 'core_admin_main_ads', '', 1, 0, 1),
(39, 'core_admin_main_ads_create', 'core', 'Create New Campaign', '', '{"route":"admin_default","controller":"ads","action":"create"}', 'core_admin_main_ads', '', 1, 0, 2),
(40, 'core_admin_main_ads_affiliate', 'core', 'SE Affiliate Program', '', '{"route":"admin_default","controller":"settings","action":"affiliate"}', 'core_admin_main_ads', '', 1, 0, 3),
(41, 'core_admin_main_ads_viglink', 'core', 'VigLink', '', '{"route":"admin_default","controller":"settings","action":"viglink"}', 'core_admin_main_ads', '', 1, 0, 4),
(42, 'core_admin_main_stats_statistics', 'core', 'Site-wide Statistics', '', '{"route":"admin_default","controller":"stats"}', 'core_admin_main_stats', '', 1, 0, 1),
(43, 'core_admin_main_stats_url', 'core', 'Referring URLs', '', '{"route":"admin_default","controller":"stats","action":"referrers"}', 'core_admin_main_stats', '', 1, 0, 2),
(44, 'core_admin_main_stats_resources', 'core', 'Server Information', '', '{"route":"admin_default","controller":"system"}', 'core_admin_main_stats', '', 1, 0, 3),
(45, 'core_admin_main_stats_logs', 'core', 'Log Browser', '', '{"route":"admin_default","controller":"log","action":"index"}', 'core_admin_main_stats', '', 1, 0, 3),
(46, 'core_admin_banning_general', 'core', 'Spam & Banning Tools', '', '{"route":"core_admin_settings","action":"spam"}', 'core_admin_banning', '', 1, 0, 1),
(47, 'adcampaign_admin_main_edit', 'core', 'Edit Settings', '', '{"route":"admin_default","module":"core","controller":"ads","action":"edit"}', 'adcampaign_admin_main', '', 1, 0, 1),
(48, 'adcampaign_admin_main_manageads', 'core', 'Manage Advertisements', '', '{"route":"admin_default","module":"core","controller":"ads","action":"manageads"}', 'adcampaign_admin_main', '', 1, 0, 2),
(49, 'core_admin_main_settings_activity', 'activity', 'Activity Feed Settings', '', '{"route":"admin_default","module":"activity","controller":"settings","action":"index"}', 'core_admin_main_settings', '', 1, 0, 4),
(50, 'core_admin_main_settings_notifications', 'activity', 'Default Email Notifications', '', '{"route":"admin_default","module":"activity","controller":"settings","action":"notifications"}', 'core_admin_main_settings', '', 1, 0, 11),
(51, 'authorization_admin_main_manage', 'authorization', 'View Member Levels', '', '{"route":"admin_default","module":"authorization","controller":"level"}', 'authorization_admin_main', '', 1, 0, 1),
(52, 'authorization_admin_main_level', 'authorization', 'Member Level Settings', '', '{"route":"admin_default","module":"authorization","controller":"level","action":"edit"}', 'authorization_admin_main', '', 1, 0, 3),
(53, 'authorization_admin_level_main', 'authorization', 'Level Info', '', '{"route":"admin_default","module":"authorization","controller":"level","action":"edit"}', 'authorization_admin_level', '', 1, 0, 1),
(54, 'core_main_user', 'user', 'Members', '', '{"route":"user_general","action":"browse"}', 'core_main', '', 1, 0, 3),
(55, 'core_sitemap_user', 'user', 'Members', '', '{"route":"user_general","action":"browse"}', 'core_sitemap', '', 1, 0, 2),
(56, 'user_home_updates', 'user', 'View Recent Updates', '', '{"route":"recent_activity","icon":"application/modules/User/externals/images/links/updates.png"}', 'user_home', '', 1, 0, 1),
(57, 'user_home_view', 'user', 'View My Profile', 'User_Plugin_Menus', '{"route":"user_profile_self","icon":"application/modules/User/externals/images/links/profile.png"}', 'user_home', '', 1, 0, 2),
(58, 'user_home_edit', 'user', 'Edit My Profile', 'User_Plugin_Menus', '{"route":"user_extended","module":"user","controller":"edit","action":"profile","icon":"application/modules/User/externals/images/links/edit.png"}', 'user_home', '', 1, 0, 3),
(59, 'user_home_friends', 'user', 'Browse Members', '', '{"route":"user_general","controller":"index","action":"browse","icon":"application/modules/User/externals/images/links/search.png"}', 'user_home', '', 1, 0, 4),
(60, 'user_profile_edit', 'user', 'Edit Profile', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 1),
(61, 'user_profile_friend', 'user', 'Friends', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 3),
(62, 'user_profile_block', 'user', 'Block', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 4),
(63, 'user_profile_report', 'user', 'Report User', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 5),
(64, 'user_edit_profile', 'user', 'Personal Info', '', '{"route":"user_extended","module":"user","controller":"edit","action":"profile"}', 'user_edit', '', 1, 0, 1),
(65, 'user_edit_photo', 'user', 'Edit My Photo', '', '{"route":"user_extended","module":"user","controller":"edit","action":"photo"}', 'user_edit', '', 1, 0, 2),
(66, 'user_edit_style', 'user', 'Profile Style', '', '{"route":"user_extended","module":"user","controller":"edit","action":"style"}', 'user_edit', '', 1, 0, 3),
(67, 'user_settings_general', 'user', 'General', '', '{"route":"user_extended","module":"user","controller":"settings","action":"general"}', 'user_settings', '', 1, 0, 1),
(68, 'user_settings_privacy', 'user', 'Privacy', '', '{"route":"user_extended","module":"user","controller":"settings","action":"privacy"}', 'user_settings', '', 1, 0, 2),
(69, 'user_settings_notifications', 'user', 'Notifications', '', '{"route":"user_extended","module":"user","controller":"settings","action":"notifications"}', 'user_settings', '', 1, 0, 3),
(70, 'user_settings_password', 'user', 'Change Password', '', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"password"}', 'user_settings', '', 1, 0, 5),
(71, 'user_settings_delete', 'user', 'Delete Account', 'User_Plugin_Menus::canDelete', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"delete"}', 'user_settings', '', 1, 0, 6),
(72, 'core_admin_main_manage_members', 'user', 'Members', '', '{"route":"admin_default","module":"user","controller":"manage"}', 'core_admin_main_manage', '', 1, 0, 1),
(73, 'core_admin_main_signup', 'user', 'Signup Process', '', '{"route":"admin_default", "controller":"signup", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 3),
(74, 'core_admin_main_facebook', 'user', 'Facebook Integration', '', '{"route":"admin_default", "action":"facebook", "controller":"settings", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 4),
(75, 'core_admin_main_twitter', 'user', 'Twitter Integration', '', '{"route":"admin_default", "action":"twitter", "controller":"settings", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 4),
(76, 'core_admin_main_settings_friends', 'user', 'Friendship Settings', '', '{"route":"admin_default","module":"user","controller":"settings","action":"friends"}', 'core_admin_main_settings', '', 1, 0, 6),
(77, 'user_admin_banning_logins', 'user', 'Login History', '', '{"route":"admin_default","module":"user","controller":"logins","action":"index"}', 'core_admin_banning', '', 1, 0, 2),
(78, 'authorization_admin_level_user', 'user', 'Members', '', '{"route":"admin_default","module":"user","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 2),
(79, 'core_mini_messages', 'messages', 'Messages', 'Messages_Plugin_Menus', '', 'core_mini', '', 1, 0, 4),
(80, 'user_profile_message', 'messages', 'Send Message', 'Messages_Plugin_Menus', '', 'user_profile', '', 1, 0, 2),
(81, 'authorization_admin_level_messages', 'messages', 'Messages', '', '{"route":"admin_default","module":"messages","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 3),
(82, 'messages_main_inbox', 'messages', 'Inbox', '', '{"route":"messages_general","action":"inbox"}', 'messages_main', '', 1, 0, 1),
(83, 'messages_main_outbox', 'messages', 'Sent Messages', '', '{"route":"messages_general","action":"outbox"}', 'messages_main', '', 1, 0, 2),
(84, 'messages_main_compose', 'messages', 'Compose Message', '', '{"route":"messages_general","action":"compose"}', 'messages_main', '', 1, 0, 3),
(85, 'user_settings_network', 'network', 'Networks', '', '{"route":"user_extended", "module":"user", "controller":"settings", "action":"network"}', 'user_settings', '', 1, 0, 3),
(86, 'core_main_invite', 'invite', 'Invite', 'Invite_Plugin_Menus::canInvite', '{"route":"default","module":"invite"}', 'core_main', '', 0, 0, 2),
(87, 'user_home_invite', 'invite', 'Invite Your Friends', 'Invite_Plugin_Menus::canInvite', '{"route":"default","module":"invite","icon":"application/modules/Invite/externals/images/invite.png"}', 'user_home', '', 1, 0, 5),
(88, 'core_admin_main_settings_storage', 'core', 'Storage System', '', '{"route":"admin_default","module":"storage","controller":"services","action":"index"}', 'core_admin_main_settings', '', 1, 0, 11),
(89, 'user_settings_payment', 'user', 'Subscription', 'Payment_Plugin_Menus', '{"route":"default", "module":"payment", "controller":"settings", "action":"index"}', 'user_settings', '', 1, 0, 4),
(90, 'core_admin_main_payment', 'payment', 'Billing', '', '{"uri":"javascript:void(0);this.blur();"}', 'core_admin_main', 'core_admin_main_payment', 1, 0, 7),
(91, 'core_admin_main_payment_transactions', 'payment', 'Transactions', '', '{"route":"admin_default","module":"payment","controller":"index","action":"index"}', 'core_admin_main_payment', '', 1, 0, 1),
(92, 'core_admin_main_payment_settings', 'payment', 'Settings', '', '{"route":"admin_default","module":"payment","controller":"settings","action":"index"}', 'core_admin_main_payment', '', 1, 0, 2),
(93, 'core_admin_main_payment_gateways', 'payment', 'Gateways', '', '{"route":"admin_default","module":"payment","controller":"gateway","action":"index"}', 'core_admin_main_payment', '', 1, 0, 3),
(94, 'core_admin_main_payment_packages', 'payment', 'Plans', '', '{"route":"admin_default","module":"payment","controller":"package","action":"index"}', 'core_admin_main_payment', '', 1, 0, 4),
(95, 'core_admin_main_payment_subscriptions', 'payment', 'Subscriptions', '', '{"route":"admin_default","module":"payment","controller":"subscription","action":"index"}', 'core_admin_main_payment', '', 1, 0, 5),
(96, 'core_admin_plugins_younet_core', 'younet-core', 'YouNet Core', '', '{"route":"admin_default","module":"younet-core","controller":"settings","action":"yours"}', 'core_admin_main_plugins', '', 1, 0, 1),
(97, 'younet_core_admin_main_yours', 'younet-core', 'Your Plugins', '', '{"route":"admin_default","module":"younet-core","controller":"settings","action":"yours"}', 'younet_core_admin_main', '', 1, 0, 2),
(98, 'younet_core_admin_main_younet', 'younet-core', 'YouNet Plugins', '', '{"route":"admin_default","module":"younet-core","controller":"settings","action":"younet"}', 'younet_core_admin_main', '', 1, 0, 1),
(99, 'younet_core_admin_main_info', 'younet-core', 'License Term', '', '{"route":"admin_default","module":"younet-core","controller":"settings","action":"information"}', 'younet_core_admin_main', '', 1, 0, 3),
(100, 'core_footer_mobile', 'mobi', 'Mobile Site', 'Mobi_Plugin_Menus', '', 'core_footer', '', 1, 0, 4),
(101, 'mobi_footer_mobile', 'mobi', 'Mobile Site', 'Mobi_Plugin_Menus', '', 'mobi_footer', '', 1, 0, 1),
(102, 'mobi_footer_auth', 'mobi', 'Auth', 'Mobi_Plugin_Menus', '', 'mobi_footer', '', 1, 0, 2),
(103, 'mobi_footer_signup', 'mobi', 'Sign Up', 'Mobi_Plugin_Menus', '', 'mobi_footer', '', 1, 0, 3),
(104, 'mobi_main_home', 'mobi', 'Home', 'Mobi_Plugin_Menus', '', 'mobi_main', '', 1, 0, 1),
(105, 'mobi_main_profile', 'mobi', 'Profile', 'Mobi_Plugin_Menus', '', 'mobi_main', '', 1, 0, 2),
(106, 'mobi_main_messages', 'mobi', 'Inbox', 'Mobi_Plugin_Menus', '', 'mobi_main', '', 1, 0, 3),
(107, 'mobi_main_browse', 'mobi', 'Browse', 'Mobi_Plugin_Menus', '', 'mobi_main', '', 1, 0, 4),
(108, 'mobi_profile_message', 'mobi', 'Send Message', 'Mobi_Plugin_Menus', '', 'mobi_profile', '', 1, 0, 1),
(109, 'mobi_profile_friend', 'mobi', 'Friends', 'Mobi_Plugin_Menus', '', 'mobi_profile', '', 1, 0, 2),
(110, 'mobi_browse_members', 'user', 'Members', '', '{"route":"user_general","action":"browse"}', 'mobi_browse', '', 1, 0, 1),
(111, 'core_main_event', 'event', 'Events', '', '{"route":"event_general"}', 'core_main', '', 1, 0, 4),
(112, 'core_sitemap_event', 'event', 'Events', '', '{"route":"event_general"}', 'core_sitemap', '', 1, 0, 6),
(113, 'event_main_upcoming', 'event', 'Upcoming Events', '', '{"route":"event_upcoming"}', 'event_main', '', 1, 0, 1),
(114, 'event_main_past', 'event', 'Past Events', '', '{"route":"event_past"}', 'event_main', '', 1, 0, 2),
(115, 'event_main_manage', 'event', 'My Events', 'Event_Plugin_Menus', '{"route":"event_general","action":"manage"}', 'event_main', '', 1, 0, 3),
(116, 'event_main_create', 'event', 'Create New Event', 'Event_Plugin_Menus', '{"route":"event_general","action":"create"}', 'event_main', '', 1, 0, 4),
(117, 'event_quick_create', 'event', 'Create New Event', 'Event_Plugin_Menus::canCreateEvents', '{"route":"event_general","action":"create","class":"buttonlink icon_event_new"}', 'event_quick', '', 1, 0, 1),
(118, 'event_profile_edit', 'event', 'Edit Profile', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 1),
(119, 'event_profile_style', 'event', 'Edit Styles', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 2),
(120, 'event_profile_member', 'event', 'Member', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 3),
(121, 'event_profile_report', 'event', 'Report Event', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 4),
(122, 'event_profile_share', 'event', 'Share', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 5),
(123, 'event_profile_invite', 'event', 'Invite', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 6),
(124, 'event_profile_message', 'event', 'Message Members', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 7),
(125, 'event_profile_delete', 'event', 'Delete Event', 'Event_Plugin_Menus', '', 'event_profile', '', 1, 0, 8),
(126, 'core_admin_main_plugins_event', 'event', 'Events', '', '{"route":"admin_default","module":"event","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999),
(127, 'event_admin_main_manage', 'event', 'Manage Events', '', '{"route":"admin_default","module":"event","controller":"manage"}', 'event_admin_main', '', 1, 0, 1),
(128, 'event_admin_main_level', 'event', 'Member Level Settings', '', '{"route":"admin_default","module":"event","controller":"settings","action":"level"}', 'event_admin_main', '', 1, 0, 2),
(129, 'event_admin_main_categories', 'event', 'Teams', '', '{"route":"admin_default","module":"event","controller":"settings","action":"categories"}', 'event_admin_main', '', 1, 0, 3),
(130, 'authorization_admin_level_event', 'event', 'Events', '', '{"route":"admin_default","module":"event","controller":"level","action":"index"}', 'authorization_admin_level', '', 1, 0, 999),
(131, 'mobi_browse_event', 'event', 'Events', '', '{"route":"event_general"}', 'mobi_browse', '', 1, 0, 7),
(132, 'core_main_group', 'group', 'Groups', '', '{"route":"group_general"}', 'core_main', '', 1, 0, 999),
(133, 'core_sitemap_group', 'group', 'Groups', '', '{"route":"group_general"}', 'core_sitemap', '', 1, 0, 6),
(134, 'group_main_browse', 'group', 'Browse Groups', '', '{"route":"group_general","action":"browse"}', 'group_main', '', 1, 0, 1),
(135, 'group_main_manage', 'group', 'My Groups', 'Group_Plugin_Menus', '{"route":"group_general","action":"manage"}', 'group_main', '', 1, 0, 2),
(136, 'group_main_create', 'group', 'Create New Group', 'Group_Plugin_Menus', '{"route":"group_general","action":"create"}', 'group_main', '', 1, 0, 3),
(137, 'group_quick_create', 'group', 'Create New Group', 'Group_Plugin_Menus::canCreateGroups', '{"route":"group_general","action":"create","class":"buttonlink icon_group_new"}', 'group_quick', '', 1, 0, 1),
(138, 'group_profile_edit', 'group', 'Edit Profile', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 1),
(139, 'group_profile_style', 'group', 'Edit Styles', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 2),
(140, 'group_profile_member', 'group', 'Member', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 3),
(141, 'group_profile_report', 'group', 'Report Group', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 4),
(142, 'group_profile_share', 'group', 'Share', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 5),
(143, 'group_profile_invite', 'group', 'Invite', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 6),
(144, 'group_profile_message', 'group', 'Message Members', 'Group_Plugin_Menus', '', 'group_profile', '', 1, 0, 7),
(145, 'core_admin_main_plugins_group', 'group', 'Groups', '', '{"route":"admin_default","module":"group","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999),
(146, 'group_admin_main_manage', 'group', 'Manage Groups', '', '{"route":"admin_default","module":"group","controller":"manage"}', 'group_admin_main', '', 1, 0, 1),
(147, 'group_admin_main_level', 'group', 'Member Level Settings', '', '{"route":"admin_default","module":"group","controller":"settings","action":"level"}', 'group_admin_main', '', 1, 0, 2),
(148, 'group_admin_main_categories', 'group', 'Categories', '', '{"route":"admin_default","module":"group","controller":"settings","action":"categories"}', 'group_admin_main', '', 1, 0, 3),
(149, 'authorization_admin_level_group', 'group', 'Groups', '', '{"route":"admin_default","module":"group","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 999),
(150, 'mobi_browse_group', 'group', 'Groups', '', '{"route":"group_general"}', 'mobi_browse', '', 1, 0, 8),
(151, 'core_main_advgroup', 'advgroup', 'Groups', '', '{"route":"group_general"}', 'core_main', '', 1, 0, 999),
(152, 'core_sitemap_advgroup', 'advgroup', 'Groups', '', '{"route":"group_general"}', 'core_sitemap', '', 1, 0, 6),
(153, 'advgroup_main_browse', 'advgroup', 'Browse Groups', '', '{"route":"group_general","action":"browse"}', 'advgroup_main', '', 1, 0, 1),
(154, 'advgroup_main_manage', 'advgroup', 'My Groups', 'Advgroup_Plugin_Menus', '{"route":"group_general","action":"manage"}', 'advgroup_main', '', 1, 0, 2),
(155, 'advgroup_main_create', 'advgroup', 'Create New Group', 'Advgroup_Plugin_Menus', '{"route":"group_general","action":"create"}', 'advgroup_main', '', 1, 0, 3),
(156, 'advgroup_quick_create', 'advgroup', 'Create New Group', 'Advgroup_Plugin_Menus::canCreateGroups', '{"route":"group_general","action":"create","class":"buttonlink icon_group_new"}', 'advgroup_quick', '', 1, 0, 1),
(157, 'advgroup_manage_announcement', 'advgroup', 'Announcement', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 1),
(158, 'advgroup_profile_edit', 'advgroup', 'Edit Profile', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 1),
(159, 'advgroup_profile_style', 'advgroup', 'Edit Styles', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 2),
(160, 'advgroup_profile_member', 'advgroup', 'Member', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 3),
(161, 'advgroup_profile_report', 'advgroup', 'Report Group', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 4),
(162, 'advgroup_profile_share', 'advgroup', 'Share', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 5),
(163, 'advgroup_profile_message', 'advgroup', 'Message Members', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 6),
(164, 'advgroup_profile_invite', 'advgroup', 'Invite', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 7),
(165, 'advgroup_profile_invitenew', 'advgroup', 'Invite New Guests', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 8),
(166, 'advgroup_profile_invite_contact_import', 'advgroup', 'Invite Using Contact Importer', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 9),
(167, 'advgroup_profile_album', 'advgroup', 'Group Photo Albums', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 10),
(168, 'advgroup_profile_discussion', 'advgroup', 'Group Discussions', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 11),
(169, 'advgroup_profile_event', 'advgroup', 'Group Events', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 12),
(170, 'advgroup_profile_poll', 'advgroup', 'Group Polls', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 13),
(171, 'advgroup_profile_useful_link', 'advgroup', 'Group Useful Links', 'Advgroup_Plugin_Menus', '', 'advgroup_profile', '', 1, 0, 14),
(172, 'core_admin_main_plugins_advgroup', 'advgroup', 'Advanced Groups', '', '{"route":"admin_default","module":"advgroup","controller":"manage"}', 'core_admin_main_plugins', '', 1, 0, 999),
(173, 'advgroup_admin_main_manage', 'advgroup', 'Manage Groups', '', '{"route":"admin_default","module":"advgroup","controller":"manage"}', 'advgroup_admin_main', '', 1, 0, 1),
(174, 'advgroup_admin_main_global', 'advgroup', 'Global Settings', '', '{"route":"admin_default","module":"advgroup","controller":"global"}', 'advgroup_admin_main', '', 1, 0, 2),
(175, 'advgroup_admin_main_level', 'advgroup', 'Member Level Settings', '', '{"route":"admin_default","module":"advgroup","controller":"settings","action":"level"}', 'advgroup_admin_main', '', 1, 0, 3),
(176, 'advgroup_admin_main_categories', 'advgroup', 'Teams', '', '{"route":"admin_default","module":"advgroup","controller":"settings","action":"categories"}', 'advgroup_admin_main', '', 1, 0, 4),
(177, 'advgroup_admin_main_fields', 'advgroup', 'Profile Fields', '', '{"route":"admin_default","module":"advgroup","controller":"fields"}', 'advgroup_admin_main', '', 1, 0, 5),
(178, 'authorization_admin_level_advgroup', 'advgroup', 'Advanced Groups', '', '{"route":"admin_default","module":"advgroup","controller":"settings","action":"level"}', 'authorization_admin_level', '', 1, 0, 999),
(179, 'mobi_browse_advgroup', 'advgroup', 'Advanced Groups', '', '{"route":"group_general"}', 'mobi_browse', '', 1, 0, 8),
(180, 'core_admin_main_wibiya', 'core', 'Wibiya Integration', '', '{"route":"admin_default", "action":"wibiya", "controller":"settings", "module":"core"}', 'core_admin_main_settings', '', 1, 0, 4),
(181, 'user_profile_admin', 'user', 'Admin Settings', 'User_Plugin_Menus', '', 'user_profile', '', 1, 0, 9),
(182, 'core_admin_main_janrain', 'user', 'Janrain Integration', '', '{"route":"admin_default", "action":"janrain", "controller":"settings", "module":"user"}', 'core_admin_main_settings', '', 1, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_menus`
--

CREATE TABLE IF NOT EXISTS `engine4_core_menus` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `type` enum('standard','hidden','custom') character set latin1 collate latin1_general_ci NOT NULL default 'standard',
  `title` varchar(64) collate utf8_unicode_ci NOT NULL,
  `order` smallint(3) NOT NULL default '999',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `order` (`order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `engine4_core_menus`
--

INSERT INTO `engine4_core_menus` (`id`, `name`, `type`, `title`, `order`) VALUES
(1, 'core_main', 'standard', 'Main Navigation Menu', 1),
(2, 'core_mini', 'standard', 'Mini Navigation Menu', 2),
(3, 'core_footer', 'standard', 'Footer Menu', 3),
(4, 'core_sitemap', 'standard', 'Sitemap', 4),
(5, 'user_home', 'standard', 'Member Home Quick Links Menu', 999),
(6, 'user_profile', 'standard', 'Member Profile Options Menu', 999),
(7, 'user_edit', 'standard', 'Member Edit Profile Navigation Menu', 999),
(8, 'user_settings', 'standard', 'Member Settings Navigation Menu', 999),
(9, 'messages_main', 'standard', 'Messages Main Navigation Menu', 999),
(10, 'mobi_footer', 'standard', 'Mobile Footer Menu', 999),
(11, 'mobi_main', 'standard', 'Mobile Main Menu', 999),
(12, 'mobi_profile', 'standard', 'Mobile Profile Options Menu', 999),
(13, 'mobi_browse', 'standard', 'Mobile Browse Page Menu', 999),
(14, 'event_main', 'standard', 'Event Main Navigation Menu', 999),
(15, 'event_profile', 'standard', 'Event Profile Options Menu', 999),
(16, 'group_main', 'standard', 'Group Main Navigation Menu', 999),
(17, 'group_profile', 'standard', 'Group Profile Options Menu', 999),
(18, 'advgroup_main', 'standard', 'Advanced Group Main Navigation Menu', 999),
(19, 'advgroup_profile', 'standard', 'Advanced Group Profile Options Menu', 999);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_migrations`
--

CREATE TABLE IF NOT EXISTS `engine4_core_migrations` (
  `package` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `current` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_migrations`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_modules`
--

CREATE TABLE IF NOT EXISTS `engine4_core_modules` (
  `name` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci,
  `version` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL default '0',
  `type` enum('core','standard','extra') character set latin1 collate latin1_general_ci NOT NULL default 'extra',
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_modules`
--

INSERT INTO `engine4_core_modules` (`name`, `title`, `description`, `version`, `enabled`, `type`) VALUES
('activity', 'Activity', 'Activity', '4.2.0', 1, 'core'),
('advgroup', 'Advanced Groups', 'Advanced Groups allow member to create groups, post photos,albums, polls or discussion, etc .. on their groups.', '4.02p1', 0, 'extra'),
('announcement', 'Announcements', 'Announcements', '4.2.0', 1, 'standard'),
('authorization', 'Authorization', 'Authorization', '4.2.0', 1, 'core'),
('core', 'Core', 'Core', '4.2.0', 1, 'core'),
('event', 'Events', 'Events', '4.2.0', 1, 'extra'),
('fields', 'Fields', 'Fields', '4.2.0', 1, 'core'),
('group', 'Groups', 'Groups', '4.2.0', 0, 'extra'),
('invite', 'Invite', 'Invite', '4.2.0', 1, 'standard'),
('messages', 'Messages', 'Messages', '4.2.0', 1, 'standard'),
('mobi', 'Mobi', 'Mobile', '4.2.0', 1, 'extra'),
('network', 'Networks', 'Networks', '4.2.0', 1, 'standard'),
('payment', 'Payment', 'Payment', '4.2.0', 1, 'standard'),
('storage', 'Storage', 'Storage', '4.2.0', 1, 'core'),
('user', 'Members', 'Members', '4.2.0', 1, 'core'),
('younet-core', 'YouNet Core Module', 'YouNet Core Module', '4.02p3', 0, 'extra');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_nodes`
--

CREATE TABLE IF NOT EXISTS `engine4_core_nodes` (
  `node_id` int(10) unsigned NOT NULL auto_increment,
  `signature` char(40) collate utf8_unicode_ci NOT NULL,
  `host` varchar(255) collate utf8_unicode_ci NOT NULL,
  `first_seen` datetime NOT NULL,
  `last_seen` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  PRIMARY KEY  (`node_id`),
  UNIQUE KEY `signature` (`signature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_nodes`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_pages`
--

CREATE TABLE IF NOT EXISTS `engine4_core_pages` (
  `page_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `displayname` varchar(128) collate utf8_unicode_ci NOT NULL default '',
  `url` varchar(128) collate utf8_unicode_ci default NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `keywords` text collate utf8_unicode_ci NOT NULL,
  `custom` tinyint(1) NOT NULL default '1',
  `fragment` tinyint(1) NOT NULL default '0',
  `layout` varchar(32) collate utf8_unicode_ci NOT NULL default '',
  `levels` text collate utf8_unicode_ci,
  `provides` text collate utf8_unicode_ci,
  `view_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`page_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `engine4_core_pages`
--

INSERT INTO `engine4_core_pages` (`page_id`, `name`, `displayname`, `url`, `title`, `description`, `keywords`, `custom`, `fragment`, `layout`, `levels`, `provides`, `view_count`) VALUES
(1, 'header', 'Site Header', NULL, '', '', '', 0, 1, '', NULL, 'header-footer', 0),
(2, 'footer', 'Site Footer', NULL, '', '', '', 0, 1, '', NULL, 'header-footer', 0),
(3, 'core_index_index', 'Home Page', NULL, 'Home Page', 'This is the home page.', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0),
(4, 'user_index_home', 'Member Home Page', NULL, 'Member Home Page', 'This is the home page for members.', '', 0, 0, '', NULL, 'viewer;no-subject', 0),
(5, 'user_profile_index', 'Member Profile', NULL, 'Member Profile', 'This is a member''s profile.', '', 0, 0, '', NULL, 'subject=user', 0),
(6, 'core_help_contact', 'Contact Page', NULL, 'Contact Us', 'This is the contact page', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0),
(7, 'core_help_privacy', 'Privacy Page', NULL, 'Privacy Policy', 'This is the privacy policy page', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0),
(8, 'core_help_terms', 'Terms of Service Page', NULL, 'Terms of Service', 'This is the terms of service page', '', 0, 0, '', NULL, 'no-viewer;no-subject', 0),
(9, 'core_error_requireuser', 'Sign-in Required Page', NULL, 'Sign-in Required', '', '', 0, 0, '', NULL, NULL, 0),
(10, 'user_auth_login', 'Sign-in Page', NULL, 'Sign-in', 'This is the site sign-in page.', '', 0, 0, '', NULL, NULL, 0),
(11, 'user_signup_index', 'Sign-up Page', NULL, 'Sign-up', 'This is the site sign-up page.', '', 0, 0, '', NULL, NULL, 0),
(12, 'invite_index_index', 'Invite Page', NULL, 'Invite', '', '', 0, 0, '', NULL, NULL, 0),
(13, 'messages_messages_inbox', 'Messages Inbox Page', NULL, 'Inbox', '', '', 0, 0, '', NULL, NULL, 0),
(14, 'messages_messages_outbox', 'Messages Outbox Page', NULL, 'Inbox', '', '', 0, 0, '', NULL, NULL, 0),
(15, 'header_mobi', 'Mobile Site Header', NULL, 'Mobile Site Header', 'This is the mobile site header.', '', 0, 1, '', NULL, NULL, 0),
(16, 'footer_mobi', 'Mobile Site Footer', NULL, 'Mobile Site Footer', 'This is the mobile site footer.', '', 0, 1, '', NULL, NULL, 0),
(17, 'mobi_index_index', 'Mobile Home Page', NULL, 'Mobile Home Page', 'This is the mobile homepage.', '', 0, 0, 'default', NULL, NULL, 0),
(18, 'mobi_index_userhome', 'Mobile Member Home Page', NULL, 'Mobile Member Home Page', 'This is the mobile member homepage.', '', 0, 0, '', NULL, NULL, 0),
(19, 'mobi_index_profile', 'Mobile Member Profile', NULL, 'Mobile Member Profile', 'This is the mobile verison of a member profile.', '', 0, 0, '', NULL, NULL, 0),
(20, 'mobi_event_profile', 'Mobile Event Profile', NULL, 'Mobile Event Profile', 'This is the mobile verison of an event profile.', '', 0, 0, '', NULL, NULL, 0),
(21, 'event_profile_index', 'Event Profile', NULL, 'Event Profile', 'This is the profile for an event.', '', 0, 0, '', NULL, 'subject=event', 0),
(22, 'event_index_browse', 'Event Browse Page', NULL, 'Event Browse', 'This page lists events.', '', 0, 0, '', NULL, NULL, 0),
(23, 'group_profile_index', 'Group Profile', NULL, 'Group Profile', 'This is the profile for an group.', '', 0, 0, '', NULL, 'subject=group', 0),
(24, 'mobi_group_profile', 'Mobile Group Profile', NULL, 'Mobile Group Profile', 'This is the mobile verison of a group profile.', '', 0, 0, '', NULL, NULL, 0),
(25, 'group_index_browse', 'Group Browse Page', NULL, 'Group Browse', 'This page lists groups.', '', 0, 0, '', NULL, NULL, 0),
(26, 'advgroup_index_browse', 'Advanced Group Home Page', NULL, 'Advanced Group Home Page', 'The Homepage of Advgroup module.', '', 0, 0, '', NULL, NULL, 0),
(27, 'advgroup_index_listing', 'Advanced Group Listing Page', NULL, 'Advanced Group Listing Page', 'The listing page of Advgroup module.', '', 0, 0, '', NULL, NULL, 0),
(28, 'advgroup_profile_index', 'Advanced Group Profile', NULL, 'Advanced Group Profile', 'This is the profile for an group.', '', 0, 0, '', NULL, 'subject=group', 0),
(29, 'mobi_advgroup_profile', 'Mobile Advanced Group Profile', NULL, 'Mobile Advanced Group Profile', 'This is the mobile verison of a group profile.', '', 0, 0, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_processes`
--

CREATE TABLE IF NOT EXISTS `engine4_core_processes` (
  `pid` int(10) unsigned NOT NULL,
  `parent_pid` int(10) unsigned NOT NULL default '0',
  `system_pid` int(10) unsigned NOT NULL default '0',
  `started` int(10) unsigned NOT NULL,
  `timeout` mediumint(10) unsigned NOT NULL default '0',
  `name` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`pid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_processes`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_referrers`
--

CREATE TABLE IF NOT EXISTS `engine4_core_referrers` (
  `host` varchar(64) collate utf8_unicode_ci NOT NULL,
  `path` varchar(64) collate utf8_unicode_ci NOT NULL,
  `query` varchar(128) collate utf8_unicode_ci NOT NULL,
  `value` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`host`,`path`,`query`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_referrers`
--

INSERT INTO `engine4_core_referrers` (`host`, `path`, `query`, `value`) VALUES
('10.36.250.233', '/cgi-bin/blockoptions.cgi', 'ws-session=1728129890', 1),
('36ohk6dgmcd1n-c.c.yom.mail.yahoo.net', '/om/api/1.0/openmail.app.invoke/36ohk6dgmcd1n/9/1.0.35/us_sbc/en', '', 1),
('36ohk6dgmcd1n-c.c.yom.mail.yahoo.net', '/om/api/1.0/openmail.app.invoke/36ohk6dgmcd1n/9/1.0.35/us/en-us/', '', 1),
('bl165w.blu165.mail.live.com', '/mail/inboxlight.aspx', 'mid=53073279-48a0-11e1-bc08-00215ad7afae&n=1631308885', 1),
('co122w.col122.mail.live.com', '/mail/inboxlight.aspx', 'n=471602220', 1),
('mail.aol.com', '/35412-111/aol-6/en-us/mail/displaymessage.aspx', 'ws_popup=true', 1),
('sn104w.snt104.mail.live.com', '/mail/inboxlight.aspx', 'n=657431240', 1),
('sn108w.snt108.mail.live.com', '/mail/inboxlight.aspx', 'n=1157870821', 1),
('sn132w.snt132.mail.live.com', '/mail/inboxlight.aspx', 'n=1313199472', 1),
('sn134w.snt134.mail.live.com', '/mail/inboxlight.aspx', 'n=1049641707', 1),
('us.mc1124.mail.yahoo.com', '/mc/welcome', '.gx=1&.tm=1327719415&.rand=arv9h0l23sd24', 1),
('us.mc1124.mail.yahoo.com', '/mc/welcome', '.tm=1327884299', 1),
('us.mc1621.mail.yahoo.com', '/mc/welcome', '.gx=1&.tm=1327944416&.rand=17r8f7nfa125i', 1),
('us.mc1801.mail.yahoo.com', '/mc/welcome', '.partner=sbc&.gx=1&.tm=1327851116&.rand=2vu19v23j4b18', 1),
('us.mc814.mail.yahoo.com', '/mc/welcome', '.partner=sbc&.tm=1327682108', 1),
('us.mc816.mail.yahoo.com', '/mc/welcome', '.partner=sbc&.gx=1&.tm=1327878330&.rand=9jc2a67an0ufk', 1),
('us.mc831.mail.yahoo.com', '/mc/welcome', '.partner=sbc&.gx=1&.tm=1327674107&.rand=e7p0f52p8i1rp', 1),
('us.mg201.mail.yahoo.com', '/dc/launch', '.gx=1&.rand=5c2fu0kksbj6s', 1),
('us.mg204.mail.yahoo.com', '/dc/launch', '.partner=sbc&.gx=1&.rand=40a5r900octfj', 1),
('us.mg205.mail.yahoo.com', '/dc/launch', '.partner=sbc&.gx=1&.rand=1re0qo84otfnk', 1),
('us.mg205.mail.yahoo.com', '/neo/launch', '.partner=sbc&.rand=68rb9i1hsdftt', 1),
('co113w.col113.mail.live.com', '/mail/inboxlight.aspx', 'n=586353316', 2),
('sn104w.snt104.mail.live.com', '/mail/inboxlight.aspx', 'n=1334781504&fid=1&fav=1&mid=902488eb-48a4-11e1-b607-00215ad8463e&fv=1', 2),
('translate.google.com.hk', '/translate_p', 'anno=2&hl=en&sl=en&tl=ko&u=http://www.op2vb.com/peak%3fen4_maint_code%3dpeak&usg=alkjrhj2phwx0w5trmhb_wc4lqpkwehlaq', 2),
('us.mc816.mail.yahoo.com', '/mc/welcome', '.partner=sbc&.gx=1&.tm=1327776526&.rand=3rg022np3elvm', 2),
('mail.aol.com', '/35412-111/aol-6/en-us/suite.aspx', '', 3),
('us.mg205.mail.yahoo.com', '/neo/launch', '.partner=sbc', 4);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_reports`
--

CREATE TABLE IF NOT EXISTS `engine4_core_reports` (
  `report_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `category` varchar(16) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `subject_type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `read` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`report_id`),
  KEY `category` (`category`),
  KEY `user_id` (`user_id`),
  KEY `read` (`read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_routes`
--

CREATE TABLE IF NOT EXISTS `engine4_core_routes` (
  `name` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `config` text collate utf8_unicode_ci NOT NULL,
  `order` smallint(6) NOT NULL default '1',
  PRIMARY KEY  (`name`),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_routes`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_search`
--

CREATE TABLE IF NOT EXISTS `engine4_core_search` (
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) collate utf8_unicode_ci NOT NULL,
  `hidden` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`type`,`id`),
  FULLTEXT KEY `LOOKUP` (`title`,`description`,`keywords`,`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_search`
--

INSERT INTO `engine4_core_search` (`type`, `id`, `title`, `description`, `keywords`, `hidden`) VALUES
('group', 1, '11 Smack', '', '', ''),
('group', 2, '11 Metro', '', '', ''),
('group', 3, '12 Smack', '', '', ''),
('group', 4, '12 National', '', '', ''),
('group', 5, '12 Metro (K. Wilson)', '', '', ''),
('group', 6, '12 Metro (H. Erickson)', '', '', ''),
('user', 1, 'System Administrator', '', '', ''),
('user', 16, 'Bailey Rucker', '', '', ''),
('user', 2031245164, 'Jenny Roy', '', '', ''),
('user', 2002635803, 'Lindsey Roy', '', '', ''),
('user', 6, 'Secondary Admin', '', '', ''),
('user', 14, 'Jenni Choi', '', '', ''),
('user', 13, 'Kate Decker', '', '', ''),
('user', 18, 'Diane Fair', '', '', ''),
('user', 17, 'Emily Roberts', '', '', ''),
('user', 19, 'Jillian Crotts', '', '', ''),
('user', 20, 'Tonya Bell', '', '', ''),
('user', 21, 'Alyssa Bert', '', '', ''),
('user', 22, 'Bailee Wright', '', '', ''),
('user', 23, 'Kristen Macy', '', '', ''),
('user', 24, 'Sarah Decker', '', '', ''),
('user', 25, 'Katie Roberts', '', '', ''),
('user', 26, 'Becky Ethridge', '', '', ''),
('user', 27, 'McKinly Dortch', '', '', ''),
('user', 28, 'Ericka Scholl', '', '', ''),
('user', 29, 'Terri McCoy', '', '', ''),
('user', 30, 'Bethany Wrasse', '', '', ''),
('user', 31, 'Miranda Rude', '', '', ''),
('user', 32, 'Claire Kelley', '', '', ''),
('user', 33, 'Katelyn Robnett', '', '', ''),
('user', 34, 'Hannah Frogge', '', '', ''),
('user', 35, 'Tayler  Burzette', '', '', ''),
('user', 36, 'Teagan Polcovich', '', '', ''),
('user', 37, 'Aeriel Jackson', '', '', ''),
('user', 38, 'Lauren Burgess', '', '', ''),
('user', 39, 'Allie Rice', '', '', ''),
('user', 40, 'Sarah Johnson', '', '', ''),
('user', 1383914828, 'Edgar Miraku', '', '', ''),
('user', 43, 'Ashley Wade', '', '', ''),
('user', 44, 'Josie Gandall', '', '', ''),
('user', 45, 'Isabel Harwell', '', '', ''),
('user', 46, 'Madison Bolles', '', '', ''),
('user', 47, 'Madison Ward', '', '', ''),
('user', 48, 'Miranda Zawisza', '', '', ''),
('user', 49, 'Maicee Morgan', '', '', ''),
('user', 50, 'Kimo Aweau', '', '', ''),
('user', 51, 'Kristen Wilson', '', '', ''),
('user', 52, 'Will Ethridge', '', '', ''),
('user', 53, 'Randy Decker', '', '', ''),
('user', 54, 'Jeff Boyland', '', '', ''),
('user', 55, 'Kena Thompson', '', '', ''),
('user', 56, 'Elliot Blake', '', '', ''),
('user', 57, 'Samantha Bradley', '', '', ''),
('user', 58, 'Lisa Polcovich', '', '', ''),
('user', 59, 'Heather  Erickson', '', '', ''),
('user', 60, 'Sophie Bonadeo', '', '', ''),
('user', 61, 'Taylor Harvick', '', '', ''),
('user', 62, 'Ciera Jesse', '', '', ''),
('user', 63, 'Anna Peacock', '', '', ''),
('user', 64, 'Peyton Fryer', '', '', ''),
('user', 65, 'Sydney Miles', '', '', ''),
('user', 66, 'Paige Miles', '', '', ''),
('user', 67, 'Kenna Macy', '', '', ''),
('user', 68, 'Timmie Dorsey', '', '', ''),
('user', 69, 'Alica Sexton', '', '', ''),
('user', 70, 'Samantha Srite', '', '', ''),
('user', 71, 'Rachel Manriquez', '', '', ''),
('user', 72, 'B. DeWayne Benson', '', '', ''),
('user', 73, 'Alissa Benson', '', '', ''),
('user', 74, 'Maggie Benson', '', '', ''),
('user', 75, 'Anna Wiewel', '', '', ''),
('user', 77, 'Sammy Duncan', '', '', ''),
('user', 78, 'Michelle Boevers', '', '', ''),
('user', 79, 'Heather Ruiz', '', '', ''),
('user', 80, 'Paige Wekenborg', '', '', ''),
('user', 81, 'Jessie Heiden', '', '', ''),
('user', 82, 'Jennifer Brooks', '', '', ''),
('user', 83, 'REGAN DEQUASIE', '', '', ''),
('user', 84, 'Mark Herrin', '', '', ''),
('user', 85, 'Skylar Hamlett', '', '', ''),
('user', 86, 'Reagan Gantz', '', '', ''),
('user', 87, 'Natalie Murray', '', '', ''),
('user', 88, 'Emma Nettleton', '', '', ''),
('user', 89, 'Sarah Gilkerson', '', '', ''),
('user', 90, 'Haley Cochran', '', '', ''),
('user', 91, 'Madison Pearson', '', '', ''),
('user', 92, 'Taryn Boyland', '', '', ''),
('user', 93, 'Lakyn Massengill', '', '', ''),
('user', 94, 'SYDNEY MEGET', '', '', ''),
('user', 95, 'Reagan Baker', '', '', ''),
('user', 96, 'Elanna Killackey', '', '', ''),
('user', 1573966727, 'sasya8080', '', '', ''),
('user', 601239713, 'sasya8080', '', '', ''),
('user', 1061322942, 'clloyd', '', '', ''),
('user', 86999445, 'clloyd', '', '', ''),
('user', 1051856637, '<i>Deleted Member</i>', '', '', ''),
('user', 674218479, 'Shary Bouvette', '', '', ''),
('user', 1617228157, 'Ashley McCoy', '', '', ''),
('user', 1829893787, 'Livi Schiffner', '', '', ''),
('user', 573980572, 'Savannah Onley', '', '', ''),
('user', 1610159378, 'Kenna Macy', '', '', ''),
('user', 886555540, 'Chanelle McCormick', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_serviceproviders`
--

CREATE TABLE IF NOT EXISTS `engine4_core_serviceproviders` (
  `serviceprovider_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `type` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `name` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `class` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`serviceprovider_id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `engine4_core_serviceproviders`
--

INSERT INTO `engine4_core_serviceproviders` (`serviceprovider_id`, `title`, `type`, `name`, `class`, `enabled`) VALUES
(1, 'MySQL', 'database', 'mysql', 'Engine_ServiceLocator_Plugin_Database_Mysql', 1),
(2, 'PDO MySQL', 'database', 'mysql_pdo', 'Engine_ServiceLocator_Plugin_Database_MysqlPdo', 1),
(3, 'MySQLi', 'database', 'mysqli', 'Engine_ServiceLocator_Plugin_Database_Mysqli', 1),
(4, 'File', 'cache', 'file', 'Engine_ServiceLocator_Plugin_Cache_File', 1),
(5, 'APC', 'cache', 'apc', 'Engine_ServiceLocator_Plugin_Cache_Apc', 1),
(6, 'Memcache', 'cache', 'memcached', 'Engine_ServiceLocator_Plugin_Cache_Memcached', 1),
(7, 'Simple', 'captcha', 'image', 'Engine_ServiceLocator_Plugin_Captcha_Image', 1),
(8, 'ReCaptcha', 'captcha', 'recaptcha', 'Engine_ServiceLocator_Plugin_Captcha_Recaptcha', 1),
(9, 'SMTP', 'mail', 'smtp', 'Engine_ServiceLocator_Plugin_Mail_Smtp', 1),
(10, 'Sendmail', 'mail', 'sendmail', 'Engine_ServiceLocator_Plugin_Mail_Sendmail', 1),
(11, 'GD', 'image', 'gd', 'Engine_ServiceLocator_Plugin_Image_Gd', 1),
(12, 'Imagick', 'image', 'imagick', 'Engine_ServiceLocator_Plugin_Image_Imagick', 1),
(13, 'Akismet', 'akismet', 'standard', 'Engine_ServiceLocator_Plugin_Akismet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_services`
--

CREATE TABLE IF NOT EXISTS `engine4_core_services` (
  `service_id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `name` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `profile` varchar(128) character set latin1 collate latin1_general_ci NOT NULL default 'default',
  `config` text collate utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`service_id`),
  UNIQUE KEY `type` (`type`,`profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_services`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_servicetypes`
--

CREATE TABLE IF NOT EXISTS `engine4_core_servicetypes` (
  `servicetype_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `type` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `interface` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `enabled` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`servicetype_id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `engine4_core_servicetypes`
--

INSERT INTO `engine4_core_servicetypes` (`servicetype_id`, `title`, `type`, `interface`, `enabled`) VALUES
(1, 'Database', 'database', 'Zend_Db_Adapter_Abstract', 1),
(2, 'Cache', 'cache', 'Zend_Cache_Backend', 1),
(3, 'Captcha', 'captcha', 'Zend_Captcha_Adapter', 1),
(4, 'Mail Transport', 'mail', 'Zend_Mail_Transport_Abstract', 1),
(5, 'Image', 'image', 'Engine_Image_Adapter_Abstract', 1),
(6, 'Akismet', 'akismet', 'Zend_Service_Akismet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_session`
--

CREATE TABLE IF NOT EXISTS `engine4_core_session` (
  `id` char(32) collate utf8_unicode_ci NOT NULL default '',
  `modified` int(11) default NULL,
  `lifetime` int(11) default NULL,
  `data` text collate utf8_unicode_ci,
  `user_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_session`
--

INSERT INTO `engine4_core_session` (`id`, `modified`, `lifetime`, `data`, `user_id`) VALUES
('0rlq7rcgj4j4mg2l9po3lne226', 1328146958, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"ae2e7d84e14bd315b928f1f24d8f8bbb";}', NULL),
('0s707e84t7a6ifq7umn9dpvi02', 1328146709, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('0va2gi2flll39ll7t93dkh6r72', 1328147278, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('0vebpe0pt5f1mf7ckkbh7i33f6', 1328148627, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"00b24cdfd693c50dddd664828ef9c113";}', NULL),
('1723dq2spmio2r7m5livf1o696', 1328146851, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"e2acc8d15f92720fe6ab6642b334a977";}', NULL),
('20i4lc1p2fjccclc07h3numgn3', 1328148532, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"5e0a648437b7e1816031e6f27a746cb5";}', NULL),
('2cmet0918b1r32runafhknku12', 1328147171, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('2stu06mol8bkqvhchhi8ha53p7', 1328051632, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('381th558vv86ncf34uda0h9ga3', 1328065385, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"7734a123a1e9a0ab9c65a2244ad8315b";}twitter_uid|b:0;', 48),
('3i5namul7v8t7943scqsh76bs5', 1328050112, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"ac1e5aa0b8328d267bc3077f0d2a970d";}twitter_uid|b:0;invite|a:1:{s:12:"signup_email";s:24:"forgotpassword@op2vb.com";}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"193";ulogin_id|s:5:"admin";twitter_lock|i:1;Network_Plugin_Signup_Network|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}', 1),
('3koj9tmd361jom75rlrb5sl8d0', 1328148929, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"0fbd052025e931b54e51509b3a3c1e32";}', NULL),
('3rcu9u1fi718o33godkjtct7a3', 1328149076, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"c59f1657cd76b66f4364746b704c57bd";}', NULL),
('44i9p65hfprp339r74ahggfp66', 1328142180, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('491sajt1tejisitu5sgj4lhdr5', 1328148455, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"5ff6636230088972da6b14a3077deb88";}', NULL),
('4ftce3ld6n8jmnr62rran60if7', 1328148999, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"406285b78b99a37ab1336f54a04f8f74";}', NULL),
('4g9bq8n7rcfml59r781pa7qdk7', 1328148687, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"19a231651a62087a27c401242015ca41";}', NULL),
('4knttotmvok5jvgbiso57h12n6', 1328066937, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1328067194;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('4nj6i2da39kfmta5mg3jsepna6', 1328148480, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8b2f5d7c8013bb9bd4f210bc325587b8";}', NULL),
('4ptsuij40gvi3niiq55hjt0ov6', 1328148748, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"779c4ef2bc4b233afa2870d4fa8bf07f";}', NULL),
('511c27q65bklnjrv8um455prh6', 1328148731, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"894b3b74b383a28ca88c6f521a9ffec4";}', NULL),
('5mj3rebkkb82t6h10mgpf82l52', 1328148670, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8528dc0bc419952d645bc40120dedf93";}', NULL),
('5q6riesdksighm0r2b08ten9m6', 1328142594, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"2d42eb09e00a79b0aae528c1f6f09d81";}twitter_uid|b:0;User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"213";ulogin_id|s:5:"admin";twitter_lock|i:1;', 1),
('62ldt52k09cbgctftack25f9f7', 1328148765, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"ee4c6da07514abaed2bb5ed481236456";}', NULL),
('653lc2utv8ja3o763jp1m5bli1', 1328148644, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"5f3b826be861a877dd479457a2feb6a0";}', NULL),
('69nf7cl0p8f3a5m4mpqmeo0342', 1328146638, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('6fcquu7tm4vpd24arqgjfndur2', 1328148783, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"db5bb01e82ac60d5f81e63f70723803c";}', NULL),
('6i01gm2m98br34sa0kuj3tau81', 1328148506, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"6eb07f14a34a29ad5c8e5f143ca6d512";}', NULL),
('6j5rtorkrp2s5fnqji4mes4k75', 1328020066, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('6jjjn02k8l56bfm9verqokscb0', 1328149033, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"e10498b0d3461165c0a6169853acb727";}', NULL),
('6lskiab43fbm1h4knmbmaveq25', 1328148834, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"87d27cec0910914d1914f9390ca3813f";}', NULL),
('6v40l7u0qb9m484icqjknuub05', 1328138294, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"a33ab1f165309cf549dfb6b298555f5d";}twitter_uid|b:0;Zend_Auth|a:1:{s:7:"storage";i:1383914828;}login_id|s:3:"205";ulogin_id|s:5:"edgar";twitter_lock|i:1383914828;', 1383914828),
('74hi9a3clolhp9nlfr7r81bgg7', 1328148964, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"363772c9badb5bc0a3efbdad017cf66c";}', NULL),
('75a012teg3l4mo159mlr6dr407', 1327983703, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('766ul0pe1dvi3mhrsacf4kd7g1', 1328148843, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8e9459390efbdf58b2cf4e570bc98980";}', NULL),
('7eg3f6p0qor3fgq135n7uu7b04', 1328139226, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:4:"ENNH";i:1;}}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}ActivityFormToken|a:1:{s:5:"token";s:32:"c808b7b67ac2bfe7bddce8406bb6c133";}', NULL),
('7h2n10fl2uvmj5jlnl8o0vhrv5', 1328148523, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"4cc710b7ac5d0e8be7ae037bed44edc6";}', NULL),
('7tccfsptih1q6kgrtsu2q6icr2', 1328148739, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"34f7ac53503c0e5b5bb58300fb4a4d38";}', NULL),
('89d1eoq0jadb3809nkdad5sbs6', 1328148791, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"bca5df244fb3c762735797b5a6f7f9b2";}', NULL),
('8a1ttp3b1brbltfm4kcg88tpm5', 1328051952, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"e9130e6413be5b1b3f2d10c677096084";}twitter_uid|b:0;Network_Plugin_Signup_Network|a:2:{s:6:"active";b:0;s:4:"data";a:1:{s:10:"network_id";s:1:"8";}}User_Plugin_Signup_Account|a:2:{s:6:"active";b:0;s:4:"data";a:7:{s:9:"ulogin_id";s:5:"bbbbb";s:5:"email";s:19:"sasya8080@gmail.com";s:8:"password";s:8:"asdfasdf";s:8:"passconf";s:8:"asdfasdf";s:12:"profile_type";s:1:"1";s:8:"timezone";s:10:"US/Central";s:8:"language";s:7:"English";}}User_Plugin_Signup_Fields|a:2:{s:6:"active";b:0;s:4:"data";a:4:{i:1;s:1:"1";i:3;s:3:"s b";i:4;s:3:"s b";i:37;s:0:"";}}User_Plugin_Signup_Photo|a:6:{s:6:"active";b:0;s:4:"data";a:7:{s:8:"Filedata";s:6:"12.png";s:5:"token";s:32:"5d6b51cb2fb61a76ddebc15ca13c870d";s:11:"coordinates";s:0:"";s:11:"uploadPhoto";s:4:"true";s:8:"nextStep";s:0:"";s:4:"skip";s:0:"";s:4:"done";N;}s:11:"coordinates";s:0:"";s:8:"Filedata";a:1:{s:8:"Filedata";a:11:{s:4:"name";s:6:"12.png";s:4:"type";s:9:"image/png";s:8:"tmp_name";s:63:"/var/www/vhosts/op2vb.com/httpdocs/peak/public/temporary/12.png";s:5:"error";i:0;s:4:"size";i:3527;s:7:"options";a:3:{s:12:"ignoreNoFile";b:1;s:13:"useByteString";b:1;s:9:"magicFile";N;}s:9:"validated";b:1;s:8:"received";b:1;s:8:"filtered";b:1;s:10:"validators";a:3:{i:0;s:25:"Zend_Validate_File_Upload";i:1;s:24:"Zend_Validate_File_Count";i:2;s:28:"Zend_Validate_File_Extension";}s:11:"destination";s:56:"/var/www/vhosts/op2vb.com/httpdocs/peak/public/temporary";}}s:11:"tmp_file_id";i:80;s:4:"skip";b:1;}TemporaryProfileImg|s:46:"/peak/public/temporary/50/0050_96eb.png?c=368d";TemporaryProfileImgProfile|s:46:"/peak/public/temporary/51/0051_96eb.png?c=368d";TemporaryProfileImgSquare|s:46:"/peak/public/temporary/53/0053_4445.png?c=20e5";invite|a:1:{s:12:"signup_email";s:19:"sasya8080@gmail.com";}Zend_Auth|a:1:{s:7:"storage";i:6;}login_id|s:3:"192";ulogin_id|s:5:"odesk";twitter_lock|i:6;', 6),
('8in8pikop8sj2i3aegplv0fus3', 1328147420, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('8j16vb6vvug1k4uigicr6cl7g0', 1328066239, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1328066515;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('8qfbjal0vdhasi7rle7il6j545', 1328146619, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('9eg7j98pgrtuet9k3aog8eid05', 1328148610, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"5a1c74020bd54506140dd617e3422a11";}', NULL),
('9ljfvtai63nad24r0di2svmfh6', 1328149042, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"5ee74bb133857fa93f480141c5d36bc1";}', NULL),
('a2u8fq3o6n4mbp999013guc416', 1328055821, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"194";ulogin_id|s:5:"admin";ActivityFormToken|a:1:{s:5:"token";s:32:"32550e38fd04197af7a169531f3f04a8";}twitter_lock|i:1;twitter_uid|b:0;Network_Plugin_Signup_Network|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}Payment_Plugin_Signup_Subscription|a:2:{s:6:"active";b:1;s:4:"data";N;}', 1),
('ahkkehu4gn7ea54omm6rghlbf4', 1328148489, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"2847bfb009ed3eddc99a2e8f9ee1e723";}', NULL),
('ahlq0jdhgs4hhrd59r1tjn2qf0', 1328146701, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1328146992;}}', NULL),
('atampmledojrc85ktrpspo2ua6', 1328146745, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8456a0b4225c2f81099b14fd06af8f6c";}', NULL),
('atq9occruujilh685a0leqb012', 1328149050, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"3dc99afb4371a130f55770913ed0d047";}', NULL),
('b0526lm4emfh3p6et8i3pn3j65', 1328148601, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"f0bff232fb3bece4a3f8949defbadb98";}', NULL),
('bcmeq494a2e15gn0n2dvvjjh71', 1328110212, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}ActivityFormToken|a:1:{s:5:"token";s:32:"af2880b5876e30d8be671e00903799e8";}Zend_Auth|a:1:{s:7:"storage";i:25;}login_id|s:3:"198";ulogin_id|s:11:"bsakroberts";twitter_lock|i:25;twitter_uid|b:0;', 25),
('clcj9a2h9couh7u7hbuqj571j7', 1328146923, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"437d6cd761992093114827614d2ad119";}', NULL),
('cngpbdechjb2q7ui992vr3i5m7', 1328148955, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"e831de29a206beb104b47f8d20e14905";}', NULL),
('cqk5khrojn1i5eslkdt9offmf6', 1328147207, 86400, 'mobile|a:1:{s:6:"mobile";b:1;}', NULL),
('cu82uofis14cmdp40j9dibh2m4', 1327980693, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1327980920;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('d1grlau5htuq46j2u1j8j0q7e6', 1328148852, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"dd43223343de9d4e600926b5963abe49";}', NULL),
('d6bh7ktgsju2kr6o0manq38166', 1328148938, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"d6df080288a616f6aabefd417c2f6ec6";}', NULL),
('dgg0cot165f64922re2hmrhg00', 1328148904, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"b4e3ab5822ccddc46192848ba183cb76";}', NULL),
('djoneel2b50qggnc4nfvgisu70', 1328148973, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"164cbd6dfd31f212d00ecc585e8248e4";}', NULL),
('dprht3ne32qlnbrbf5fl5f51s3', 1328119746, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('e481jk8m08t686gqujrgmhvd36', 1328147456, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('ea6hh5cnurhdbrquji1j6h3qi6', 1328148713, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"4b48263e93cadef21ceecf92eb2c6ff6";}', NULL),
('ebo6n9bcgcvvpd4smd1u90kqu0', 1328148584, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"d8809a113589e12f7a9f11b7273f6426";}', NULL),
('eeg72nntk2n5t0ldej2t60d7b6', 1328148808, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"f30f0c7a7e30f5f97136f56315db3a06";}', NULL),
('epv7inbgpqpesh8rinl2i9v0r7', 1328148575, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"587b331c93329900441b4382ec4e7fec";}', NULL),
('f3t7mmf4og8ulivdntkvub9277', 1328143672, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:0;s:4:"data";a:7:{s:9:"ulogin_id";s:9:"Kanahele2";s:5:"email";s:25:"charla.kanahele@gmail.com";s:8:"password";s:10:"Kanahele10";s:8:"passconf";s:10:"Kanahele10";s:12:"profile_type";s:1:"4";s:8:"timezone";s:10:"US/Central";s:8:"language";s:7:"English";}}User_Plugin_Signup_Fields|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('f6bekm7l17jd7jknl499mucia3', 1328144380, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('f7jcdummsdcvhvvhdqichevti3', 1328146816, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"954ac869f2630d5439898a4b69b0106a";}', NULL),
('fqob28lj3pi031ptpgv5mb2dh1', 1328142747, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"b11b6488ca7be1279e110a802e4fe589";}twitter_uid|b:0;', 1829893787),
('frnppnpgsmmqvtm0v25citud76', 1328066662, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1328066952;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('g91f7tnqonagkq1283ctauno15', 1328148886, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"46585849881ca3c403a32a294dfe65e9";}', NULL),
('gaj7japkgcc8l9mit15ptqrr40', 1328148549, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"176a9c7fe3134af28ba87db644065366";}', NULL),
('gda1c7kmue0t27ptbbqoorh577', 1328148705, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"a290f6358fc0601cc27f5efad90d1df5";}', NULL),
('gr6pnsgnov1tg9uvafsh1v8786', 1328148636, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8fafa9da75068cadcfe179db6115d4fc";}', NULL),
('h8b2noog9m36e8r6r82k49el36', 1328140440, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Zend_Auth|a:1:{s:7:"storage";i:6;}login_id|s:3:"207";ulogin_id|s:5:"odesk";ActivityFormToken|a:1:{s:5:"token";s:32:"54c2c127a7e113050e723b157ed2fc74";}twitter_lock|i:6;twitter_uid|b:0;', 6),
('h8o6thtjhusc38ebiof6n3mvb3', 1328149085, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"21d77b2716aa77aad1efc0ce99489d20";}', NULL),
('hgugqpqmsf84k5f3ol6lg8uhe6', 1328148774, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"988bc4621e7433214595d4f148c9e646";}', NULL),
('hm2tce5utpt1i58psh0g3tlvq7', 1328147492, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('ie5stunimbg80e0nfbo4n131v4', 1328147528, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('in44hdq46cagbpkg22rqjl06u0', 1328149007, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"567e4089c058f4d8f740ab4648fd7933";}', NULL),
('inl513dgrlu1lb0mupevovtdu6', 1328147065, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"5b881a4cf4989b7778ffe48939609e95";}', NULL),
('itvrl0eipb4o68n9e7m5rukh81', 1328066746, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1328066931;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('iv0dqk8qom89m0hnp9rdump8r3', 1328066610, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('j1dg4gdammihdm1ej7939vpji6', 1328148722, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"6326595591bf89ddc82a4743783e1571";}', NULL),
('j297oj2oi7fu76p419u9r3mbi5', 1328039952, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"3729fcc3f14930fee04b0b56dbfc03c8";}twitter_uid|b:0;__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:4:"ENNH";i:1;}}Payment_Plugin_Signup_Subscription|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}Zend_Auth|a:1:{s:7:"storage";i:6;}login_id|s:3:"189";ulogin_id|s:5:"odesk";twitter_lock|i:6;Network_Plugin_Signup_Network|a:2:{s:6:"active";b:1;s:4:"data";N;}', 6),
('j4r9gt9l5m2ilkss8mklcrtvl3', 1328148878, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8ad7766eefd174a2f9da32baa09664ad";}', NULL),
('j79rt66b35plpm7l1a2mgtfs91', 1328140972, 86400, 'mobile|a:1:{s:6:"mobile";b:1;}', NULL),
('j7fu30q0579u7heo7jsg5hfkd4', 1328067545, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"53cf38e59159225b286091cd4fa00fb4";}', NULL),
('jtd6rb49hqdl34j3n92g29g5c1', 1328148471, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"26522cd6bd277733248fab2fdda97e01";}', NULL),
('k744ch9inm789eve6lqlk3tje7', 1328148860, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"94575d67c546d7432c39f905189cd4df";}', NULL),
('katq46k97dvng8tgh6n0c8j2d4', 1328148975, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Zend_Auth|a:1:{s:7:"storage";i:1383914828;}login_id|s:3:"214";ulogin_id|s:5:"edgar";ActivityFormToken|a:1:{s:5:"token";s:32:"b1f31fda1dfdd8259a19b46d82ff6328";}twitter_lock|i:1383914828;twitter_uid|b:0;', 1383914828),
('ke3f7kb3mtarud6cgiba9ncc97', 1328147100, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"2d3adf3d7599d50a7e0492cd3570c3a1";}', NULL),
('kr86gtqkmuo8naunmt6ro8gq95', 1328149094, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('kt559osgck00rib3s6i0eqfcl5', 1328149059, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('l27uf8gicb579bc9gc81mmj8t5', 1328148592, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"1ddcebd78bc7a27f7b858305567ef33b";}', NULL),
('l4b3te6iru7pa0l5k7u0t4o7o3', 1328101369, 86400, 'mobile|a:1:{s:6:"mobile";b:1;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:0;s:4:"data";a:7:{s:9:"ulogin_id";s:5:"Emily";s:5:"email";s:24:"Christamalcolm@yahoo.com";s:8:"password";s:9:"emily1998";s:8:"passconf";s:9:"emily1998";s:12:"profile_type";s:1:"4";s:8:"timezone";s:10:"US/Central";s:8:"language";s:7:"English";}}User_Plugin_Signup_Fields|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('l85s5l6oagrt0as43l5u8ihk14', 1328149032, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Zend_Auth|a:1:{s:7:"storage";i:6;}login_id|s:3:"222";ulogin_id|s:5:"odesk";ActivityFormToken|a:1:{s:5:"token";s:32:"5e586cd56458d5720f9a4a8837db9cff";}twitter_lock|i:6;twitter_uid|b:0;', 6),
('lcjp7drtop66o9n7fbbm9525h6', 1328148463, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"42f68242b94c066c11244accb8ce9014";}', NULL),
('le45otp6m6d9khfg0894cs83u1', 1328148653, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"18588e5f155b65ac534f84d6a56cb849";}', NULL),
('lfebg7d6h3pf601s3tqtjehej2', 1328148679, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"54b2be932d1ee6d68126d29818f866c6";}', NULL),
('ln53r585n9n1dcip4hbu8q1rs0', 1328141173, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Zend_Auth|a:1:{s:7:"storage";i:53;}login_id|s:3:"209";ulogin_id|s:11:"randydecker";ActivityFormToken|a:1:{s:5:"token";s:32:"d3ae40f90c8cbb32d921e8510a6ea077";}twitter_lock|i:53;twitter_uid|b:0;', 53),
('lnfep4u5f77ehv8nnvvdqdksf6', 1328139919, 86400, 'mobile|a:1:{s:6:"mobile";b:1;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('lt3fdcrf7gbat2lrv7ahmfgbc6', 1328146994, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"3e8db98149478c9c6a1cc5c37fe9915d";}', NULL),
('ltkn30omp21oj2mccfnnb2r1l5', 1328149025, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"607f82d48ee5bc3cf517d34168bd963c";}', NULL),
('m39mm114hudobkqf7atfati7e5', 1328147243, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('m8j43psp2il5r1uo5nnqur30d7', 1328148696, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"c31a42d3ae1bfdf42770c35494ee8e32";}', NULL),
('mc4ikka89l214m1ioa3qgc42d6', 1328148869, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"f6892e844f248d038524f83588449f45";}', NULL),
('mjo0s1lciv6fv5oqpjfb9cfa51', 1327987730, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1327987981;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('mlgtpoiadf07q10vg3emc24ut5', 1328147314, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('nh90spu56epi8mk3qqd0728n76', 1328148757, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"a42d09e239cd0a0cb1abee7b7dfd5dcd";}', NULL),
('nn8d6ij81fjqk784a611sreoi4', 1328148515, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"10fb34932d0fa1bb773c46f48c0f3b9e";}', NULL),
('nphsd91pc0khua8qol7d09e566', 1328149016, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8579af63872139fc39298dd830bf2906";}', NULL),
('nqd0cj1ljg6005prkjb2fnu5f7', 1328063416, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('o6ugv6inr2avi5ka0u1qk32ip1', 1328148826, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"d026b1caf8a0d4435c28e09c72c14657";}', NULL),
('of52727h8nckm773egc5suaic3', 1328140597, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1328140793;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('ovoj1rqhbbl0ofm1f1nge962t3', 1328148895, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"9e2ab30655b3fb61eb4de6a026354646";}', NULL),
('p0ifgml9j1iea5lr0evfmmaqe4', 1328034127, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"a9b169257eec0f2f055a11948a6931f6";}twitter_uid|b:0;Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"182";ulogin_id|s:5:"admin";twitter_lock|i:1;', 1),
('pj0rkkvbrvdt40aq2dss5fdb43', 1328140051, 86400, 'mobile|a:1:{s:6:"mobile";b:1;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}Zend_Auth|a:1:{s:7:"storage";i:23;}login_id|s:3:"208";ulogin_id|s:5:"kmace";ActivityFormToken|a:1:{s:5:"token";s:32:"6db54831cc97fc28114b543368d9009f";}twitter_lock|i:23;twitter_uid|b:0;', 23),
('q2ffl5bhj0n41kmv595lsossc5', 1328149067, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('q6fm58fbap5rf23qbu0mdlcb75', 1328142177, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('q9d8hm15v013g9a593tj2m0kc0', 1328143235, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:0;s:4:"data";a:7:{s:9:"ulogin_id";s:11:"cordell2012";s:5:"email";s:21:"cordell_nfl@yahoo.com";s:8:"password";s:8:"chloe6vb";s:8:"passconf";s:8:"chloe6vb";s:12:"profile_type";s:1:"4";s:8:"timezone";s:10:"US/Central";s:8:"language";s:7:"English";}}User_Plugin_Signup_Fields|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('q9rrinvngf5oqeql0qdvu6avf4', 1328021022, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"177";ulogin_id|s:5:"admin";ActivityFormToken|a:1:{s:5:"token";s:32:"713c47697301f63d5a62d7a270238a6b";}twitter_lock|i:1;twitter_uid|b:0;', 1),
('qgq8un1k3ltm5bjqs01t1oq7b3', 1327984689, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}Zend_Auth|a:1:{s:7:"storage";i:52;}login_id|s:3:"174";ulogin_id|s:8:"willethr";ActivityFormToken|a:1:{s:5:"token";s:32:"e2843806781f4b41f69093367b528d4d";}twitter_lock|i:52;twitter_uid|b:0;', 52),
('qhqchshc4qb5c8od758loti081', 1328147029, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('qkv7j1bu6cm2qsfnlmfc7g0tt0', 1328105567, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"195";ulogin_id|s:5:"admin";ActivityFormToken|a:1:{s:5:"token";s:32:"4c781a5793ae0494a181e53af13eba0e";}twitter_lock|i:1;twitter_uid|b:0;', 1),
('qn36cn0ii142rsfkmbjsku5tt3', 1328148558, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"2c67e638601159af6a30cf41f8cb32c6";}', NULL),
('qqv430l03pnsrtru2sidosm125', 1328112109, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"5e5431f90485c02584a6a54bcd4f9c8e";}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"199";ulogin_id|s:5:"admin";twitter_lock|i:1;twitter_uid|b:0;', 1),
('r8cq7h20kkpbc88sngtoamqiu5', 1328147349, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('rbth5go791615cq8uktrjcqr24', 1328146780, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"92ec8ec2356aee79f503d418f7d3cd29";}', NULL),
('rcb2gqi7jn7fv8hhi93nkkdoq6', 1328149049, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('s0hgii9mi56t5f1phqa4p7ej37', 1328148947, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"3b223184c907bc1a0616f9217601b818";}', NULL),
('sac9j5co174b9fhmnr82i3e7u6', 1328142083, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:33:"Zend_Form_Element_Hash_salt_token";a:1:{s:3:"ENT";i:1328142235;}}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}', NULL),
('shisj8utm9nvfhn0m4dn9l7os7', 1328146674, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('sioqb8v4c0k5hqbsj9rnib05j1', 1328148662, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"067a1822f7ea4a1f5b807eb6a4a000e2";}', NULL),
('svc8kpcrkrj5g5li6t3gps0n06', 1328148203, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"711b1f8e1d4fbc6d95573772a548eab4";}twitter_uid|b:0;User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}Zend_Auth|a:1:{s:7:"storage";i:1;}login_id|s:3:"224";ulogin_id|s:5:"admin";twitter_lock|i:1;', 1),
('t97t1q02agbmu0p9pomgottrc5', 1328148912, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"67772b64b64be66bd95cbf82d0ff220a";}', NULL),
('tk5358ftfg9dva55tvov8ornj2', 1328148990, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"3d8587463af2784b62d1632fbdfd5370";}', NULL),
('tuk0jncilhlt018mc434j1elb1', 1328147136, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}__ZF|a:1:{s:50:"Zend_Form_Captcha_84326eedc74926337b9283afe678faf3";a:2:{s:4:"ENNH";i:1;s:3:"ENT";i:1328147435;}}Zend_Form_Captcha_84326eedc74926337b9283afe678faf3|a:1:{s:4:"word";s:6:"4ix3m5";}', NULL),
('ul6sskt69qt7vahqenbtd6cje1', 1328148497, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"1b27609344ccc29f6f7ce93db5981d99";}', NULL),
('v5e48nk8vup996dj5b159vfh31', 1328148618, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"562f1c5ad18948dcfc1e8d6e331c638a";}', NULL),
('v623dlonp6g6n5i4up9jcgldm5', 1328148540, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8e35d79d7705409ff0ba65d2e89c5bfc";}', NULL),
('vconmv6midjlhnmck6jdtb6c22', 1328138847, 86400, 'mobile|a:1:{s:6:"mobile";b:1;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL),
('ve2c0gt28pg1t3si02m6n6a2m0', 1328147385, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}', NULL),
('vhi3bnl2sh1qtcq8r6o48jj2i7', 1328148981, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"8c36bcf3aed5477c82a9e4b10027fdde";}', NULL),
('vj2dduffrqbgbn7holgeai6u02', 1328148921, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"c9dc55e9876383f0333db1321161fe9b";}', NULL),
('vkbsfa87ojokojmvhn80m6up67', 1328148800, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"18aa64b7eaf934925feaeab3a8f27777";}', NULL),
('vm4p4jl2p08n1es5gomv9lmct5', 1328148817, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"d66c711d427ef29372c7f68da934b441";}', NULL),
('vsd3eaj2og2rlv1c3k7cue5hm3', 1328146887, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"d7d16487a47c337b407fde8ff1eaca67";}', NULL),
('vtbpk516kga38kehs0f2ksnd74', 1328148566, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"14c8f1dcc8c9d4fab0cdb95669a2116d";}', NULL),
('vurkcq8o562v369uv0iqqekap3', 1328143351, 86400, 'mobile|a:1:{s:6:"mobile";b:0;}ActivityFormToken|a:1:{s:5:"token";s:32:"0c966f6a3ad23b49ddd6303f6ee5a638";}Signup_Confirm|a:3:{s:8:"approved";i:0;s:8:"verified";i:0;s:7:"enabled";i:0;}User_Plugin_Signup_Account|a:2:{s:6:"active";b:1;s:4:"data";N;}User_Plugin_Signup_Fields|a:1:{s:6:"active";b:1;}User_Plugin_Signup_Photo|a:1:{s:6:"active";b:1;}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_settings`
--

CREATE TABLE IF NOT EXISTS `engine4_core_settings` (
  `name` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `value` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_settings`
--

INSERT INTO `engine4_core_settings` (`name`, `value`) VALUES
('activity.content', 'networks'),
('activity.disallowed', 'N'),
('activity.filter', '1'),
('activity.length', '15'),
('activity.liveupdate', '120000'),
('activity.publish', '0'),
('activity.userdelete', '1'),
('activity.userlength', '5'),
('advgroup.pollcanchangevote', '1'),
('advgroup.pollmaxoptions', '15'),
('advgroup.pollshowpiechart', '0'),
('core.admin.mode', 'none'),
('core.admin.password', ''),
('core.admin.reauthenticate', '0'),
('core.admin.timeout', '600'),
('core.analytics.code', 'UA-28815437-1'),
('core.doctype', 'XHTML1_STRICT'),
('core.facebook.enable', 'publish'),
('core.facebook.key', ''),
('core.facebook.secret', ''),
('core.general.analytics', 'UA-28815437-1'),
('core.general.browse', '1'),
('core.general.commenthtml', ''),
('core.general.includes', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-28815437-1'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>'),
('core.general.notificationupdate', '120000'),
('core.general.portal', '0'),
('core.general.profile', '1'),
('core.general.quota', '0'),
('core.general.search', '1'),
('core.general.site.description', ''),
('core.general.site.keywords', ''),
('core.general.site.title', 'Peak'),
('core.general.staticBaseUrl', ''),
('core.license.email', 'email@domain.com'),
('core.license.key', '8290-1210-8538-0960'),
('core.license.statistics', '0'),
('core.locale.locale', 'auto'),
('core.locale.timezone', 'US/Central'),
('core.log.adapter', 'file'),
('core.mail.contact', 'rdecker@op2vb.com'),
('core.mail.count', '25'),
('core.mail.enabled', '1'),
('core.mail.from', 'bounce@op2vb.com'),
('core.mail.name', 'Peak'),
('core.mail.queueing', '1'),
('core.secret', '2832d5616db3c98d8acd96c5191e2410ad35fa01'),
('core.site.counter', '27'),
('core.site.creation', '2012-01-04 22:17:05'),
('core.site.title', 'Social Network'),
('core.spam.censor', ''),
('core.spam.comment', '0'),
('core.spam.commenthtml', ''),
('core.spam.contact', '1'),
('core.spam.invite', '0'),
('core.spam.ipbans', ''),
('core.spam.login', '0'),
('core.spam.signup', '0'),
('core.static.baseurl', ''),
('core.tasks.count', '1'),
('core.tasks.interval', '60'),
('core.tasks.jobs', '3'),
('core.tasks.key', '0d2b666e'),
('core.tasks.last', '1328149085'),
('core.tasks.mode', 'curl'),
('core.tasks.pid', ''),
('core.tasks.processes', '2'),
('core.tasks.time', '120'),
('core.tasks.timeout', '900'),
('core.thumbnails.icon.height', '48'),
('core.thumbnails.icon.mode', 'crop'),
('core.thumbnails.icon.width', '48'),
('core.thumbnails.main.height', '720'),
('core.thumbnails.main.mode', 'resize'),
('core.thumbnails.main.width', '720'),
('core.thumbnails.normal.height', '160'),
('core.thumbnails.normal.mode', 'resize'),
('core.thumbnails.normal.width', '140'),
('core.thumbnails.profile.height', '400'),
('core.thumbnails.profile.mode', 'resize'),
('core.thumbnails.profile.width', '200'),
('core.twitter.enable', 'none'),
('core.twitter.key', ''),
('core.twitter.secret', ''),
('invite.allowCustomMessage', '1'),
('invite.fromEmail', ''),
('invite.fromName', ''),
('invite.max', '10'),
('invite.message', 'You are being invited to join our social network.'),
('invite.subject', 'Join Us'),
('payment.benefit', 'all'),
('payment.currency', 'USD'),
('payment.secret', '5fd5a42191564756f0545e7a056ed571'),
('storage.service.mirrored.counter', '0'),
('storage.service.mirrored.index', '0'),
('storage.service.roundrobin.counter', '0'),
('user.friends.direction', '0'),
('user.friends.eligible', '0'),
('user.friends.lists', '0'),
('user.friends.verification', '1'),
('user.signup.approve', '0'),
('user.signup.checkemail', '0'),
('user.signup.inviteonly', '0'),
('user.signup.random', '0'),
('user.signup.terms', '0'),
('user.signup.username', '0'),
('user.signup.verifyemail', '2');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_statistics`
--

CREATE TABLE IF NOT EXISTS `engine4_core_statistics` (
  `type` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `value` int(11) NOT NULL default '0',
  PRIMARY KEY  (`type`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_statistics`
--

INSERT INTO `engine4_core_statistics` (`type`, `date`, `value`) VALUES
('core.emails', '2012-01-04 23:00:00', 3),
('core.emails', '2012-01-05 00:00:00', 20),
('core.emails', '2012-01-31 16:00:00', 1),
('core.emails', '2012-01-31 18:00:00', 4),
('core.emails', '2012-01-31 19:00:00', 4),
('core.emails', '2012-01-31 20:00:00', 12),
('core.emails', '2012-01-31 21:00:00', 6),
('core.emails', '2012-01-31 22:00:00', 1),
('core.emails', '2012-02-01 03:00:00', 5),
('core.emails', '2012-02-01 22:00:00', 2),
('core.emails', '2012-02-01 23:00:00', 1),
('core.emails', '2012-02-02 00:00:00', 2),
('core.emails', '2012-02-02 01:00:00', 3),
('core.views', '2012-01-04 22:00:00', 37),
('core.views', '2012-01-04 23:00:00', 82),
('core.views', '2012-01-05 00:00:00', 50),
('core.views', '2012-01-05 01:00:00', 13),
('core.views', '2012-01-11 20:00:00', 8),
('core.views', '2012-01-11 21:00:00', 3),
('core.views', '2012-01-11 22:00:00', 23),
('core.views', '2012-01-11 23:00:00', 5),
('core.views', '2012-01-12 00:00:00', 4),
('core.views', '2012-01-12 19:00:00', 3),
('core.views', '2012-01-12 20:00:00', 3),
('core.views', '2012-01-13 01:00:00', 3),
('core.views', '2012-01-13 02:00:00', 1),
('core.views', '2012-01-18 00:00:00', 15),
('core.views', '2012-01-18 01:00:00', 10),
('core.views', '2012-01-18 02:00:00', 2),
('core.views', '2012-01-18 03:00:00', 13),
('core.views', '2012-01-18 07:00:00', 2),
('core.views', '2012-01-18 10:00:00', 5),
('core.views', '2012-01-18 14:00:00', 21),
('core.views', '2012-01-18 18:00:00', 4),
('core.views', '2012-01-18 23:00:00', 13),
('core.views', '2012-01-19 00:00:00', 10),
('core.views', '2012-01-19 19:00:00', 3),
('core.views', '2012-01-20 16:00:00', 25),
('core.views', '2012-01-20 21:00:00', 3),
('core.views', '2012-01-21 16:00:00', 5),
('core.views', '2012-01-21 17:00:00', 1),
('core.views', '2012-01-22 16:00:00', 30),
('core.views', '2012-01-23 05:00:00', 6),
('core.views', '2012-01-23 22:00:00', 8),
('core.views', '2012-01-23 23:00:00', 5),
('core.views', '2012-01-24 01:00:00', 3),
('core.views', '2012-01-24 02:00:00', 58),
('core.views', '2012-01-24 18:00:00', 51),
('core.views', '2012-01-24 19:00:00', 26),
('core.views', '2012-01-24 20:00:00', 3),
('core.views', '2012-01-24 22:00:00', 17),
('core.views', '2012-01-25 14:00:00', 3),
('core.views', '2012-01-26 04:00:00', 60),
('core.views', '2012-01-26 12:00:00', 3),
('core.views', '2012-01-26 13:00:00', 17),
('core.views', '2012-01-26 14:00:00', 4),
('core.views', '2012-01-26 15:00:00', 2),
('core.views', '2012-01-26 16:00:00', 11),
('core.views', '2012-01-26 17:00:00', 25),
('core.views', '2012-01-26 19:00:00', 11),
('core.views', '2012-01-26 20:00:00', 3),
('core.views', '2012-01-26 21:00:00', 6),
('core.views', '2012-01-26 22:00:00', 9),
('core.views', '2012-01-27 00:00:00', 14),
('core.views', '2012-01-27 02:00:00', 11),
('core.views', '2012-01-27 03:00:00', 5),
('core.views', '2012-01-27 04:00:00', 10),
('core.views', '2012-01-27 05:00:00', 16),
('core.views', '2012-01-27 06:00:00', 3),
('core.views', '2012-01-27 12:00:00', 20),
('core.views', '2012-01-27 13:00:00', 36),
('core.views', '2012-01-27 14:00:00', 22),
('core.views', '2012-01-27 15:00:00', 36),
('core.views', '2012-01-27 16:00:00', 46),
('core.views', '2012-01-27 17:00:00', 31),
('core.views', '2012-01-27 18:00:00', 67),
('core.views', '2012-01-27 19:00:00', 23),
('core.views', '2012-01-27 20:00:00', 6),
('core.views', '2012-01-27 21:00:00', 5),
('core.views', '2012-01-27 22:00:00', 41),
('core.views', '2012-01-27 23:00:00', 9),
('core.views', '2012-01-28 00:00:00', 25),
('core.views', '2012-01-28 01:00:00', 26),
('core.views', '2012-01-28 02:00:00', 11),
('core.views', '2012-01-28 03:00:00', 59),
('core.views', '2012-01-28 04:00:00', 2),
('core.views', '2012-01-28 05:00:00', 20),
('core.views', '2012-01-28 06:00:00', 9),
('core.views', '2012-01-28 12:00:00', 2),
('core.views', '2012-01-28 13:00:00', 8),
('core.views', '2012-01-28 14:00:00', 12),
('core.views', '2012-01-28 16:00:00', 12),
('core.views', '2012-01-28 17:00:00', 20),
('core.views', '2012-01-28 18:00:00', 17),
('core.views', '2012-01-28 19:00:00', 3),
('core.views', '2012-01-28 22:00:00', 12),
('core.views', '2012-01-28 23:00:00', 1),
('core.views', '2012-01-29 02:00:00', 3),
('core.views', '2012-01-29 03:00:00', 7),
('core.views', '2012-01-29 05:00:00', 2),
('core.views', '2012-01-29 14:00:00', 15),
('core.views', '2012-01-29 15:00:00', 7),
('core.views', '2012-01-29 16:00:00', 3),
('core.views', '2012-01-29 17:00:00', 1),
('core.views', '2012-01-29 18:00:00', 10),
('core.views', '2012-01-29 20:00:00', 22),
('core.views', '2012-01-29 22:00:00', 1),
('core.views', '2012-01-29 23:00:00', 13),
('core.views', '2012-01-30 00:00:00', 10),
('core.views', '2012-01-30 02:00:00', 9),
('core.views', '2012-01-30 03:00:00', 48),
('core.views', '2012-01-30 04:00:00', 14),
('core.views', '2012-01-30 13:00:00', 11),
('core.views', '2012-01-30 14:00:00', 17),
('core.views', '2012-01-30 15:00:00', 17),
('core.views', '2012-01-30 17:00:00', 22),
('core.views', '2012-01-30 18:00:00', 17),
('core.views', '2012-01-30 19:00:00', 6),
('core.views', '2012-01-30 20:00:00', 11),
('core.views', '2012-01-30 21:00:00', 16),
('core.views', '2012-01-30 22:00:00', 10),
('core.views', '2012-01-30 23:00:00', 4),
('core.views', '2012-01-31 00:00:00', 16),
('core.views', '2012-01-31 02:00:00', 21),
('core.views', '2012-01-31 03:00:00', 12),
('core.views', '2012-01-31 04:00:00', 31),
('core.views', '2012-01-31 05:00:00', 11),
('core.views', '2012-01-31 13:00:00', 4),
('core.views', '2012-01-31 14:00:00', 17),
('core.views', '2012-01-31 15:00:00', 19),
('core.views', '2012-01-31 16:00:00', 8),
('core.views', '2012-01-31 17:00:00', 7),
('core.views', '2012-01-31 18:00:00', 77),
('core.views', '2012-01-31 19:00:00', 37),
('core.views', '2012-01-31 20:00:00', 40),
('core.views', '2012-01-31 21:00:00', 62),
('core.views', '2012-01-31 22:00:00', 55),
('core.views', '2012-01-31 23:00:00', 4),
('core.views', '2012-02-01 00:00:00', 3),
('core.views', '2012-02-01 02:00:00', 22),
('core.views', '2012-02-01 03:00:00', 67),
('core.views', '2012-02-01 12:00:00', 2),
('core.views', '2012-02-01 13:00:00', 3),
('core.views', '2012-02-01 15:00:00', 47),
('core.views', '2012-02-01 18:00:00', 3),
('core.views', '2012-02-01 22:00:00', 114),
('core.views', '2012-02-01 23:00:00', 116),
('core.views', '2012-02-02 00:00:00', 114),
('core.views', '2012-02-02 01:00:00', 203),
('core.views', '2012-02-02 02:00:00', 91),
('messages.creations', '2012-01-31 19:00:00', 1),
('messages.creations', '2012-01-31 20:00:00', 2),
('messages.creations', '2012-01-31 21:00:00', 4),
('messages.creations', '2012-02-02 01:00:00', 11),
('user.creations', '2012-01-04 23:00:00', 1),
('user.creations', '2012-01-05 00:00:00', 3),
('user.creations', '2012-01-11 22:00:00', 1),
('user.creations', '2012-01-24 02:00:00', 3),
('user.creations', '2012-01-24 22:00:00', 1),
('user.creations', '2012-01-26 04:00:00', 4),
('user.creations', '2012-01-26 13:00:00', 1),
('user.creations', '2012-01-26 14:00:00', 1),
('user.creations', '2012-01-26 16:00:00', 1),
('user.creations', '2012-01-26 17:00:00', 2),
('user.creations', '2012-01-26 19:00:00', 1),
('user.creations', '2012-01-26 21:00:00', 1),
('user.creations', '2012-01-27 00:00:00', 1),
('user.creations', '2012-01-27 02:00:00', 1),
('user.creations', '2012-01-27 04:00:00', 2),
('user.creations', '2012-01-27 13:00:00', 2),
('user.creations', '2012-01-27 14:00:00', 3),
('user.creations', '2012-01-27 15:00:00', 4),
('user.creations', '2012-01-27 16:00:00', 4),
('user.creations', '2012-01-27 17:00:00', 2),
('user.creations', '2012-01-27 18:00:00', 4),
('user.creations', '2012-01-27 19:00:00', 2),
('user.creations', '2012-01-27 22:00:00', 4),
('user.creations', '2012-01-28 00:00:00', 1),
('user.creations', '2012-01-28 01:00:00', 3),
('user.creations', '2012-01-28 02:00:00', 1),
('user.creations', '2012-01-28 03:00:00', 5),
('user.creations', '2012-01-28 05:00:00', 2),
('user.creations', '2012-01-28 06:00:00', 1),
('user.creations', '2012-01-28 14:00:00', 1),
('user.creations', '2012-01-28 16:00:00', 1),
('user.creations', '2012-01-28 17:00:00', 2),
('user.creations', '2012-01-28 18:00:00', 1),
('user.creations', '2012-01-29 03:00:00', 1),
('user.creations', '2012-01-29 17:00:00', 1),
('user.creations', '2012-01-29 18:00:00', 1),
('user.creations', '2012-01-29 20:00:00', 3),
('user.creations', '2012-01-30 00:00:00', 1),
('user.creations', '2012-01-30 03:00:00', 2),
('user.creations', '2012-01-30 04:00:00', 1),
('user.creations', '2012-01-30 13:00:00', 2),
('user.creations', '2012-01-30 14:00:00', 1),
('user.creations', '2012-01-30 15:00:00', 2),
('user.creations', '2012-01-30 17:00:00', 1),
('user.creations', '2012-01-30 18:00:00', 1),
('user.creations', '2012-01-30 19:00:00', 1),
('user.creations', '2012-01-30 20:00:00', 1),
('user.creations', '2012-01-30 21:00:00', 3),
('user.creations', '2012-01-30 22:00:00', 1),
('user.creations', '2012-01-31 00:00:00', 1),
('user.creations', '2012-01-31 03:00:00', 2),
('user.creations', '2012-01-31 05:00:00', 1),
('user.creations', '2012-01-31 14:00:00', 1),
('user.creations', '2012-01-31 22:00:00', 1),
('user.creations', '2012-02-01 03:00:00', 5),
('user.creations', '2012-02-01 22:00:00', 1),
('user.creations', '2012-02-01 23:00:00', 1),
('user.creations', '2012-02-02 00:00:00', 2),
('user.creations', '2012-02-02 01:00:00', 2),
('user.logins', '2012-01-04 23:00:00', 5),
('user.logins', '2012-01-05 00:00:00', 2),
('user.logins', '2012-01-11 20:00:00', 1),
('user.logins', '2012-01-11 22:00:00', 2),
('user.logins', '2012-01-11 23:00:00', 1),
('user.logins', '2012-01-12 00:00:00', 1),
('user.logins', '2012-01-12 19:00:00', 1),
('user.logins', '2012-01-13 01:00:00', 1),
('user.logins', '2012-01-18 00:00:00', 3),
('user.logins', '2012-01-18 01:00:00', 1),
('user.logins', '2012-01-18 14:00:00', 2),
('user.logins', '2012-01-18 18:00:00', 1),
('user.logins', '2012-01-18 23:00:00', 2),
('user.logins', '2012-01-20 21:00:00', 1),
('user.logins', '2012-01-21 17:00:00', 1),
('user.logins', '2012-01-22 16:00:00', 2),
('user.logins', '2012-01-23 05:00:00', 1),
('user.logins', '2012-01-23 23:00:00', 1),
('user.logins', '2012-01-24 01:00:00', 1),
('user.logins', '2012-01-24 02:00:00', 3),
('user.logins', '2012-01-24 18:00:00', 1),
('user.logins', '2012-01-24 19:00:00', 1),
('user.logins', '2012-01-24 20:00:00', 1),
('user.logins', '2012-01-24 22:00:00', 1),
('user.logins', '2012-01-26 12:00:00', 1),
('user.logins', '2012-01-26 13:00:00', 1),
('user.logins', '2012-01-27 17:00:00', 1),
('user.logins', '2012-01-27 18:00:00', 2),
('user.logins', '2012-01-30 02:00:00', 2),
('user.logins', '2012-01-30 03:00:00', 1),
('user.logins', '2012-01-30 14:00:00', 1),
('user.logins', '2012-01-30 17:00:00', 1),
('user.logins', '2012-01-31 02:00:00', 1),
('user.logins', '2012-01-31 04:00:00', 1),
('user.logins', '2012-01-31 14:00:00', 1),
('user.logins', '2012-01-31 15:00:00', 3),
('user.logins', '2012-01-31 16:00:00', 1),
('user.logins', '2012-01-31 17:00:00', 1),
('user.logins', '2012-01-31 18:00:00', 3),
('user.logins', '2012-01-31 19:00:00', 3),
('user.logins', '2012-01-31 21:00:00', 1),
('user.logins', '2012-01-31 22:00:00', 3),
('user.logins', '2012-02-01 00:00:00', 1),
('user.logins', '2012-02-01 02:00:00', 2),
('user.logins', '2012-02-01 03:00:00', 1),
('user.logins', '2012-02-01 15:00:00', 2),
('user.logins', '2012-02-01 22:00:00', 3),
('user.logins', '2012-02-01 23:00:00', 4),
('user.logins', '2012-02-02 00:00:00', 9),
('user.logins', '2012-02-02 01:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_status`
--

CREATE TABLE IF NOT EXISTS `engine4_core_status` (
  `status_id` int(11) unsigned NOT NULL auto_increment,
  `resource_type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_status`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_styles`
--

CREATE TABLE IF NOT EXISTS `engine4_core_styles` (
  `type` varchar(32) character set latin1 collate latin1_general_ci NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `style` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_core_styles`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_tagmaps`
--

CREATE TABLE IF NOT EXISTS `engine4_core_tagmaps` (
  `tagmap_id` int(11) unsigned NOT NULL auto_increment,
  `resource_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `tagger_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `tagger_id` int(11) unsigned NOT NULL,
  `tag_type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  `creation_date` datetime default NULL,
  `extra` text collate utf8_unicode_ci,
  PRIMARY KEY  (`tagmap_id`),
  KEY `resource_type` (`resource_type`,`resource_id`),
  KEY `tagger_type` (`tagger_type`,`tagger_id`),
  KEY `tag_type` (`tag_type`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_tagmaps`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_tags`
--

CREATE TABLE IF NOT EXISTS `engine4_core_tags` (
  `tag_id` int(11) unsigned NOT NULL auto_increment,
  `text` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`tag_id`),
  UNIQUE KEY `text` (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_core_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_tasks`
--

CREATE TABLE IF NOT EXISTS `engine4_core_tasks` (
  `task_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `module` varchar(128) collate utf8_unicode_ci NOT NULL default '',
  `plugin` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `timeout` int(11) unsigned NOT NULL default '60',
  `processes` smallint(3) unsigned NOT NULL default '1',
  `semaphore` smallint(3) NOT NULL default '0',
  `started_last` int(11) NOT NULL default '0',
  `started_count` int(11) unsigned NOT NULL default '0',
  `completed_last` int(11) NOT NULL default '0',
  `completed_count` int(11) unsigned NOT NULL default '0',
  `failure_last` int(11) NOT NULL default '0',
  `failure_count` int(11) unsigned NOT NULL default '0',
  `success_last` int(11) NOT NULL default '0',
  `success_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`task_id`),
  UNIQUE KEY `plugin` (`plugin`),
  KEY `module` (`module`),
  KEY `started_last` (`started_last`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `engine4_core_tasks`
--

INSERT INTO `engine4_core_tasks` (`task_id`, `title`, `module`, `plugin`, `timeout`, `processes`, `semaphore`, `started_last`, `started_count`, `completed_last`, `completed_count`, `failure_last`, `failure_count`, `success_last`, `success_count`) VALUES
(1, 'Job Queue', 'core', 'Core_Plugin_Task_Jobs', 5, 1, 0, 1325728049, 85, 1325728049, 85, 0, 0, 1325728049, 85),
(2, 'Background Mailer', 'core', 'Core_Plugin_Task_Mail', 15, 1, 0, 1325728049, 85, 1325728049, 85, 0, 0, 1325728049, 85),
(3, 'Cache Prefetch', 'core', 'Core_Plugin_Task_Prefetch', 300, 1, 0, 1325727985, 24, 1325727985, 24, 0, 0, 1325727985, 24),
(4, 'Statistics', 'core', 'Core_Plugin_Task_Statistics', 43200, 1, 0, 1325716553, 1, 1325716553, 1, 0, 0, 1325716553, 1),
(5, 'Log Rotation', 'core', 'Core_Plugin_Task_LogRotation', 7200, 1, 0, 1325723864, 2, 1325723864, 2, 0, 0, 1325723864, 2),
(6, 'Member Data Maintenance', 'user', 'User_Plugin_Task_Cleanup', 60, 1, 0, 1325728049, 50, 1325728049, 50, 0, 0, 1325728049, 50),
(7, 'Payment Maintenance', 'user', 'Payment_Plugin_Task_Cleanup', 43200, 1, 0, 1325717131, 1, 1325717131, 1, 0, 0, 1325717131, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_core_themes`
--

CREATE TABLE IF NOT EXISTS `engine4_core_themes` (
  `theme_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`theme_id`),
  UNIQUE KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `engine4_core_themes`
--

INSERT INTO `engine4_core_themes` (`theme_id`, `name`, `title`, `description`, `active`) VALUES
(7, 'oklahomapeakperformance', 'Oklahoma Peak Performance', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_albums`
--

CREATE TABLE IF NOT EXISTS `engine4_event_albums` (
  `album_id` int(11) unsigned NOT NULL auto_increment,
  `event_id` int(11) unsigned NOT NULL,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL default '1',
  `photo_id` int(11) unsigned NOT NULL default '0',
  `view_count` int(11) unsigned NOT NULL default '0',
  `comment_count` int(11) unsigned NOT NULL default '0',
  `collectible_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`album_id`),
  KEY `event_id` (`event_id`),
  KEY `search` (`search`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `engine4_event_albums`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_categories`
--

CREATE TABLE IF NOT EXISTS `engine4_event_categories` (
  `category_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `engine4_event_categories`
--

INSERT INTO `engine4_event_categories` (`category_id`, `title`) VALUES
(32, '11 Smack'),
(33, '11 Metro'),
(34, '12 Smack'),
(35, '12 National'),
(36, '12 Metro (K. Wilson)'),
(37, '12 Metro (H. Erickson)'),
(38, '13 Smack'),
(39, '13 National'),
(40, '13 Regional (B. Engel)'),
(41, '13 Regional (E. Killackey)'),
(42, '13 Metro (K. Thompson)'),
(43, '13 Metro (E. Becerra)'),
(44, '14 Smack'),
(45, '14 National'),
(46, '14 Regional (K. Ethridge)'),
(47, '14 Regional (A. Sexton)'),
(48, '14 Metro (H. Ruiz)'),
(49, '14 Metro (B. Romero)'),
(50, '15 Smack'),
(51, '15 National'),
(52, '15 Regional (E. Duda)'),
(53, '15 Regional (E. Blake)'),
(54, '16 Smack'),
(55, '16 National'),
(56, '16 Regional'),
(57, '17 Smack'),
(58, '18 Smack'),
(59, 'Skills Clinics'),
(60, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_events`
--

CREATE TABLE IF NOT EXISTS `engine4_event_events` (
  `event_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `parent_type` varchar(64) collate utf8_unicode_ci NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `search` tinyint(1) NOT NULL default '1',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `host` varchar(115) collate utf8_unicode_ci NOT NULL,
  `location` varchar(115) collate utf8_unicode_ci NOT NULL,
  `view_count` int(11) unsigned NOT NULL default '0',
  `member_count` int(11) unsigned NOT NULL default '0',
  `approval` tinyint(1) NOT NULL default '0',
  `invite` tinyint(1) NOT NULL default '0',
  `photo_id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`event_id`),
  KEY `user_id` (`user_id`),
  KEY `parent_type` (`parent_type`,`parent_id`),
  KEY `starttime` (`starttime`),
  KEY `search` (`search`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `engine4_event_events`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_membership`
--

CREATE TABLE IF NOT EXISTS `engine4_event_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `resource_approved` tinyint(1) NOT NULL default '0',
  `user_approved` tinyint(1) NOT NULL default '0',
  `message` text collate utf8_unicode_ci,
  `rsvp` tinyint(3) NOT NULL default '3',
  `title` text collate utf8_unicode_ci,
  PRIMARY KEY  (`resource_id`,`user_id`),
  KEY `REVERSE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_membership`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_photos`
--

CREATE TABLE IF NOT EXISTS `engine4_event_photos` (
  `photo_id` int(11) unsigned NOT NULL auto_increment,
  `album_id` int(11) unsigned NOT NULL,
  `event_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `collection_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) unsigned NOT NULL default '0',
  `comment_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`photo_id`),
  KEY `album_id` (`album_id`),
  KEY `event_id` (`event_id`),
  KEY `collection_id` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_event_photos`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_posts`
--

CREATE TABLE IF NOT EXISTS `engine4_event_posts` (
  `post_id` int(11) unsigned NOT NULL auto_increment,
  `topic_id` int(11) unsigned NOT NULL,
  `event_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY  (`post_id`),
  KEY `topic_id` (`topic_id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_event_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_topics`
--

CREATE TABLE IF NOT EXISTS `engine4_event_topics` (
  `topic_id` int(11) unsigned NOT NULL auto_increment,
  `event_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `sticky` tinyint(1) NOT NULL default '0',
  `closed` tinyint(1) NOT NULL default '0',
  `view_count` int(11) unsigned NOT NULL default '0',
  `post_count` int(11) unsigned NOT NULL default '0',
  `lastpost_id` int(11) unsigned NOT NULL,
  `lastposter_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`topic_id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_event_topics`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_event_topicwatches`
--

CREATE TABLE IF NOT EXISTS `engine4_event_topicwatches` (
  `resource_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `watch` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`resource_id`,`topic_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_event_topicwatches`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_albums`
--

CREATE TABLE IF NOT EXISTS `engine4_group_albums` (
  `album_id` int(11) unsigned NOT NULL auto_increment,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL default '0',
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `search` tinyint(1) NOT NULL default '1',
  `photo_id` int(11) unsigned NOT NULL default '0',
  `view_count` int(11) unsigned NOT NULL default '0',
  `comment_count` int(11) unsigned NOT NULL default '0',
  `collectible_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`album_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `engine4_group_albums`
--

INSERT INTO `engine4_group_albums` (`album_id`, `group_id`, `user_id`, `title`, `description`, `creation_date`, `modified_date`, `search`, `photo_id`, `view_count`, `comment_count`, `collectible_count`) VALUES
(1, 1, 1, 'Group Profile', '', '2012-01-04 22:46:38', '2012-01-04 22:46:38', 1, 0, 0, 0, 0),
(2, 2, 1, 'Group Profile', '', '2012-01-04 22:47:48', '2012-01-04 22:47:48', 1, 0, 0, 0, 0),
(3, 3, 1, 'Group Profile', '', '2012-01-04 22:48:41', '2012-01-04 22:48:41', 1, 0, 0, 0, 0),
(4, 4, 1, 'Group Profile', '', '2012-01-04 22:50:23', '2012-01-04 22:50:23', 1, 0, 0, 0, 0),
(5, 5, 1, 'Group Profile', '', '2012-01-04 22:51:18', '2012-01-04 22:51:18', 1, 0, 0, 0, 0),
(6, 6, 1, 'Group Profile', '', '2012-01-04 23:21:58', '2012-01-04 23:21:58', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_announcements`
--

CREATE TABLE IF NOT EXISTS `engine4_group_announcements` (
  `announcement_id` int(11) unsigned NOT NULL auto_increment,
  `group_id` int(11) unsigned NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_announcements`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_categories`
--

CREATE TABLE IF NOT EXISTS `engine4_group_categories` (
  `category_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `engine4_group_categories`
--

INSERT INTO `engine4_group_categories` (`category_id`, `title`) VALUES
(1, 'Animals'),
(2, 'Business & Finance'),
(3, 'Computers & Internet'),
(4, 'Cultures & Community'),
(5, 'Dating & Relationships'),
(6, 'Entertainment & Arts'),
(7, 'Family & Home'),
(8, 'Games'),
(9, 'Government & Politics'),
(10, 'Health & Wellness'),
(11, 'Hobbies & Crafts'),
(12, 'Music'),
(13, 'Recreation & Sports'),
(14, 'Regional'),
(15, 'Religion & Beliefs'),
(16, 'Schools & Education'),
(17, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_fields_maps`
--

CREATE TABLE IF NOT EXISTS `engine4_group_fields_maps` (
  `field_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `order` smallint(6) NOT NULL,
  PRIMARY KEY  (`field_id`,`option_id`,`child_id`),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_maps`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_fields_meta`
--

CREATE TABLE IF NOT EXISTS `engine4_group_fields_meta` (
  `field_id` int(11) NOT NULL auto_increment,
  `type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `label` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  `alias` varchar(32) NOT NULL default '',
  `required` tinyint(1) NOT NULL default '0',
  `display` tinyint(1) unsigned NOT NULL,
  `search` tinyint(1) unsigned NOT NULL default '0',
  `show` tinyint(1) unsigned NOT NULL default '1',
  `order` smallint(3) unsigned NOT NULL default '999',
  `config` text NOT NULL,
  `validators` text character set utf8 collate utf8_unicode_ci,
  `filters` text character set utf8 collate utf8_unicode_ci,
  `style` text character set utf8 collate utf8_unicode_ci,
  `error` text character set utf8 collate utf8_unicode_ci,
  PRIMARY KEY  (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_fields_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_fields_options`
--

CREATE TABLE IF NOT EXISTS `engine4_group_fields_options` (
  `option_id` int(11) NOT NULL auto_increment,
  `field_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `order` smallint(6) NOT NULL default '999',
  PRIMARY KEY  (`option_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_fields_options`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_fields_search`
--

CREATE TABLE IF NOT EXISTS `engine4_group_fields_search` (
  `item_id` int(11) NOT NULL,
  `price` double default NULL,
  `location` varchar(255) default NULL,
  PRIMARY KEY  (`item_id`),
  KEY `price` (`price`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_search`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_fields_values`
--

CREATE TABLE IF NOT EXISTS `engine4_group_fields_values` (
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `index` smallint(3) NOT NULL default '0',
  `value` text NOT NULL,
  PRIMARY KEY  (`item_id`,`field_id`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engine4_group_fields_values`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_groups`
--

CREATE TABLE IF NOT EXISTS `engine4_group_groups` (
  `group_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `category_id` int(11) unsigned NOT NULL default '0',
  `search` tinyint(1) NOT NULL default '1',
  `invite` tinyint(1) NOT NULL default '1',
  `approval` tinyint(1) NOT NULL default '0',
  `featured` tinyint(1) NOT NULL default '0',
  `photo_id` int(11) unsigned NOT NULL default '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `member_count` smallint(6) unsigned NOT NULL,
  `view_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `search` (`search`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `engine4_group_groups`
--

INSERT INTO `engine4_group_groups` (`group_id`, `user_id`, `title`, `description`, `category_id`, `search`, `invite`, `approval`, `featured`, `photo_id`, `creation_date`, `modified_date`, `member_count`, `view_count`) VALUES
(1, 1, '11 Smack', '', 13, 1, 1, 0, 0, 0, '2012-01-04 22:46:37', '2012-01-04 22:48:05', 1, 0),
(2, 1, '11 Metro', '', 13, 1, 1, 1, 0, 0, '2012-01-04 22:47:47', '2012-01-04 22:47:47', 1, 0),
(3, 1, '12 Smack', '', 13, 1, 1, 1, 0, 0, '2012-01-04 22:48:40', '2012-01-04 22:48:40', 1, 0),
(4, 1, '12 National', '', 0, 1, 1, 1, 0, 0, '2012-01-04 22:50:22', '2012-01-04 22:50:22', 1, 0),
(5, 1, '12 Metro (K. Wilson)', '', 0, 1, 1, 1, 0, 0, '2012-01-04 22:51:17', '2012-01-04 23:21:21', 1, 0),
(6, 1, '12 Metro (H. Erickson)', '', 0, 1, 1, 1, 0, 0, '2012-01-04 23:21:57', '2012-01-04 23:22:05', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_invites`
--

CREATE TABLE IF NOT EXISTS `engine4_group_invites` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `recipient` varchar(255) collate utf8_unicode_ci NOT NULL,
  `code` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `message` text collate utf8_unicode_ci NOT NULL,
  `new_user_id` int(11) unsigned NOT NULL default '0',
  `group_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_invites`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_links`
--

CREATE TABLE IF NOT EXISTS `engine4_group_links` (
  `link_id` int(11) unsigned NOT NULL auto_increment,
  `group_id` int(11) unsigned NOT NULL,
  `owner_id` int(11) unsigned NOT NULL,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `link_content` varchar(255) collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY  (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_listitems`
--

CREATE TABLE IF NOT EXISTS `engine4_group_listitems` (
  `listitem_id` int(11) unsigned NOT NULL auto_increment,
  `list_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`listitem_id`),
  KEY `list_id` (`list_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_listitems`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_lists`
--

CREATE TABLE IF NOT EXISTS `engine4_group_lists` (
  `list_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `owner_id` int(11) unsigned NOT NULL,
  `child_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`list_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `engine4_group_lists`
--

INSERT INTO `engine4_group_lists` (`list_id`, `title`, `owner_id`, `child_count`) VALUES
(1, 'GROUP_OFFICERS', 1, 0),
(2, 'GROUP_OFFICERS', 2, 0),
(3, 'GROUP_OFFICERS', 3, 0),
(4, 'GROUP_OFFICERS', 4, 0),
(5, 'GROUP_OFFICERS', 5, 0),
(6, 'GROUP_OFFICERS', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_membership`
--

CREATE TABLE IF NOT EXISTS `engine4_group_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `resource_approved` tinyint(1) NOT NULL default '0',
  `user_approved` tinyint(1) NOT NULL default '0',
  `message` text collate utf8_unicode_ci,
  `title` text collate utf8_unicode_ci,
  PRIMARY KEY  (`resource_id`,`user_id`),
  KEY `REVERSE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_membership`
--

INSERT INTO `engine4_group_membership` (`resource_id`, `user_id`, `active`, `resource_approved`, `user_approved`, `message`, `title`) VALUES
(1, 1, 1, 1, 1, NULL, NULL),
(2, 1, 1, 1, 1, NULL, NULL),
(3, 1, 1, 1, 1, NULL, NULL),
(4, 1, 1, 1, 1, NULL, NULL),
(5, 1, 1, 1, 1, NULL, NULL),
(6, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_photos`
--

CREATE TABLE IF NOT EXISTS `engine4_group_photos` (
  `photo_id` int(11) unsigned NOT NULL auto_increment,
  `album_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `collection_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `view_count` int(11) unsigned NOT NULL default '0',
  `comment_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`photo_id`),
  KEY `album_id` (`album_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_photos`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_poll_options`
--

CREATE TABLE IF NOT EXISTS `engine4_group_poll_options` (
  `poll_option_id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) unsigned NOT NULL,
  `poll_option` text collate utf8_unicode_ci NOT NULL,
  `votes` smallint(4) unsigned NOT NULL,
  PRIMARY KEY  (`poll_option_id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_poll_options`
--


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
  PRIMARY KEY  (`poll_id`,`user_id`),
  KEY `poll_option_id` (`poll_option_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_poll_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_polls`
--

CREATE TABLE IF NOT EXISTS `engine4_group_polls` (
  `poll_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `is_closed` tinyint(1) NOT NULL default '0',
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_polls`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_posts`
--

CREATE TABLE IF NOT EXISTS `engine4_group_posts` (
  `post_id` int(11) unsigned NOT NULL auto_increment,
  `topic_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY  (`post_id`),
  KEY `topic_id` (`topic_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_topics`
--

CREATE TABLE IF NOT EXISTS `engine4_group_topics` (
  `topic_id` int(11) unsigned NOT NULL auto_increment,
  `group_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `sticky` tinyint(1) NOT NULL default '0',
  `closed` tinyint(1) NOT NULL default '0',
  `post_count` int(11) unsigned NOT NULL default '0',
  `view_count` int(11) unsigned NOT NULL default '0',
  `lastpost_id` int(11) unsigned NOT NULL default '0',
  `lastposter_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`topic_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_group_topics`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_group_topicwatches`
--

CREATE TABLE IF NOT EXISTS `engine4_group_topicwatches` (
  `resource_id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `watch` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`resource_id`,`topic_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_group_topicwatches`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_invites`
--

CREATE TABLE IF NOT EXISTS `engine4_invites` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `recipient` varchar(255) collate utf8_unicode_ci NOT NULL,
  `code` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `message` text collate utf8_unicode_ci NOT NULL,
  `new_user_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_invites`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_messages_conversations`
--

CREATE TABLE IF NOT EXISTS `engine4_messages_conversations` (
  `conversation_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `user_id` int(11) unsigned NOT NULL,
  `recipients` int(11) unsigned NOT NULL,
  `modified` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL default '0',
  `resource_type` varchar(64) character set latin1 collate latin1_general_ci default '',
  `resource_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`conversation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `engine4_messages_conversations`
--

INSERT INTO `engine4_messages_conversations` (`conversation_id`, `title`, `user_id`, `recipients`, `modified`, `locked`, `resource_type`, `resource_id`) VALUES
(1, 'Team', 1, 1, '2012-01-31 19:32:13', 0, NULL, 0),
(2, 'Team', 1, 1, '2012-01-31 20:17:32', 0, NULL, 0),
(3, 'Team?', 1, 1, '2012-01-31 20:22:50', 0, NULL, 0),
(4, 'Network', 1, 1, '2012-01-31 21:48:52', 0, NULL, 0),
(5, 'Peak Team', 1, 1, '2012-01-31 21:49:18', 0, NULL, 0),
(6, 'Peak Team', 1, 1, '2012-01-31 21:49:41', 0, NULL, 0),
(7, 'Peak Team', 1, 1, '2012-01-31 21:50:02', 0, NULL, 0),
(8, 'Photo', 1, 1, '2012-02-02 01:09:02', 0, NULL, 0),
(9, 'Photo', 1, 1, '2012-02-02 01:10:48', 0, NULL, 0),
(10, 'Photo', 1, 1, '2012-02-02 01:11:14', 0, NULL, 0),
(11, 'Photo', 1, 1, '2012-02-02 01:11:41', 0, NULL, 0),
(12, 'Photo', 1, 1, '2012-02-02 01:12:14', 0, NULL, 0),
(13, 'Photo', 1, 1, '2012-02-02 01:12:41', 0, NULL, 0),
(14, 'Photo', 1, 1, '2012-02-02 01:13:18', 0, NULL, 0),
(15, 'Photo', 1, 1, '2012-02-02 01:13:48', 0, NULL, 0),
(16, 'Photo', 1, 1, '2012-02-02 01:15:19', 0, NULL, 0),
(17, 'Photo', 1, 1, '2012-02-02 01:16:07', 0, NULL, 0),
(18, 'Photo', 1, 1, '2012-02-02 01:16:45', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_messages_messages`
--

CREATE TABLE IF NOT EXISTS `engine4_messages_messages` (
  `message_id` int(11) unsigned NOT NULL auto_increment,
  `conversation_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `attachment_type` varchar(24) character set latin1 collate latin1_general_ci default '',
  `attachment_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`message_id`),
  UNIQUE KEY `CONVERSATIONS` (`conversation_id`,`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `engine4_messages_messages`
--

INSERT INTO `engine4_messages_messages` (`message_id`, `conversation_id`, `user_id`, `title`, `body`, `date`, `attachment_type`, `attachment_id`) VALUES
(1, 1, 1, 'Team', 'What team is your child in?', '2012-01-31 19:32:13', '', 0),
(2, 2, 1, 'Team', 'What team are you on?&amp;nbsp; Thanks!', '2012-01-31 20:17:32', '', 0),
(3, 3, 1, 'Team?', 'What team are you on?', '2012-01-31 20:22:50', '', 0),
(4, 4, 1, 'Network', 'Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!', '2012-01-31 21:48:52', '', 0),
(5, 5, 1, 'Peak Team', 'Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!', '2012-01-31 21:49:18', '', 0),
(6, 6, 1, 'Peak Team', 'Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!', '2012-01-31 21:49:41', '', 0),
(7, 7, 1, 'Peak Team', 'Please login to Peak at your convenience and select what Team your child is in by editting your profile.&amp;nbsp; Thanks!', '2012-01-31 21:50:02', '', 0),
(8, 8, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the system, your photo was accidentally removed.&amp;nbsp; Could you please re-upload at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:09:02', '', 0),
(9, 9, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:10:48', '', 0),
(10, 10, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:11:14', '', 0),
(11, 11, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:11:41', '', 0),
(12, 12, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:12:14', '', 0),
(13, 13, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:12:41', '', 0),
(14, 14, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:13:18', '', 0),
(15, 15, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:13:48', '', 0),
(16, 16, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:15:19', '', 0),
(17, 17, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:16:07', '', 0),
(18, 18, 1, 'Photo', 'While we are still in the process of fixing a few of the &quot;bugs&quot; in the \r\nsystem, your photo was accidentally removed.&amp;nbsp; Could you please re-upload\r\n at your convenience?&amp;nbsp; Thank you!', '2012-02-02 01:16:45', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_messages_recipients`
--

CREATE TABLE IF NOT EXISTS `engine4_messages_recipients` (
  `user_id` int(11) unsigned NOT NULL,
  `conversation_id` int(11) unsigned NOT NULL,
  `inbox_message_id` int(11) unsigned default NULL,
  `inbox_updated` datetime default NULL,
  `inbox_read` tinyint(1) default NULL,
  `inbox_deleted` tinyint(1) default NULL,
  `outbox_message_id` int(11) unsigned default NULL,
  `outbox_updated` datetime default NULL,
  `outbox_deleted` tinyint(1) default NULL,
  PRIMARY KEY  (`user_id`,`conversation_id`),
  KEY `INBOX_UPDATED` (`user_id`,`conversation_id`,`inbox_updated`),
  KEY `OUTBOX_UPDATED` (`user_id`,`conversation_id`,`outbox_updated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_messages_recipients`
--

INSERT INTO `engine4_messages_recipients` (`user_id`, `conversation_id`, `inbox_message_id`, `inbox_updated`, `inbox_read`, `inbox_deleted`, `outbox_message_id`, `outbox_updated`, `outbox_deleted`) VALUES
(1, 1, NULL, NULL, 1, 1, 1, '2012-01-31 19:32:13', 0),
(1, 2, NULL, NULL, 1, 1, 2, '2012-01-31 20:17:32', 0),
(1, 3, NULL, NULL, 1, 1, 3, '2012-01-31 20:22:50', 0),
(1, 4, NULL, NULL, 1, 1, 4, '2012-01-31 21:48:52', 0),
(1, 5, NULL, NULL, 1, 1, 5, '2012-01-31 21:49:18', 0),
(1, 6, NULL, NULL, 1, 1, 6, '2012-01-31 21:49:41', 0),
(1, 7, NULL, NULL, 1, 1, 7, '2012-01-31 21:50:02', 0),
(1, 8, NULL, NULL, 1, 1, 8, '2012-02-02 01:09:02', 0),
(1, 9, NULL, NULL, 1, 1, 9, '2012-02-02 01:10:48', 0),
(1, 10, NULL, NULL, 1, 1, 10, '2012-02-02 01:11:14', 0),
(1, 11, NULL, NULL, 1, 1, 11, '2012-02-02 01:11:41', 0),
(1, 12, NULL, NULL, 1, 1, 12, '2012-02-02 01:12:14', 0),
(1, 13, NULL, NULL, 1, 1, 13, '2012-02-02 01:12:41', 0),
(1, 14, NULL, NULL, 1, 1, 14, '2012-02-02 01:13:18', 0),
(1, 15, NULL, NULL, 1, 1, 15, '2012-02-02 01:13:48', 0),
(1, 16, NULL, NULL, 1, 1, 16, '2012-02-02 01:15:19', 0),
(1, 17, NULL, NULL, 1, 1, 17, '2012-02-02 01:16:07', 0),
(1, 18, NULL, NULL, 1, 1, 18, '2012-02-02 01:16:45', 0),
(12, 3, 3, '2012-01-31 20:22:50', 0, 0, 0, NULL, 1),
(13, 2, 2, '2012-01-31 20:17:32', 0, 0, 0, NULL, 1),
(14, 6, 6, '2012-01-31 21:49:41', 0, 0, 0, NULL, 1),
(26, 5, 5, '2012-01-31 21:49:18', 0, 0, 0, NULL, 1),
(29, 1, 1, '2012-01-31 19:32:13', 0, 0, 0, NULL, 1),
(29, 7, 7, '2012-01-31 21:50:02', 0, 0, 0, NULL, 1),
(43, 9, 9, '2012-02-02 01:10:48', 0, 0, 0, NULL, 1),
(55, 11, 11, '2012-02-02 01:11:41', 0, 0, 0, NULL, 1),
(58, 18, 18, '2012-02-02 01:16:45', 0, 0, 0, NULL, 1),
(61, 13, 13, '2012-02-02 01:12:41', 0, 0, 0, NULL, 1),
(64, 16, 16, '2012-02-02 01:15:19', 0, 0, 0, NULL, 1),
(68, 12, 12, '2012-02-02 01:12:14', 0, 0, 0, NULL, 1),
(72, 4, 4, '2012-01-31 21:48:52', 0, 0, 0, NULL, 1),
(77, 14, 14, '2012-02-02 01:13:18', 0, 0, 0, NULL, 1),
(80, 17, 17, '2012-02-02 01:16:07', 0, 0, 0, NULL, 1),
(88, 10, 10, '2012-02-02 01:11:14', 0, 0, 0, NULL, 1),
(95, 15, 15, '2012-02-02 01:13:48', 0, 0, 0, NULL, 1),
(96, 8, 8, '2012-02-02 01:09:02', 0, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_network_membership`
--

CREATE TABLE IF NOT EXISTS `engine4_network_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `resource_approved` tinyint(1) NOT NULL default '0',
  `user_approved` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`resource_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_network_membership`
--

INSERT INTO `engine4_network_membership` (`resource_id`, `user_id`, `active`, `resource_approved`, `user_approved`) VALUES
(8, 36, 1, 1, 1),
(8, 68, 1, 1, 1),
(9, 49, 1, 1, 1),
(9, 95, 1, 1, 1),
(10, 18, 1, 1, 1),
(10, 19, 1, 1, 1),
(10, 21, 1, 1, 1),
(10, 22, 1, 1, 1),
(10, 45, 1, 1, 1),
(12, 38, 1, 1, 1),
(12, 39, 1, 1, 1),
(12, 64, 1, 1, 1),
(13, 1829893787, 1, 1, 1),
(13, 2031245164, 1, 1, 1),
(14, 13, 1, 1, 1),
(14, 32, 1, 1, 1),
(14, 74, 1, 1, 1),
(14, 1383914828, 1, 1, 1),
(14, 2002635803, 1, 1, 1),
(15, 23, 1, 1, 1),
(15, 44, 1, 1, 1),
(15, 71, 1, 1, 1),
(15, 73, 1, 1, 1),
(15, 886555540, 1, 1, 1),
(15, 1617228157, 1, 1, 1),
(16, 88, 1, 1, 1),
(16, 93, 1, 1, 1),
(17, 92, 1, 1, 1),
(18, 28, 1, 1, 1),
(18, 60, 1, 1, 1),
(19, 63, 1, 1, 1),
(19, 70, 1, 1, 1),
(19, 85, 1, 1, 1),
(20, 46, 1, 1, 1),
(21, 61, 1, 1, 1),
(22, 30, 1, 1, 1),
(22, 75, 1, 1, 1),
(23, 47, 1, 1, 1),
(23, 65, 1, 1, 1),
(26, 33, 1, 1, 1),
(26, 34, 1, 1, 1),
(26, 35, 1, 1, 1),
(27, 81, 1, 1, 1),
(27, 90, 1, 1, 1),
(30, 16, 1, 1, 1),
(30, 17, 1, 1, 1),
(30, 31, 1, 1, 1),
(31, 24, 1, 1, 1),
(31, 37, 1, 1, 1),
(31, 66, 1, 1, 1),
(31, 91, 1, 1, 1),
(31, 573980572, 1, 1, 1),
(31, 674218479, 1, 1, 1),
(32, 25, 1, 1, 1),
(32, 57, 1, 1, 1),
(32, 80, 1, 1, 1),
(32, 86, 1, 1, 1),
(33, 67, 1, 1, 1),
(33, 82, 1, 1, 1),
(33, 83, 1, 1, 1),
(33, 89, 1, 1, 1),
(33, 94, 1, 1, 1),
(33, 1610159378, 1, 1, 1),
(34, 40, 1, 1, 1),
(34, 43, 1, 1, 1),
(34, 48, 1, 1, 1),
(35, 27, 1, 1, 1),
(35, 62, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_network_networks`
--

CREATE TABLE IF NOT EXISTS `engine4_network_networks` (
  `network_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `field_id` int(11) unsigned NOT NULL default '0',
  `pattern` text collate utf8_unicode_ci,
  `member_count` int(11) unsigned NOT NULL default '0',
  `hide` tinyint(1) NOT NULL default '0',
  `assignment` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`network_id`),
  KEY `assignment` (`assignment`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `engine4_network_networks`
--

INSERT INTO `engine4_network_networks` (`network_id`, `title`, `description`, `field_id`, `pattern`, `member_count`, `hide`, `assignment`) VALUES
(8, '11 Smack', '', 35, '{"type":"select","value":["251"]}', 2, 0, 1),
(9, '11 Metro', '', 35, '{"type":"select","value":["252"]}', 2, 0, 1),
(10, '12 Smack', '', 35, '{"type":"select","value":["253"]}', 5, 0, 1),
(11, '12 National', '', 35, '{"type":"select","value":["254"]}', 0, 0, 1),
(12, '12 Metro (K. Wilson)', '', 35, '{"type":"select","value":["255"]}', 3, 0, 1),
(13, '15 Smack', '', 35, '{"type":"select","value":["268"]}', 2, 0, 1),
(14, '17 Smack', '', 35, '{"type":"select","value":["275"]}', 5, 0, 1),
(15, '16 Smack', '', 35, '{"type":"select","value":["272"]}', 6, 0, 1),
(16, '12 Metro (H. Erickson)', '', 35, '{"type":"select","value":["256"]}', 2, 0, 1),
(17, '13 Smack', '', 35, '{"type":"select","value":["250"]}', 1, 0, 1),
(18, '13 National', '', 35, '{"type":"select","value":["257"]}', 2, 0, 1),
(19, '13 Regional (B. Engel)', '', 35, '{"type":"select","value":["258"]}', 3, 0, 1),
(20, '13 Regional (E. Killackey)', '', 35, '{"type":"select","value":["259"]}', 1, 0, 1),
(21, '13 Metro (K. Thompson)', '', 35, '{"type":"select","value":["260"]}', 1, 0, 1),
(22, '13 Metro (E. Becerra)', '', 35, '{"type":"select","value":["261"]}', 2, 0, 1),
(23, '18 Smack', '', 35, '{"type":"select","value":["276"]}', 2, 0, 1),
(24, 'Skills Clinics', '', 0, NULL, 0, 0, 2),
(25, 'Directors and Board Members', '', 0, NULL, 0, 0, 2),
(26, '16 Regional', '', 35, '{"type":"select","value":["274"]}', 3, 0, 1),
(27, '16 National', '', 35, '{"type":"select","value":["273"]}', 2, 0, 1),
(28, '15 National', '', 35, '{"type":"select","value":["269"]}', 0, 0, 1),
(29, '15 Regional (E. Duda)', '', 35, '{"type":"select","value":["270"]}', 0, 0, 1),
(30, '15 Regional (E. Blake)', '', 35, '{"type":"select","value":["271"]}', 3, 0, 1),
(31, '14 Smack', '', 35, '{"type":"select","value":["262"]}', 6, 0, 1),
(32, '14 National', '', 35, '{"type":"select","value":["263"]}', 4, 0, 1),
(33, '14 Regional (K. Ethridge)', '', 35, '{"type":"select","value":["264"]}', 6, 0, 1),
(34, '14 Regional (A. Sexton)', '', 35, '{"type":"select","value":["265"]}', 3, 0, 1),
(35, '14 Metro (H. Ruiz)', '', 35, '{"type":"select","value":["266"]}', 2, 0, 1),
(36, '14 Metro (B. Romero)', '', 35, '{"type":"select","value":["267"]}', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_payment_gateways`
--

CREATE TABLE IF NOT EXISTS `engine4_payment_gateways` (
  `gateway_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `plugin` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `config` mediumblob,
  `test_mode` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`gateway_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `engine4_payment_gateways`
--

INSERT INTO `engine4_payment_gateways` (`gateway_id`, `title`, `description`, `enabled`, `plugin`, `config`, `test_mode`) VALUES
(1, '2Checkout', NULL, 0, 'Payment_Plugin_Gateway_2Checkout', NULL, 0),
(2, 'PayPal', NULL, 0, 'Payment_Plugin_Gateway_PayPal', NULL, 0),
(3, 'Testing', NULL, 0, 'Payment_Plugin_Gateway_Testing', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_payment_orders`
--

CREATE TABLE IF NOT EXISTS `engine4_payment_orders` (
  `order_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `gateway_id` int(10) unsigned NOT NULL,
  `gateway_order_id` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `gateway_transaction_id` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `state` enum('pending','cancelled','failed','incomplete','complete') character set latin1 collate latin1_general_ci NOT NULL default 'pending',
  `creation_date` datetime NOT NULL,
  `source_type` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `source_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `gateway_id` (`gateway_id`,`gateway_order_id`),
  KEY `state` (`state`),
  KEY `source_type` (`source_type`,`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_payment_orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_payment_packages`
--

CREATE TABLE IF NOT EXISTS `engine4_payment_packages` (
  `package_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `level_id` int(10) unsigned NOT NULL,
  `downgrade_level_id` int(10) unsigned NOT NULL default '0',
  `price` decimal(16,2) unsigned NOT NULL,
  `recurrence` int(11) unsigned NOT NULL,
  `recurrence_type` enum('day','week','month','year','forever') collate utf8_unicode_ci NOT NULL,
  `duration` int(11) unsigned NOT NULL,
  `duration_type` enum('day','week','month','year','forever') collate utf8_unicode_ci NOT NULL,
  `trial_duration` int(11) unsigned NOT NULL default '0',
  `trial_duration_type` enum('day','week','month','year','forever') collate utf8_unicode_ci default NULL,
  `enabled` tinyint(1) unsigned NOT NULL default '1',
  `signup` tinyint(1) unsigned NOT NULL default '1',
  `default` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`package_id`),
  KEY `level_id` (`level_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `engine4_payment_packages`
--

INSERT INTO `engine4_payment_packages` (`package_id`, `title`, `description`, `level_id`, `downgrade_level_id`, `price`, `recurrence`, `recurrence_type`, `duration`, `duration_type`, `trial_duration`, `trial_duration_type`, `enabled`, `signup`, `default`) VALUES
(1, 'Paul created', 'Paul created this package', 1, 1, 10.00, 1, 'day', 0, '', 0, '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_payment_products`
--

CREATE TABLE IF NOT EXISTS `engine4_payment_products` (
  `product_id` int(10) unsigned NOT NULL auto_increment,
  `extension_type` varchar(64) character set latin1 collate latin1_general_ci default NULL,
  `extension_id` int(10) unsigned default NULL,
  `sku` bigint(20) unsigned NOT NULL,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `price` decimal(16,2) unsigned NOT NULL,
  PRIMARY KEY  (`product_id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `extension_type` (`extension_type`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_payment_products`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_payment_subscriptions`
--

CREATE TABLE IF NOT EXISTS `engine4_payment_subscriptions` (
  `subscription_id` int(11) unsigned NOT NULL auto_increment,
  `user_id` int(11) unsigned NOT NULL,
  `package_id` int(11) unsigned NOT NULL,
  `status` enum('initial','trial','pending','active','cancelled','expired','overdue','refunded') collate utf8_unicode_ci NOT NULL default 'initial',
  `active` tinyint(1) unsigned NOT NULL default '0',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime default NULL,
  `payment_date` datetime default NULL,
  `expiration_date` datetime default NULL,
  `notes` text collate utf8_unicode_ci,
  `gateway_id` int(10) unsigned default NULL,
  `gateway_profile_id` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  PRIMARY KEY  (`subscription_id`),
  UNIQUE KEY `gateway_id` (`gateway_id`,`gateway_profile_id`),
  KEY `user_id` (`user_id`),
  KEY `package_id` (`package_id`),
  KEY `status` (`status`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_payment_subscriptions`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_payment_transactions`
--

CREATE TABLE IF NOT EXISTS `engine4_payment_transactions` (
  `transaction_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `gateway_id` int(10) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `order_id` int(10) unsigned NOT NULL default '0',
  `type` varchar(64) character set latin1 collate latin1_general_ci default NULL,
  `state` varchar(64) character set latin1 collate latin1_general_ci default NULL,
  `gateway_transaction_id` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `gateway_parent_transaction_id` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `gateway_order_id` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `amount` decimal(16,2) NOT NULL,
  `currency` char(3) character set latin1 collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`transaction_id`),
  KEY `user_id` (`user_id`),
  KEY `gateway_id` (`gateway_id`),
  KEY `type` (`type`),
  KEY `state` (`state`),
  KEY `gateway_transaction_id` (`gateway_transaction_id`),
  KEY `gateway_parent_transaction_id` (`gateway_parent_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_payment_transactions`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_storage_chunks`
--

CREATE TABLE IF NOT EXISTS `engine4_storage_chunks` (
  `chunk_id` bigint(20) unsigned NOT NULL auto_increment,
  `file_id` int(11) unsigned NOT NULL,
  `data` blob NOT NULL,
  PRIMARY KEY  (`chunk_id`),
  KEY `file_id` (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_storage_chunks`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_storage_files`
--

CREATE TABLE IF NOT EXISTS `engine4_storage_files` (
  `file_id` int(10) unsigned NOT NULL auto_increment,
  `parent_file_id` int(10) unsigned default NULL,
  `type` varchar(16) character set latin1 collate latin1_general_ci default NULL,
  `parent_type` varchar(32) character set latin1 collate latin1_general_ci default NULL,
  `parent_id` int(10) unsigned default NULL,
  `user_id` int(10) unsigned default NULL,
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `service_id` int(10) unsigned NOT NULL default '1',
  `storage_path` varchar(255) collate utf8_unicode_ci NOT NULL,
  `extension` varchar(8) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `mime_major` varchar(64) collate utf8_unicode_ci NOT NULL,
  `mime_minor` varchar(64) collate utf8_unicode_ci NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `hash` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`file_id`),
  UNIQUE KEY `parent_file_id` (`parent_file_id`,`type`),
  KEY `PARENT` (`parent_type`,`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Dumping data for table `engine4_storage_files`
--

INSERT INTO `engine4_storage_files` (`file_id`, `parent_file_id`, `type`, `parent_type`, `parent_id`, `user_id`, `creation_date`, `modified_date`, `service_id`, `storage_path`, `extension`, `name`, `mime_major`, `mime_minor`, `size`, `hash`) VALUES
(1, NULL, NULL, 'temporary', 1, NULL, '2012-01-26 04:47:42', '2012-01-26 04:47:42', 1, '', 'jpg', 'm_232323232fp_;2_nu=3233_84__8_9_WSNRCG=34455;4496339nu0mrj[1].jpg', 'image', 'jpeg', 52755, '088402d47d03f1e5f7fc8edb7a798b3c'),
(2, NULL, NULL, 'temporary', 1, NULL, '2012-01-26 16:02:05', '2012-01-26 16:02:05', 1, '', 'jpg', 'm_Attack-20.jpg', 'image', 'jpeg', 24982, '08391625413bf4cc16360327f45383dd'),
(3, NULL, NULL, 'temporary', 1, NULL, '2012-01-26 17:21:49', '2012-01-26 17:21:49', 1, '', 'jpg', 'm_PeakVolleyball.jpg', 'image', 'jpeg', 50841, '81cc92c24fca55892bdd696016385575'),
(4, NULL, NULL, 'temporary', 1, NULL, '2012-01-26 17:23:19', '2012-01-26 17:23:19', 1, '', 'jpg', 'm_PeakVolleyball.jpg', 'image', 'jpeg', 50841, '81cc92c24fca55892bdd696016385575'),
(5, NULL, NULL, 'temporary', 1, NULL, '2012-01-27 00:19:15', '2012-01-27 00:19:15', 1, '', 'jpg', 'm_IMG_3815.jpg', 'image', 'jpeg', 49645, '355d33c2ed3cd456dc5aa60f99795581'),
(6, NULL, NULL, 'temporary', 1, NULL, '2012-01-27 16:15:59', '2012-01-27 16:15:59', 1, '', 'jpg', 'm_Tayler.jpg', 'image', 'jpeg', 45680, '8fc9ec94d1fdc297abe6c1f8a79ff203'),
(7, NULL, NULL, 'temporary', 1, NULL, '2012-01-27 16:36:12', '2012-01-27 16:36:12', 1, '', 'JPG', 'm_Lisa in OK.JPG', 'image', 'jpeg', 48429, 'edb8af5802384a5af400cdc40429f73e'),
(8, NULL, NULL, 'temporary', 1, NULL, '2012-01-27 16:57:10', '2012-01-27 16:57:10', 1, '', 'jpg', 'm_Cruise Pic 4 001.jpg', 'image', 'jpeg', 63326, '90a61156583b2b0f96af71d8c072128b'),
(9, NULL, NULL, 'temporary', 1, NULL, '2012-01-27 17:53:35', '2012-01-27 17:53:35', 1, '', 'jpg', 'm_Add program1.jpg', 'image', 'jpeg', 24021, 'a4d4ccad92f57878fe82039555826aed'),
(10, NULL, NULL, 'temporary', 1, NULL, '2012-01-27 18:08:44', '2012-01-27 18:08:44', 1, '', 'png', 'm_12.png', 'image', 'png', 3310, '368d96eb33dbf8e2ed5ac7effc2e827e'),
(11, NULL, NULL, 'temporary', 1, NULL, '2012-01-27 18:13:28', '2012-01-27 18:13:28', 1, '', 'png', 'm_12.png', 'image', 'png', 3310, '368d96eb33dbf8e2ed5ac7effc2e827e'),
(20, NULL, NULL, 'user', 43, NULL, '2012-01-27 18:38:45', '2012-01-27 18:38:45', 1, 'public/user/14/0014_d7d8.jpg', 'jpg', 'm_044[1].jpg', 'image', 'jpeg', 24004, '5cd2d7d8b92f24f418466c7131a9df11'),
(21, 20, 'thumb.profile', 'user', 43, NULL, '2012-01-27 18:38:45', '2012-01-27 18:38:45', 1, 'public/user/15/0015_59e5.jpg', 'jpg', 'p_044[1].jpg', 'image', 'jpeg', 6289, '115059e5d7f05ea5d46dc94ee966b79f'),
(22, 20, 'thumb.normal', 'user', 43, NULL, '2012-01-27 18:38:45', '2012-01-27 18:38:45', 1, 'public/user/16/0016_921e.jpg', 'jpg', 'n_044[1].jpg', 'image', 'jpeg', 1235, '72ec921e6efc4ddf45b55dc0fb224bba'),
(23, 20, 'thumb.icon', 'user', 43, NULL, '2012-01-27 18:38:45', '2012-01-27 18:38:45', 1, 'public/user/17/0017_da16.jpg', 'jpg', 's_044[1].jpg', 'image', 'jpeg', 1048, '1095da16ec7ab4e0e97699d8998ba1c2'),
(24, NULL, NULL, 'user', 49, NULL, '2012-01-27 22:41:58', '2012-01-27 22:41:58', 1, 'public/user/18/0018_e516.JPG', 'JPG', 'm_DSCN0645.JPG', 'image', 'jpeg', 64907, 'eefee5163a6dad0168304f31d145eb41'),
(25, 24, 'thumb.profile', 'user', 49, NULL, '2012-01-27 22:41:58', '2012-01-27 22:41:58', 1, 'public/user/19/0019_1426.JPG', 'JPG', 'p_DSCN0645.JPG', 'image', 'jpeg', 7350, '203a1426d71acdba340d7a41d534974d'),
(26, 24, 'thumb.normal', 'user', 49, NULL, '2012-01-27 22:41:58', '2012-01-27 22:41:58', 1, 'public/user/1a/001a_6621.JPG', 'JPG', 'n_DSCN0645.JPG', 'image', 'jpeg', 1214, 'ac026621df8c5d2a53b9564f5cb9b078'),
(27, 24, 'thumb.icon', 'user', 49, NULL, '2012-01-27 22:41:58', '2012-01-27 22:41:58', 1, 'public/user/1b/001b_be5d.JPG', 'JPG', 's_DSCN0645.JPG', 'image', 'jpeg', 1321, '9308be5d9ab6c636ccdfa50f5b994643'),
(28, NULL, NULL, 'user', 55, NULL, '2012-01-28 02:56:33', '2012-01-28 02:56:33', 1, 'public/user/1c/001c_0be7.JPG', 'JPG', 'm_IMG_1147.JPG', 'image', 'jpeg', 32129, 'a5000be7392126aebbf7135930b9de7d'),
(29, 28, 'thumb.profile', 'user', 55, NULL, '2012-01-28 02:56:33', '2012-01-28 02:56:33', 1, 'public/user/1d/001d_8a0b.JPG', 'JPG', 'p_IMG_1147.JPG', 'image', 'jpeg', 5579, '5b588a0bf64a02ca9fb73e86b01f28e9'),
(30, 28, 'thumb.normal', 'user', 55, NULL, '2012-01-28 02:56:33', '2012-01-28 02:56:33', 1, 'public/user/1e/001e_17aa.JPG', 'JPG', 'n_IMG_1147.JPG', 'image', 'jpeg', 1326, 'f68917aad01df01410fb85c8f1f41ec4'),
(31, 28, 'thumb.icon', 'user', 55, NULL, '2012-01-28 02:56:33', '2012-01-28 02:56:33', 1, 'public/user/1f/001f_17aa.JPG', 'JPG', 's_IMG_1147.JPG', 'image', 'jpeg', 1326, 'f68917aad01df01410fb85c8f1f41ec4'),
(32, NULL, NULL, 'user', 58, NULL, '2012-01-28 03:16:53', '2012-01-28 03:16:53', 1, 'public/user/20/0020_af58.JPG', 'JPG', 'm_Lisa in OK.JPG', 'image', 'jpeg', 48429, 'edb8af5802384a5af400cdc40429f73e'),
(33, 32, 'thumb.profile', 'user', 58, NULL, '2012-01-28 03:16:53', '2012-01-28 03:16:53', 1, 'public/user/21/0021_7a01.JPG', 'JPG', 'p_Lisa in OK.JPG', 'image', 'jpeg', 6542, 'f9be7a0171801aa8566d8e36f1c9071d'),
(34, 32, 'thumb.normal', 'user', 58, NULL, '2012-01-28 03:16:53', '2012-01-28 03:16:53', 1, 'public/user/22/0022_5511.JPG', 'JPG', 'n_Lisa in OK.JPG', 'image', 'jpeg', 1333, '5e64551104ceb131d6aa0bff9d51ee8c'),
(35, 32, 'thumb.icon', 'user', 58, NULL, '2012-01-28 03:16:53', '2012-01-28 03:16:53', 1, 'public/user/23/0023_be50.JPG', 'JPG', 's_Lisa in OK.JPG', 'image', 'jpeg', 1255, '3898be504866e2a92566a7ca8f370b90'),
(36, NULL, NULL, 'user', 61, NULL, '2012-01-28 05:05:17', '2012-01-28 05:05:17', 1, 'public/user/24/0024_7194.JPG', 'JPG', 'm_101.JPG', 'image', 'jpeg', 61942, '84ec7194cb7b1a8cc6dedd20e336051e'),
(37, 36, 'thumb.profile', 'user', 61, NULL, '2012-01-28 05:05:17', '2012-01-28 05:05:17', 1, 'public/user/25/0025_3b40.JPG', 'JPG', 'p_101.JPG', 'image', 'jpeg', 11430, '68463b406cfc0aa700771460c8e323ff'),
(38, 36, 'thumb.normal', 'user', 61, NULL, '2012-01-28 05:05:17', '2012-01-28 05:05:17', 1, 'public/user/26/0026_367a.JPG', 'JPG', 'n_101.JPG', 'image', 'jpeg', 1468, '7ecc367a21985e00b66951f88a91afa8'),
(39, 36, 'thumb.icon', 'user', 61, NULL, '2012-01-28 05:05:17', '2012-01-28 05:05:17', 1, 'public/user/27/0027_f0e4.JPG', 'JPG', 's_101.JPG', 'image', 'jpeg', 1323, '0767f0e4d641e331f61d15eaa984e166'),
(40, NULL, NULL, 'temporary', 1, NULL, '2012-01-28 05:06:19', '2012-01-28 05:06:19', 1, 'public/temporary/28/0028_1dd2.JPG', 'JPG', 'm_DSCF3794.JPG', 'image', 'jpeg', 36353, 'fb261dd2d0385a247de2f4cec7c44e3c'),
(41, 40, 'thumb.profile', 'temporary', 1, NULL, '2012-01-28 05:06:19', '2012-01-28 05:06:19', 1, 'public/temporary/29/0029_b116.JPG', 'JPG', 'p_DSCF3794.JPG', 'image', 'jpeg', 5843, '5373b1163d07fa39039a141f1a07e49b'),
(42, 40, 'thumb.normal', 'temporary', 1, NULL, '2012-01-28 05:06:19', '2012-01-28 05:06:19', 1, 'public/temporary/2a/002a_1828.JPG', 'JPG', 'n_DSCF3794.JPG', 'image', 'jpeg', 1093, '56b01828695e9c99cf391a9164fd7a9c'),
(43, 40, 'thumb.icon', 'temporary', 1, NULL, '2012-01-28 05:06:19', '2012-01-28 05:06:19', 1, 'public/temporary/2b/002b_f084.JPG', 'JPG', 's_DSCF3794.JPG', 'image', 'jpeg', 1137, '85ccf0848ff517e1f24fcf89e6e9d83f'),
(44, NULL, NULL, 'user', 64, NULL, '2012-01-28 14:31:24', '2012-01-28 14:31:24', 1, 'public/user/2c/002c_5ed5.jpg', 'jpg', 'm_Picture 018.jpg', 'image', 'jpeg', 44082, '99635ed5b2dc59c8f03b824863df6139'),
(45, 44, 'thumb.profile', 'user', 64, NULL, '2012-01-28 14:31:24', '2012-01-28 14:31:24', 1, 'public/user/2d/002d_cabb.jpg', 'jpg', 'p_Picture 018.jpg', 'image', 'jpeg', 6317, '5c75cabb6bbd17c6b306df348a485c04'),
(46, 44, 'thumb.normal', 'user', 64, NULL, '2012-01-28 14:31:24', '2012-01-28 14:31:24', 1, 'public/user/2e/002e_dee7.jpg', 'jpg', 'n_Picture 018.jpg', 'image', 'jpeg', 1207, '6e6adee7a2e4d65c8a9a7968563384e2'),
(47, 44, 'thumb.icon', 'user', 64, NULL, '2012-01-28 14:31:24', '2012-01-28 14:31:24', 1, 'public/user/2f/002f_3402.jpg', 'jpg', 's_Picture 018.jpg', 'image', 'jpeg', 1313, '1cfb34024f2b0ff3a3705e6ba766a1ae'),
(48, NULL, NULL, 'user', 68, NULL, '2012-01-28 18:30:15', '2012-01-28 18:30:15', 1, 'public/user/30/0030_73f7.JPG', 'JPG', 'm_IMG_0582.JPG', 'image', 'jpeg', 39156, '729773f755d69eb6da3d55969d2de375'),
(49, 48, 'thumb.profile', 'user', 68, NULL, '2012-01-28 18:30:15', '2012-01-28 18:30:15', 1, 'public/user/31/0031_4942.JPG', 'JPG', 'p_IMG_0582.JPG', 'image', 'jpeg', 12752, '546c4942221f0794c34148191ac4c6a2'),
(50, 48, 'thumb.normal', 'user', 68, NULL, '2012-01-28 18:30:15', '2012-01-28 18:30:15', 1, 'public/user/32/0032_b0eb.JPG', 'JPG', 'n_IMG_0582.JPG', 'image', 'jpeg', 1888, '96e0b0eb8a46e335c3a3ebcf9feed0d1'),
(51, 48, 'thumb.icon', 'user', 68, 68, '2012-01-28 18:30:15', '2012-01-28 18:30:15', 1, 'public/user/33/0033_5f26.JPG', 'JPG', 'nis_0031_4942.JPG', 'image', 'jpeg', 1048, 'd75a5f2671bd6c1f19d5e400990de31c'),
(56, NULL, NULL, 'user', 77, NULL, '2012-01-30 03:56:49', '2012-01-30 03:56:49', 1, 'public/user/38/0038_1f13.jpg', 'jpg', 'm_Head-050.jpg', 'image', 'jpeg', 51008, 'c74e1f13bc1a385116416216947cca7a'),
(57, 56, 'thumb.profile', 'user', 77, NULL, '2012-01-30 03:56:49', '2012-01-30 03:56:49', 1, 'public/user/39/0039_f343.jpg', 'jpg', 'p_Head-050.jpg', 'image', 'jpeg', 7651, 'a66af3431b6dd9bb8981c307ce0f1d6c'),
(58, 56, 'thumb.normal', 'user', 77, NULL, '2012-01-30 03:56:49', '2012-01-30 03:56:49', 1, 'public/user/3a/003a_2f9f.jpg', 'jpg', 'n_Head-050.jpg', 'image', 'jpeg', 1427, '747e2f9fc50a867c6382a209f0602551'),
(59, 56, 'thumb.icon', 'user', 77, NULL, '2012-01-30 03:56:49', '2012-01-30 03:56:49', 1, 'public/user/3b/003b_fe30.jpg', 'jpg', 's_Head-050.jpg', 'image', 'jpeg', 1333, '5077fe306debbbb3a02e65747c93237f'),
(60, NULL, NULL, 'user', 80, NULL, '2012-01-30 13:42:30', '2012-01-30 13:42:30', 1, 'public/user/3c/003c_82d3.jpg', 'jpg', 'm_vballwinterfestandpicsofhouses 114.jpg', 'image', 'jpeg', 46582, '210982d3eeeaee573a1ccd8879e027b5'),
(61, 60, 'thumb.profile', 'user', 80, NULL, '2012-01-30 13:42:30', '2012-01-30 13:42:30', 1, 'public/user/3d/003d_c34e.jpg', 'jpg', 'p_vballwinterfestandpicsofhouses 114.jpg', 'image', 'jpeg', 12286, '68e6c34e6d6a0557b0a7b482e9c334f6'),
(62, 60, 'thumb.normal', 'user', 80, NULL, '2012-01-30 13:42:31', '2012-01-30 13:42:31', 1, 'public/user/3e/003e_535a.jpg', 'jpg', 'n_vballwinterfestandpicsofhouses 114.jpg', 'image', 'jpeg', 1608, 'be68535a20b471acaf6cf1f342165f83'),
(63, 60, 'thumb.icon', 'user', 80, NULL, '2012-01-30 13:42:31', '2012-01-30 13:42:31', 1, 'public/user/3f/003f_4b44.jpg', 'jpg', 's_vballwinterfestandpicsofhouses 114.jpg', 'image', 'jpeg', 1430, 'a4724b44be86f35bf034f8a8d8cdc831'),
(64, NULL, NULL, 'temporary', 1, NULL, '2012-01-30 18:01:29', '2012-01-30 18:01:29', 1, 'public/temporary/40/0040_9b8f.jpg', 'jpg', 'm_CaymanNewYork2011 004.jpg', 'image', 'jpeg', 56767, '0c4b9b8f1461b607a05fcbeb6772ba14'),
(65, 64, 'thumb.profile', 'temporary', 1, NULL, '2012-01-30 18:01:29', '2012-01-30 18:01:29', 1, 'public/temporary/41/0041_f653.jpg', 'jpg', 'p_CaymanNewYork2011 004.jpg', 'image', 'jpeg', 7918, '8ef1f653174fa5151afcabeb87b4d017'),
(66, 64, 'thumb.normal', 'temporary', 1, NULL, '2012-01-30 18:01:29', '2012-01-30 18:01:29', 1, 'public/temporary/42/0042_5cb9.jpg', 'jpg', 'n_CaymanNewYork2011 004.jpg', 'image', 'jpeg', 1310, 'e5105cb9e05175ef9979edd6a02cccc7'),
(67, 64, 'thumb.icon', 'temporary', 1, NULL, '2012-01-30 18:01:29', '2012-01-30 18:01:29', 1, 'public/temporary/43/0043_aeec.jpg', 'jpg', 's_CaymanNewYork2011 004.jpg', 'image', 'jpeg', 1654, 'a4c3aeecef5c57891b6345d1fd6e94c7'),
(68, NULL, NULL, 'user', 88, NULL, '2012-01-30 21:12:02', '2012-01-30 21:12:02', 1, 'public/user/44/0044_96cf.jpg', 'jpg', 'm_IMG00020.jpg', 'image', 'jpeg', 59817, 'f03196cf9814aeba6edd518a3207afd3'),
(69, 68, 'thumb.profile', 'user', 88, NULL, '2012-01-30 21:12:02', '2012-01-30 21:12:02', 1, 'public/user/45/0045_aff0.jpg', 'jpg', 'p_IMG00020.jpg', 'image', 'jpeg', 7919, '107aaff048bd35bb4bd6fde1ada71f27'),
(70, 68, 'thumb.normal', 'user', 88, NULL, '2012-01-30 21:12:02', '2012-01-30 21:12:02', 1, 'public/user/46/0046_84f9.jpg', 'jpg', 'n_IMG00020.jpg', 'image', 'jpeg', 1369, '3fb284f9322f54b1e98821d477f3ea11'),
(71, 68, 'thumb.icon', 'user', 88, 88, '2012-01-30 21:12:02', '2012-01-30 21:12:02', 1, 'public/user/47/0047_209f.jpg', 'jpg', 'nis_0045_aff0.jpg', 'image', 'jpeg', 1432, 'a0e1209f63df0f67949355e3f2d23e33'),
(72, NULL, NULL, 'user', 95, NULL, '2012-01-31 05:28:01', '2012-01-31 05:28:01', 1, 'public/user/48/0048_31e3.JPG', 'JPG', 'm_Snapshot_20111024_7.JPG', 'image', 'jpeg', 37143, '865231e31a712768368801bb9701c006'),
(73, 72, 'thumb.profile', 'user', 95, NULL, '2012-01-31 05:28:01', '2012-01-31 05:28:01', 1, 'public/user/49/0049_468b.JPG', 'JPG', 'p_Snapshot_20111024_7.JPG', 'image', 'jpeg', 5237, 'bb68468b68489b21de979d66a39cb7ac'),
(74, 72, 'thumb.normal', 'user', 95, NULL, '2012-01-31 05:28:01', '2012-01-31 05:28:01', 1, 'public/user/4a/004a_ebc3.JPG', 'JPG', 'n_Snapshot_20111024_7.JPG', 'image', 'jpeg', 1208, '829cebc3aef17ece4b2f10c0c383fcbd'),
(75, 72, 'thumb.icon', 'user', 95, NULL, '2012-01-31 05:28:01', '2012-01-31 05:28:01', 1, 'public/user/4b/004b_bf3a.JPG', 'JPG', 's_Snapshot_20111024_7.JPG', 'image', 'jpeg', 1292, '5a1ebf3ad7766166e73022e9f5a34529'),
(76, NULL, NULL, 'user', 96, NULL, '2012-01-31 14:15:31', '2012-01-31 14:15:31', 1, 'public/user/4c/004c_1207.jpg', 'jpg', 'm_IMG_0640.jpg', 'image', 'jpeg', 80239, '43bb12076f4e3226d58cd01c0db087be'),
(77, 76, 'thumb.profile', 'user', 96, NULL, '2012-01-31 14:15:31', '2012-01-31 14:15:31', 1, 'public/user/4d/004d_9066.jpg', 'jpg', 'p_IMG_0640.jpg', 'image', 'jpeg', 8880, '23289066e1ba0bf79b54f524523ab2dd'),
(78, 76, 'thumb.normal', 'user', 96, NULL, '2012-01-31 14:15:31', '2012-01-31 14:15:31', 1, 'public/user/4e/004e_8692.jpg', 'jpg', 'n_IMG_0640.jpg', 'image', 'jpeg', 1343, 'd09b8692fc734bbb83c576e55df2544b'),
(79, 76, 'thumb.icon', 'user', 96, 96, '2012-01-31 14:15:31', '2012-01-31 14:15:31', 1, 'public/user/4f/004f_734e.jpg', 'jpg', 'nis_004d_9066.jpg', 'image', 'jpeg', 1547, '37b6734e961141fc57785ee9cdda7633'),
(80, NULL, NULL, 'temporary', 1, NULL, '2012-01-31 21:20:33', '2012-01-31 21:20:33', 1, 'public/temporary/50/0050_96eb.png', 'png', 'm_12.png', 'image', 'png', 3310, '368d96eb33dbf8e2ed5ac7effc2e827e'),
(81, 80, 'thumb.profile', 'temporary', 1, NULL, '2012-01-31 21:20:33', '2012-01-31 21:20:33', 1, 'public/temporary/51/0051_96eb.png', 'png', 'p_12.png', 'image', 'png', 3310, '368d96eb33dbf8e2ed5ac7effc2e827e'),
(82, 80, 'thumb.normal', 'temporary', 1, NULL, '2012-01-31 21:20:33', '2012-01-31 21:20:33', 1, 'public/temporary/52/0052_6822.png', 'png', 'n_12.png', 'image', 'png', 2537, 'a18f6822f2298058a82a7c7e43422e9b'),
(83, 80, 'thumb.icon', 'temporary', 1, NULL, '2012-01-31 21:20:33', '2012-01-31 21:20:33', 1, 'public/temporary/53/0053_4445.png', 'png', 's_12.png', 'image', 'png', 2790, '20e544454f9ac3ae404e99ca03c4572b'),
(84, NULL, NULL, 'user', 1, 1, '2012-01-31 21:52:41', '2012-01-31 21:52:41', 1, 'public/user/54/0054_9af2.jpg', 'jpg', 'default_theme_m.jpg', 'image', 'jpeg', 1673, 'e5659af2ac15b5d091ef5364ac79b34d'),
(85, 84, 'thumb.profile', 'user', 1, 1, '2012-01-31 21:52:41', '2012-01-31 21:52:41', 1, 'public/user/55/0055_9af2.jpg', 'jpg', 'default_theme_p.jpg', 'image', 'jpeg', 1673, 'e5659af2ac15b5d091ef5364ac79b34d'),
(86, 84, 'thumb.normal', 'user', 1, 1, '2012-01-31 21:52:41', '2012-01-31 21:52:41', 1, 'public/user/56/0056_9af2.jpg', 'jpg', 'default_theme_in.jpg', 'image', 'jpeg', 1673, 'e5659af2ac15b5d091ef5364ac79b34d'),
(87, 84, 'thumb.icon', 'user', 1, 1, '2012-01-31 21:52:41', '2012-01-31 21:52:41', 1, 'public/user/57/0057_b12e.jpg', 'jpg', 'default_theme_is.jpg', 'image', 'jpeg', 864, '85d5b12e26ffe5c4998313b42001a10c'),
(88, NULL, NULL, 'user', 1383914828, 1383914828, '2012-02-01 23:03:11', '2012-02-01 23:03:11', 1, 'public/user/58/0058_47ff.jpg', 'jpg', 'Edi Headshot USAV (2x3)_m.jpg', 'image', 'jpeg', 47382, '6cc247ff75d903f42ede51ff2ace717b'),
(89, 88, 'thumb.profile', 'user', 1383914828, 1383914828, '2012-02-01 23:03:11', '2012-02-01 23:03:11', 1, 'public/user/59/0059_086d.jpg', 'jpg', 'Edi Headshot USAV (2x3)_p.jpg', 'image', 'jpeg', 11799, 'a888086dcc3333b889267f7ccf3d236a'),
(90, 88, 'thumb.normal', 'user', 1383914828, 1383914828, '2012-02-01 23:03:11', '2012-02-01 23:03:11', 1, 'public/user/5a/005a_c01d.jpg', 'jpg', 'Edi Headshot USAV (2x3)_in.jpg', 'image', 'jpeg', 4540, '0798c01d3d3075cdd6f4cb833b471513'),
(91, 88, 'thumb.icon', 'user', 1383914828, 1383914828, '2012-02-01 23:03:11', '2012-02-01 23:03:11', 1, 'public/user/5b/005b_7520.jpg', 'jpg', 'nis_0059_086d.jpg', 'image', 'jpeg', 1338, '14f075201da81fbe6c7842582341ba87');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_storage_mirrors`
--

CREATE TABLE IF NOT EXISTS `engine4_storage_mirrors` (
  `file_id` bigint(20) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`file_id`,`service_id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_storage_mirrors`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_storage_services`
--

CREATE TABLE IF NOT EXISTS `engine4_storage_services` (
  `service_id` int(10) unsigned NOT NULL auto_increment,
  `servicetype_id` int(10) unsigned NOT NULL,
  `config` text character set latin1 collate latin1_general_ci,
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `default` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `engine4_storage_services`
--

INSERT INTO `engine4_storage_services` (`service_id`, `servicetype_id`, `config`, `enabled`, `default`) VALUES
(1, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_storage_servicetypes`
--

CREATE TABLE IF NOT EXISTS `engine4_storage_servicetypes` (
  `servicetype_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(128) collate utf8_unicode_ci NOT NULL,
  `plugin` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `form` varchar(128) character set latin1 collate latin1_general_ci default NULL,
  `enabled` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`servicetype_id`),
  UNIQUE KEY `plugin` (`plugin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `engine4_storage_servicetypes`
--

INSERT INTO `engine4_storage_servicetypes` (`servicetype_id`, `title`, `plugin`, `form`, `enabled`) VALUES
(1, 'Local Storage', 'Storage_Service_Local', 'Storage_Form_Admin_Service_Local', 1),
(2, 'Database Storage', 'Storage_Service_Db', 'Storage_Form_Admin_Service_Db', 0),
(3, 'Amazon S3', 'Storage_Service_S3', 'Storage_Form_Admin_Service_S3', 1),
(4, 'Virtual File System', 'Storage_Service_Vfs', 'Storage_Form_Admin_Service_Vfs', 1),
(5, 'Round-Robin', 'Storage_Service_RoundRobin', 'Storage_Form_Admin_Service_RoundRobin', 0),
(6, 'Mirrored', 'Storage_Service_Mirrored', 'Storage_Form_Admin_Service_Mirrored', 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_block`
--

CREATE TABLE IF NOT EXISTS `engine4_user_block` (
  `user_id` int(11) unsigned NOT NULL,
  `blocked_user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`user_id`,`blocked_user_id`),
  KEY `REVERSE` (`blocked_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_block`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_facebook`
--

CREATE TABLE IF NOT EXISTS `engine4_user_facebook` (
  `user_id` int(11) unsigned NOT NULL,
  `facebook_uid` bigint(20) unsigned NOT NULL,
  `access_token` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `code` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `expires` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `facebook_uid` (`facebook_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_facebook`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_fields_maps`
--

CREATE TABLE IF NOT EXISTS `engine4_user_fields_maps` (
  `field_id` int(11) unsigned NOT NULL,
  `option_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  `order` smallint(6) NOT NULL,
  PRIMARY KEY  (`field_id`,`option_id`,`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_maps`
--

INSERT INTO `engine4_user_fields_maps` (`field_id`, `option_id`, `child_id`, `order`) VALUES
(0, 0, 1, 1),
(1, 1, 2, 1),
(1, 1, 3, 2),
(1, 1, 4, 3),
(1, 1, 37, 5),
(1, 1, 38, 4),
(1, 4, 14, 1),
(1, 4, 15, 3),
(1, 4, 16, 6),
(1, 4, 17, 7),
(1, 4, 18, 8),
(1, 4, 19, 9),
(1, 4, 20, 10),
(1, 4, 21, 11),
(1, 4, 22, 12),
(1, 4, 23, 13),
(1, 4, 24, 14),
(1, 4, 25, 15),
(1, 4, 26, 4),
(1, 4, 27, 5),
(1, 4, 35, 2),
(1, 8, 2, 9999),
(1, 8, 29, 9999),
(1, 8, 30, 9999);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_fields_meta`
--

CREATE TABLE IF NOT EXISTS `engine4_user_fields_meta` (
  `field_id` int(11) unsigned NOT NULL auto_increment,
  `type` varchar(24) character set latin1 collate latin1_general_ci NOT NULL,
  `label` varchar(64) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `alias` varchar(32) character set latin1 collate latin1_general_ci NOT NULL default '',
  `required` tinyint(1) NOT NULL default '0',
  `display` tinyint(1) unsigned NOT NULL,
  `publish` tinyint(1) unsigned NOT NULL default '0',
  `search` tinyint(1) unsigned NOT NULL default '0',
  `show` tinyint(1) unsigned NOT NULL default '1',
  `order` smallint(3) unsigned NOT NULL default '999',
  `config` text collate utf8_unicode_ci,
  `validators` text collate utf8_unicode_ci,
  `filters` text collate utf8_unicode_ci,
  `style` text collate utf8_unicode_ci,
  `error` text collate utf8_unicode_ci,
  `manage_edit` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `engine4_user_fields_meta`
--

INSERT INTO `engine4_user_fields_meta` (`field_id`, `type`, `label`, `description`, `alias`, `required`, `display`, `publish`, `search`, `show`, `order`, `config`, `validators`, `filters`, `style`, `error`, `manage_edit`) VALUES
(1, 'profile_type', 'Profile Type', '', 'profile_type', 1, 0, 0, 2, 1, 999, '', NULL, NULL, NULL, NULL, 0),
(2, 'heading', 'Personal Information', '', '', 0, 1, 0, 0, 1, 999, '', NULL, NULL, NULL, NULL, 0),
(3, 'first_name', 'First Name', '', 'first_name', 1, 1, 0, 1, 1, 999, '[]', '[["StringLength",false,[1,32]]]', NULL, '', '', 0),
(4, 'last_name', 'Last Name', '', 'last_name', 1, 1, 0, 1, 1, 999, '[]', '[["StringLength",false,[1,32]]]', NULL, '', '', 0),
(14, 'heading', 'Information', '', '', 0, 1, 0, 0, 1, 999, '{"submit":""}', NULL, NULL, NULL, NULL, 0),
(15, 'select', 'Number', '', '', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(16, 'select', 'Position', '', '', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(17, 'select', 'Height:', '', '', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(18, 'select', 'Graduation Year', '', '', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(19, 'radio', 'Committed', '', '', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(20, 'heading', '15-18''s Only', '', '', 0, 1, 0, 0, 1, 999, '{"submit":""}', NULL, NULL, NULL, NULL, 0),
(21, 'select', 'Standing Reach', '', '', 0, 2, 0, 0, 1, 999, '[]', NULL, NULL, '', '', 0),
(22, 'select', 'Block Reach', '', '', 0, 2, 0, 0, 1, 999, '[]', NULL, NULL, '', '', 0),
(23, 'select', 'Approach Reach', '', '', 0, 2, 0, 0, 1, 999, '[]', NULL, NULL, '', '', 0),
(24, 'textarea', 'Volleyball Experience', '', '', 0, 2, 0, 0, 1, 999, '[]', NULL, NULL, '', '', 0),
(25, 'textarea', 'Achievements and Honors', '', '', 0, 2, 0, 0, 1, 999, '[]', NULL, NULL, '', '', 0),
(26, 'first_name', 'First Name', '', 'first_name', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(27, 'last_name', 'Last Name', '', 'last_name', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(29, 'first_name', 'First Name', '', 'first_name', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(30, 'last_name', 'Last Name', '', 'last_name', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 0),
(35, 'select', 'Team', '', '', 1, 1, 0, 1, 1, 999, '[]', NULL, NULL, '', '', 1),
(37, 'multi_checkbox', 'Child''s Team(s)', '', '', 0, 1, 0, 0, 1, 999, '[]', NULL, NULL, '', '', 1),
(38, 'heading', 'For Player''s Parents Only', '', '', 0, 0, 0, 0, 1, 999, '{"submit":""}', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_fields_options`
--

CREATE TABLE IF NOT EXISTS `engine4_user_fields_options` (
  `option_id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `label` varchar(255) collate utf8_unicode_ci NOT NULL,
  `order` smallint(6) NOT NULL default '999',
  PRIMARY KEY  (`option_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=473 ;

--
-- Dumping data for table `engine4_user_fields_options`
--

INSERT INTO `engine4_user_fields_options` (`option_id`, `field_id`, `label`, `order`) VALUES
(1, 1, 'Other', 1),
(4, 1, 'Player', 999),
(5, 19, 'Yes', 179),
(6, 19, 'No', 180),
(8, 1, 'Coach', 999),
(9, 15, '1', 28),
(10, 15, '2', 29),
(11, 15, '3', 30),
(12, 15, '4', 31),
(13, 15, '5', 32),
(14, 15, '6', 33),
(15, 15, '7', 34),
(16, 15, '8', 35),
(17, 15, '9', 36),
(18, 15, '10', 37),
(19, 15, '11', 38),
(20, 15, '12', 39),
(22, 15, '13', 40),
(23, 15, '14', 41),
(24, 15, '15', 42),
(25, 15, '16', 43),
(26, 18, '2012', 166),
(27, 18, '2013', 167),
(28, 18, '2014', 168),
(29, 17, '4'' 5"', 134),
(30, 16, 'Outside Hitter', 132),
(31, 16, 'Right Side Hitter', 131),
(32, 16, 'Opposite Hitter', 130),
(33, 16, 'Setter', 129),
(34, 16, 'Middle Blocker', 128),
(35, 16, 'Libero', 127),
(36, 16, 'Defensive Specialist', 133),
(37, 15, '17', 44),
(38, 15, '18', 45),
(39, 15, '19', 46),
(40, 15, '20', 47),
(41, 15, '21', 48),
(43, 15, '22', 49),
(44, 15, '23', 50),
(45, 15, '24', 51),
(46, 15, '25', 52),
(47, 15, '26', 53),
(48, 15, '27', 54),
(49, 15, '28', 55),
(50, 15, '29', 56),
(51, 15, '30', 57),
(52, 15, '31', 58),
(53, 15, '32', 59),
(54, 15, '33', 60),
(55, 15, '34', 61),
(56, 15, '35', 62),
(57, 15, '36', 63),
(58, 15, '37', 64),
(59, 15, '38', 65),
(60, 15, '39', 66),
(61, 15, '40', 67),
(62, 15, '41', 68),
(63, 15, '42', 69),
(64, 15, '43', 70),
(65, 15, '44', 71),
(66, 15, '45', 72),
(67, 15, '46', 73),
(68, 15, '47', 74),
(69, 15, '48', 75),
(70, 15, '49', 76),
(71, 15, '50', 77),
(72, 15, '51', 78),
(73, 15, '52', 79),
(74, 15, '53', 80),
(75, 15, '54', 81),
(76, 15, '55', 82),
(77, 15, '56', 83),
(78, 15, '57', 84),
(79, 15, '58', 85),
(80, 15, '59', 86),
(81, 15, '60', 87),
(82, 15, '61', 88),
(83, 15, '62', 89),
(84, 15, '63', 90),
(85, 15, '64', 91),
(86, 15, '65', 92),
(87, 15, '66', 93),
(88, 15, '67', 94),
(89, 15, '68', 95),
(90, 15, '69', 96),
(91, 15, '70', 97),
(92, 15, '71', 98),
(93, 15, '72', 99),
(94, 15, '73', 100),
(95, 15, '74', 101),
(96, 15, '75', 102),
(97, 15, '76', 103),
(98, 15, '77', 104),
(99, 15, '78', 105),
(100, 15, '79', 106),
(101, 15, '80', 107),
(102, 15, '81', 108),
(103, 15, '82', 109),
(104, 15, '83', 110),
(105, 15, '84', 111),
(106, 15, '85', 112),
(107, 15, '86', 113),
(108, 15, '87', 114),
(109, 15, '88', 115),
(110, 15, '89', 116),
(111, 15, '90', 117),
(112, 15, '91', 118),
(113, 15, '92', 119),
(114, 15, '93', 120),
(115, 15, '94', 121),
(116, 15, '95', 122),
(117, 15, '96', 123),
(118, 15, '97', 124),
(119, 15, '98', 125),
(120, 15, '99', 126),
(121, 17, '4'' 6"', 135),
(122, 17, '4'' 7"', 136),
(123, 17, '4'' 8"', 137),
(124, 17, '4'' 9"', 138),
(125, 17, '5'' 0"', 141),
(126, 17, '5'' 1"', 142),
(127, 17, '5'' 2"', 143),
(128, 17, '5'' 6"', 147),
(129, 17, '5'' 3"', 144),
(130, 17, '5'' 4"', 145),
(131, 18, '2015', 169),
(132, 18, '2016', 170),
(133, 18, '2017', 171),
(134, 18, '2018', 172),
(135, 18, '2019', 173),
(136, 18, '2020', 174),
(137, 18, '2021', 175),
(138, 18, '2022', 176),
(139, 18, '2023', 177),
(140, 18, '2024', 178),
(141, 17, '5'' 5"', 146),
(142, 17, '5'' 7"', 148),
(143, 17, '5'' 8"', 149),
(144, 17, '5'' 9"', 150),
(145, 17, '6'' 0"', 153),
(146, 17, '6'' 1"', 154),
(147, 17, '6'' 2"', 155),
(148, 17, '6'' 3"', 156),
(149, 17, '6'' 4"', 157),
(150, 17, '6'' 5"', 158),
(151, 17, '6'' 6"', 159),
(152, 17, '6'' 7"', 160),
(153, 17, '6'' 8"', 161),
(154, 17, '6'' 9"', 162),
(155, 21, '4'' 6"', 181),
(156, 21, '4'' 7"', 182),
(157, 21, '4'' 8"', 183),
(158, 21, '4'' 9"', 184),
(159, 21, '5'' 0"', 187),
(160, 21, '5'' 1"', 188),
(161, 21, '5'' 2"', 189),
(162, 21, '5'' 6"', 190),
(163, 21, '5'' 3"', 191),
(164, 21, '5'' 4"', 192),
(165, 21, '5'' 5"', 193),
(166, 21, '5'' 7"', 194),
(167, 21, '5'' 8"', 195),
(168, 21, '5'' 9"', 196),
(169, 21, '6'' 0"', 199),
(170, 21, '6'' 1"', 200),
(171, 21, '6'' 2"', 201),
(172, 21, '6'' 3"', 202),
(173, 21, '6'' 4"', 203),
(174, 21, '6'' 5"', 204),
(175, 21, '6'' 6"', 205),
(176, 21, '6'' 7"', 206),
(177, 21, '6'' 8"', 207),
(178, 21, '6'' 9"', 208),
(179, 22, '4'' 6"', 259),
(180, 22, '4'' 7"', 260),
(181, 22, '4'' 8"', 261),
(182, 22, '4'' 9"', 262),
(183, 22, '5'' 0"', 265),
(184, 22, '5'' 1"', 266),
(185, 22, '5'' 2"', 267),
(186, 22, '5'' 6"', 268),
(187, 22, '5'' 3"', 269),
(188, 22, '5'' 4"', 270),
(189, 22, '5'' 5"', 271),
(190, 22, '5'' 7"', 272),
(191, 22, '5'' 8"', 273),
(192, 22, '5'' 9"', 274),
(193, 22, '6'' 0"', 277),
(194, 22, '6'' 1"', 278),
(195, 22, '6'' 2"', 279),
(196, 22, '6'' 3"', 280),
(197, 22, '6'' 4"', 281),
(198, 22, '6'' 5"', 282),
(199, 22, '6'' 6"', 283),
(200, 22, '6'' 7"', 284),
(201, 22, '6'' 8"', 285),
(202, 22, '6'' 9"', 286),
(203, 23, '4'' 6"', 337),
(204, 23, '4'' 7"', 338),
(205, 23, '4'' 8"', 339),
(206, 23, '4'' 9"', 340),
(207, 23, '5'' 0"', 343),
(208, 23, '5'' 1"', 346),
(209, 23, '5'' 2"', 347),
(210, 23, '5'' 6"', 350),
(211, 23, '5'' 3"', 351),
(212, 23, '5'' 4"', 353),
(213, 23, '5'' 5"', 356),
(214, 23, '5'' 7"', 358),
(215, 23, '5'' 8"', 359),
(216, 23, '5'' 9"', 361),
(217, 23, '6'' 0"', 368),
(218, 23, '6'' 1"', 370),
(219, 23, '6'' 2"', 371),
(220, 23, '6'' 3"', 374),
(221, 23, '6'' 4"', 375),
(222, 23, '6'' 5"', 377),
(223, 23, '6'' 6"', 380),
(224, 23, '6'' 7"', 381),
(225, 23, '6'' 8"', 384),
(226, 23, '6'' 9"', 386),
(227, 17, '4'' 10"', 139),
(228, 17, '4'' 11"', 140),
(229, 17, '5'' 10"', 151),
(230, 17, '5'' 11"', 152),
(238, 21, '4'' 10"', 185),
(239, 21, '4'' 11"', 186),
(240, 21, '5'' 10"', 197),
(241, 21, '5'' 11"', 198),
(242, 22, '4'' 10"', 263),
(243, 22, '4'' 11"', 264),
(244, 22, '5'' 10"', 275),
(245, 22, '5'' 11"', 276),
(246, 23, '4'' 10"', 341),
(247, 23, '4'' 11"', 342),
(248, 23, '5'' 10"', 364),
(249, 23, '5'' 11"', 366),
(250, 35, '13 Smack', 7),
(251, 35, '11 Smack', 1),
(252, 35, '11 Metro', 2),
(253, 35, '12 Smack', 3),
(254, 35, '12 National', 4),
(255, 35, '12 Metro (K. Wilson)', 5),
(256, 35, '12 Metro (H. Erickson)', 6),
(257, 35, '13 National', 8),
(258, 35, '13 Regional (B. Engel)', 9),
(259, 35, '13 Regional (E. Killackey)', 10),
(260, 35, '13 Metro (K. Thompson)', 11),
(261, 35, '13 Metro (E. Becerra)', 12),
(262, 35, '14 Smack', 13),
(263, 35, '14 National', 14),
(264, 35, '14 Regional (K. Ethridge)', 15),
(265, 35, '14 Regional (A. Sexton)', 16),
(266, 35, '14 Metro (H. Ruiz)', 17),
(267, 35, '14 Metro (B. Romero)', 18),
(268, 35, '15 Smack', 19),
(269, 35, '15 National', 20),
(270, 35, '15 Regional (E. Duda)', 21),
(271, 35, '15 Regional (E. Blake)', 22),
(272, 35, '16 Smack', 23),
(273, 35, '16 National', 24),
(274, 35, '16 Regional', 25),
(275, 35, '17 Smack', 26),
(276, 35, '18 Smack', 27),
(277, 21, '6'' 10"', 209),
(278, 21, '6'' 11"', 210),
(279, 21, '7'' 0"', 211),
(280, 21, '7'' 1"', 212),
(281, 21, '7'' 2"', 213),
(282, 21, '7'' 3"', 214),
(283, 21, '7'' 4"', 215),
(284, 21, '7'' 5"', 216),
(285, 21, '7'' 6"', 217),
(286, 21, '7'' 7"', 218),
(287, 21, '7'' 8"', 219),
(288, 21, '7'' 9"', 220),
(289, 21, '7'' 10"', 221),
(290, 21, '7'' 11"', 222),
(291, 21, '8'' 0"', 223),
(292, 21, '8'' 1"', 224),
(293, 21, '8'' 2"', 225),
(294, 21, '8'' 3"', 226),
(295, 21, '8'' 4"', 227),
(296, 21, '8'' 5"', 228),
(297, 21, '8'' 6"', 229),
(298, 21, '8'' 7"', 230),
(299, 21, '8'' 8"', 231),
(300, 21, '8'' 9"', 232),
(301, 21, '8'' 10"', 233),
(302, 21, '8'' 11"', 234),
(303, 21, '9'' 0"', 235),
(304, 21, '9'' 1"', 236),
(305, 21, '9'' 2"', 237),
(306, 21, '9'' 3"', 238),
(307, 21, '9'' 4"', 239),
(308, 21, '9'' 5"', 240),
(309, 21, '9'' 6"', 241),
(310, 21, '9'' 7"', 242),
(311, 21, '9'' 8"', 243),
(312, 21, '9'' 9"', 244),
(313, 21, '9'' 10"', 245),
(314, 21, '9'' 11"', 246),
(315, 21, '10'' 0"', 247),
(316, 21, '10'' 1"', 248),
(317, 21, '10'' 2"', 249),
(318, 21, '10'' 3"', 250),
(319, 21, '10'' 4"', 251),
(320, 21, '10'' 5"', 252),
(321, 21, '10'' 6"', 253),
(322, 21, '10'' 7"', 254),
(323, 21, '10'' 8"', 255),
(324, 21, '10'' 9"', 256),
(325, 21, '10'' 10"', 257),
(326, 21, '10'' 11"', 258),
(327, 22, '6'' 10"', 287),
(328, 22, '6'' 11"', 288),
(329, 22, '7'' 0"', 289),
(330, 22, '7'' 1"', 290),
(331, 22, '7'' 2"', 291),
(332, 22, '7'' 3"', 292),
(333, 22, '7'' 4"', 293),
(334, 22, '7'' 5"', 294),
(335, 22, '7'' 6"', 295),
(336, 22, '7'' 7"', 296),
(337, 22, '7'' 8"', 297),
(338, 22, '7'' 9"', 298),
(339, 22, '7'' 10"', 299),
(340, 22, '7'' 11"', 300),
(341, 22, '8'' 0"', 301),
(342, 22, '8'' 1"', 302),
(343, 22, '8'' 2"', 303),
(344, 22, '8'' 3"', 304),
(345, 22, '8'' 4"', 305),
(346, 22, '8'' 5"', 306),
(347, 22, '8'' 6"', 307),
(348, 22, '8'' 7"', 308),
(349, 22, '8'' 8"', 309),
(350, 22, '8'' 9"', 310),
(351, 22, '8'' 10"', 311),
(352, 22, '8'' 11"', 312),
(353, 22, '9'' 0"', 313),
(354, 22, '9'' 1"', 314),
(355, 22, '9'' 2"', 315),
(356, 22, '9'' 3"', 316),
(357, 22, '9'' 4"', 317),
(358, 22, '9'' 5"', 318),
(359, 22, '9'' 6"', 319),
(360, 22, '9'' 7"', 320),
(361, 22, '9'' 8"', 321),
(362, 22, '9'' 9"', 322),
(363, 22, '9'' 10"', 323),
(364, 22, '9'' 11"', 324),
(365, 22, '10'' 0"', 325),
(366, 22, '10'' 1"', 326),
(367, 22, '10'' 2"', 327),
(368, 22, '10'' 3"', 328),
(369, 22, '10'' 4"', 329),
(370, 22, '10'' 5"', 330),
(371, 22, '10'' 6"', 331),
(372, 22, '10'' 7"', 332),
(373, 22, '10'' 8"', 333),
(374, 22, '10'' 9"', 334),
(375, 22, '10'' 10"', 335),
(376, 22, '10'' 11"', 336),
(377, 23, '6'' 10"', 344),
(378, 23, '6'' 11"', 345),
(379, 23, '7'' 0"', 348),
(380, 23, '7'' 1"', 349),
(381, 23, '7'' 2"', 352),
(382, 23, '7'' 3"', 354),
(383, 23, '7'' 4"', 355),
(384, 23, '7'' 5"', 357),
(385, 23, '7'' 6"', 360),
(386, 23, '7'' 7"', 362),
(387, 23, '7'' 8"', 363),
(388, 23, '7'' 9"', 365),
(389, 23, '7'' 10"', 367),
(390, 23, '7'' 11"', 369),
(391, 23, '8'' 0"', 372),
(392, 23, '8'' 1"', 373),
(393, 23, '8'' 2"', 376),
(394, 23, '8'' 3"', 378),
(395, 23, '8'' 4"', 379),
(396, 23, '8'' 5"', 382),
(397, 23, '8'' 6"', 383),
(398, 23, '8'' 7"', 385),
(399, 23, '8'' 8"', 387),
(400, 23, '8'' 9"', 388),
(401, 23, '8'' 10"', 389),
(402, 23, '8'' 11"', 390),
(403, 23, '9'' 0"', 391),
(404, 23, '9'' 1"', 392),
(405, 23, '9'' 2"', 393),
(406, 23, '9'' 3"', 394),
(407, 23, '9'' 4"', 395),
(408, 23, '9'' 5"', 396),
(409, 23, '9'' 6"', 397),
(410, 23, '9'' 7"', 398),
(411, 23, '9'' 8"', 399),
(412, 23, '9'' 9"', 400),
(413, 23, '9'' 10"', 401),
(414, 23, '9'' 11"', 402),
(415, 23, '10'' 0"', 403),
(416, 23, '10'' 1"', 404),
(417, 23, '10'' 2"', 405),
(418, 23, '10'' 3"', 406),
(419, 23, '10'' 4"', 407),
(420, 23, '10'' 5"', 408),
(421, 23, '10'' 6"', 409),
(422, 23, '10'' 7"', 410),
(423, 23, '10'' 8"', 411),
(424, 23, '10'' 9"', 412),
(425, 23, '10'' 10"', 413),
(426, 23, '10'' 11"', 414),
(427, 17, '6'' 10"', 163),
(428, 17, '6'' 11"', 164),
(429, 17, '7'' 0"', 165),
(434, 37, '11 Smack', 1),
(435, 37, '11 Metro', 2),
(436, 37, '12 Smack', 4),
(437, 37, '12 National', 3),
(438, 37, '12 Metro (K. Wilson)', 6),
(439, 37, '12 Metro (H. Erickson)', 5),
(450, 37, '13 Smack', 8),
(451, 37, '13 National', 7),
(452, 37, '13 Regional (B. Engel)', 9),
(453, 37, '13 Regional (E. Killackey)', 10),
(454, 37, '13 Metro (K. Thompson)', 12),
(455, 37, '13 Metro (E. Becerra)', 11),
(456, 37, '14 Smack', 14),
(457, 37, '14 National', 13),
(458, 37, '14 Regional (K. Ethridge)', 15),
(459, 37, '14 Regional (A. Sexton)', 16),
(460, 37, '14 Metro (H. Ruiz)', 18),
(461, 37, '14 Metro (B. Romero)', 17),
(462, 37, '15 Smack', 20),
(463, 37, '15 National', 19),
(464, 37, '15 Regional (E. Duda)', 22),
(465, 37, '15 Regional (E. Blake)', 21),
(466, 37, '16 Smack', 24),
(467, 37, '16 National', 23),
(468, 37, '16 Regional', 25),
(469, 37, '17 Smack', 26),
(470, 37, '18 Smack', 27),
(471, 37, 'Skills Clinics', 28),
(472, 37, 'Other', 29);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_fields_search`
--

CREATE TABLE IF NOT EXISTS `engine4_user_fields_search` (
  `item_id` int(11) unsigned NOT NULL,
  `profile_type` enum('1','8','4','430','431') collate utf8_unicode_ci default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `gender` smallint(6) unsigned default NULL,
  `birthdate` date default NULL,
  `field_15` enum('9','10','11','12','13','14','15','16','17','18','19','20','22','23','24','25','37','38','39','40','41','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120') collate utf8_unicode_ci default NULL,
  `field_16` enum('34','33','32','31','30','35','36') collate utf8_unicode_ci default NULL,
  `field_17` enum('29','121','122','123','124','227','228','125','126','127','129','130','141','128','142','143','144','229','230','145','146','147','148','149','150','151','152','153','154','427','428','429') collate utf8_unicode_ci default NULL,
  `field_18` enum('26','27','28','131','132','133','134','135','136','137','138','139','140') collate utf8_unicode_ci default NULL,
  `field_19` enum('5','6') collate utf8_unicode_ci default NULL,
  `field_31` varchar(255) collate utf8_unicode_ci default NULL,
  `field_32` varchar(255) collate utf8_unicode_ci default NULL,
  `field_33` varchar(255) collate utf8_unicode_ci default NULL,
  `field_34` varchar(255) collate utf8_unicode_ci default NULL,
  `field_35` enum('251','252','253','254','255','256','250','257','258','259','260','261','262','263','264','265','266','267','268','269','270','271','272','273','274','275','276') collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`item_id`),
  KEY `gender` (`gender`),
  KEY `birthdate` (`birthdate`),
  KEY `field_16` (`field_16`),
  KEY `field_19` (`field_19`),
  KEY `field_18` (`field_18`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `field_31` (`field_31`),
  KEY `field_32` (`field_32`),
  KEY `field_33` (`field_33`),
  KEY `field_34` (`field_34`),
  KEY `field_17` (`field_17`),
  KEY `profile_type` (`profile_type`),
  KEY `field_35` (`field_35`),
  KEY `field_15` (`field_15`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_search`
--

INSERT INTO `engine4_user_fields_search` (`item_id`, `profile_type`, `first_name`, `last_name`, `gender`, `birthdate`, `field_15`, `field_16`, `field_17`, `field_18`, `field_19`, `field_31`, `field_32`, `field_33`, `field_34`, `field_35`) VALUES
(1, '8', 'System', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1', 'Secondary', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '4', 'Kate', 'Decker', NULL, NULL, '13', '31', '144', '28', '6', NULL, NULL, NULL, NULL, '275'),
(14, '1', 'Jenni', 'Choi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '4', 'Bailey', 'Rucker', NULL, NULL, '16', '30', '130', '131', '5', NULL, NULL, NULL, NULL, '271'),
(17, '4', 'Emily', 'Roberts', NULL, NULL, '14', '33', '130', '131', '6', NULL, NULL, NULL, NULL, '271'),
(18, '4', 'Diane', 'Fair', NULL, NULL, '16', '33', '125', '134', '6', NULL, NULL, NULL, NULL, '253'),
(19, '4', 'Jillian', 'Crotts', NULL, NULL, '15', '33', '129', '134', '5', NULL, NULL, NULL, NULL, '253'),
(20, '1', 'Tonya', 'Bell', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '4', 'Alyssa', 'Bert', NULL, NULL, '11', '30', '126', '135', '6', NULL, NULL, NULL, NULL, '253'),
(22, '4', 'Bailee', 'Wright', NULL, NULL, '14', '30', '127', '134', '6', NULL, NULL, NULL, NULL, '253'),
(23, '4', 'Kristen', 'Macy', NULL, NULL, '12', '30', '145', '27', '6', NULL, NULL, NULL, NULL, '272'),
(24, '4', 'Sarah', 'Decker', NULL, NULL, '18', '35', '125', '132', '6', NULL, NULL, NULL, NULL, '262'),
(25, '4', 'Katie', 'Roberts', NULL, NULL, '16', '33', '142', '26', '6', NULL, NULL, NULL, NULL, '263'),
(26, '1', 'Becky', 'Ethridge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '4', 'McKinly', 'Dortch', NULL, NULL, '12', '35', '129', '132', '6', NULL, NULL, NULL, NULL, '266'),
(28, '4', 'Ericka', 'Scholl', NULL, NULL, '11', '33', '126', '133', '6', NULL, NULL, NULL, NULL, '257'),
(29, '1', 'Terri', 'McCoy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '4', 'Bethany', 'Wrasse', NULL, NULL, '9', '36', '129', '133', '6', NULL, NULL, NULL, NULL, '261'),
(31, '4', 'Miranda', 'Rude', NULL, NULL, '15', '30', '128', '131', '5', NULL, NULL, NULL, NULL, '271'),
(32, '4', 'Claire', 'Kelley', NULL, NULL, '18', '33', '229', '27', '6', NULL, NULL, NULL, NULL, '275'),
(33, '4', 'Katelyn', 'Robnett', NULL, NULL, '45', '33', '128', '131', '6', NULL, NULL, NULL, NULL, '274'),
(34, '4', 'Hannah', 'Frogge', NULL, NULL, '37', '30', '144', '28', '6', NULL, NULL, NULL, NULL, '274'),
(35, '4', 'Tayler ', 'Burzette', NULL, NULL, '16', '34', '142', '28', '6', NULL, NULL, NULL, NULL, '274'),
(36, '4', 'Teagan', 'Polcovich', NULL, NULL, '15', '33', '122', '136', '5', NULL, NULL, NULL, NULL, '251'),
(37, '4', 'Aeriel', 'Jackson', NULL, NULL, '14', '34', '229', '132', '6', NULL, NULL, NULL, NULL, '262'),
(38, '4', 'Lauren', 'Burgess', NULL, NULL, '16', '30', '125', '135', '5', NULL, NULL, NULL, NULL, '255'),
(39, '4', 'Allie', 'Rice', NULL, NULL, '12', '30', '125', '134', '6', NULL, NULL, NULL, NULL, '255'),
(40, '4', 'Sarah', 'Johnson', NULL, NULL, '16', '34', '142', '132', '6', NULL, NULL, NULL, NULL, '265'),
(43, '4', 'Ashley', 'Wade', NULL, NULL, '9', '30', '142', '132', '6', NULL, NULL, NULL, NULL, '265'),
(44, '4', 'Josie', 'Gandall', NULL, NULL, '39', '30', '145', '28', '6', NULL, NULL, NULL, NULL, '272'),
(45, '4', 'Isabel', 'Harwell', NULL, NULL, '13', '35', '122', '134', '6', NULL, NULL, NULL, NULL, '253'),
(46, '4', 'Madison', 'Bolles', NULL, NULL, '12', '36', '130', '133', '5', NULL, NULL, NULL, NULL, '259'),
(47, '4', 'Madison', 'Ward', NULL, NULL, '43', '30', '146', '26', '5', NULL, NULL, NULL, NULL, '276'),
(48, '4', 'Miranda', 'Zawisza', NULL, NULL, '17', '33', '128', '132', '6', NULL, NULL, NULL, NULL, '265'),
(49, '4', 'Maicee', 'Morgan', NULL, NULL, '18', '30', '129', '135', '5', NULL, NULL, NULL, NULL, '252'),
(50, '8', 'Kimo', 'Aweau', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '8', 'Kristen', 'Wilson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '8', 'Will', 'Ethridge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '8', 'Randy', 'Decker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '8', 'Jeff', 'Boyland', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '8', 'Kena', 'Thompson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '8', 'Elliot', 'Blake', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '4', 'Samantha', 'Bradley', NULL, NULL, '18', '34', '230', '132', '6', NULL, NULL, NULL, NULL, '263'),
(58, '8', 'Lisa', 'Polcovich', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '8', 'Heather ', 'Erickson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '4', 'Sophie', 'Bonadeo', NULL, NULL, '13', '31', '130', '133', '6', NULL, NULL, NULL, NULL, '257'),
(61, '4', 'Taylor', 'Harvick', NULL, NULL, '9', '34', '142', '133', '6', NULL, NULL, NULL, NULL, '260'),
(62, '4', 'Ciera', 'Jesse', NULL, NULL, '15', '36', '125', '132', '5', NULL, NULL, NULL, NULL, '266'),
(63, '4', 'Anna', 'Peacock', NULL, NULL, '10', '31', '144', '134', '6', NULL, NULL, NULL, NULL, '258'),
(64, '4', 'Peyton', 'Fryer', NULL, NULL, '10', '30', '227', '134', '5', NULL, NULL, NULL, NULL, '255'),
(65, '4', 'Sydney', 'Miles', NULL, NULL, '17', '33', '146', '26', '5', NULL, NULL, NULL, NULL, '276'),
(66, '4', 'Paige', 'Miles', NULL, NULL, '15', '33', '144', '132', '6', NULL, NULL, NULL, NULL, '262'),
(67, '4', 'Kenna', 'Macy', NULL, NULL, '12', '30', '141', '132', '6', NULL, NULL, NULL, NULL, '264'),
(68, '4', 'Timmie', 'Dorsey', NULL, NULL, '18', '35', '29', '135', '6', NULL, NULL, NULL, NULL, '251'),
(69, '8', 'Alica', 'Sexton', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '4', 'Samantha', 'Srite', NULL, NULL, '13', '35', '127', '133', '6', NULL, NULL, NULL, NULL, '258'),
(71, '4', 'Rachel', 'Manriquez', NULL, NULL, '11', '35', '141', '28', '6', NULL, NULL, NULL, NULL, '272'),
(72, '1', 'B. DeWayne', 'Benson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '4', 'Alissa', 'Benson', NULL, NULL, '53', '33', '230', '28', '6', NULL, NULL, NULL, NULL, '272'),
(74, '4', 'Maggie', 'Benson', NULL, NULL, '12', '30', '144', '27', '6', NULL, NULL, NULL, NULL, '275'),
(75, '4', 'Anna', 'Wiewel', NULL, NULL, '13', '33', '125', '133', '6', NULL, NULL, NULL, NULL, '261'),
(77, '8', 'Sammy', 'Duncan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '8', 'Michelle', 'Boevers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '8', 'Heather', 'Ruiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '4', 'Paige', 'Wekenborg', NULL, NULL, '13', '30', '142', '132', '6', NULL, NULL, NULL, NULL, '263'),
(81, '4', 'Jessie', 'Heiden', NULL, NULL, '12', '30', '142', '28', '6', NULL, NULL, NULL, NULL, '273'),
(82, '4', 'Jennifer', 'Brooks', NULL, NULL, '18', '35', '129', '132', '6', NULL, NULL, NULL, NULL, '264'),
(83, '4', 'REGAN', 'DEQUASIE', NULL, NULL, '16', '30', '229', '132', '6', NULL, NULL, NULL, NULL, '264'),
(84, '8', 'Mark', 'Herrin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '4', 'Skylar', 'Hamlett', NULL, NULL, '12', '34', '142', '132', '5', NULL, NULL, NULL, NULL, '258'),
(86, '4', 'Reagan', 'Gantz', NULL, NULL, '11', '31', '143', '132', '6', NULL, NULL, NULL, NULL, '263'),
(87, '8', 'Natalie', 'Murray', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '4', 'Emma', 'Nettleton', NULL, NULL, '16', '31', '128', '134', '5', NULL, NULL, NULL, NULL, '256'),
(89, '4', 'Sarah', 'Gilkerson', NULL, NULL, '15', '34', '128', '132', '6', NULL, NULL, NULL, NULL, '264'),
(90, '4', 'Haley', 'Cochran', NULL, NULL, '19', '35', '141', '28', '6', NULL, NULL, NULL, NULL, '273'),
(91, '4', 'Madison', 'Pearson', NULL, NULL, '13', '34', '143', '132', '5', NULL, NULL, NULL, NULL, '262'),
(92, '4', 'Taryn', 'Boyland', NULL, NULL, '11', '36', '126', '133', '6', NULL, NULL, NULL, NULL, '250'),
(93, '4', 'Lakyn', 'Massengill', NULL, NULL, '14', '35', '122', '134', '6', NULL, NULL, NULL, NULL, '256'),
(94, '4', 'SYDNEY', 'MEGET', NULL, NULL, '9', '33', '130', '132', '6', NULL, NULL, NULL, NULL, '264'),
(95, '4', 'Reagan', 'Baker', NULL, NULL, '12', '33', '228', '135', '6', NULL, NULL, NULL, NULL, '252'),
(96, '8', 'Elanna', 'Killackey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573980572, '4', 'Savannah', 'Onley', NULL, NULL, '12', '30', '229', '133', '6', NULL, NULL, NULL, NULL, '262'),
(674218479, '4', 'Shary', 'Bouvette', NULL, NULL, '9', '36', '129', '133', '6', NULL, NULL, NULL, NULL, '262'),
(886555540, '4', 'Chanelle', 'McCormick', NULL, NULL, '23', '34', '230', '28', '6', NULL, NULL, NULL, NULL, '272'),
(1383914828, '8', 'Edgar', 'Miraku', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1610159378, '4', 'Kenna', 'Macy', NULL, NULL, '12', '30', '141', '132', '6', NULL, NULL, NULL, NULL, '264'),
(1617228157, '4', 'Ashley', 'McCoy', NULL, NULL, '20', '34', '229', '28', '6', NULL, NULL, NULL, NULL, '272'),
(1829893787, '4', 'Livi', 'Schiffner', NULL, NULL, '9', '34', '145', '131', '6', NULL, NULL, NULL, NULL, '268'),
(2002635803, '4', 'Lindsey', 'Roy', NULL, NULL, '10', '33', '145', '27', '6', NULL, NULL, NULL, NULL, '275'),
(2031245164, '4', 'Jenny', 'Roy', NULL, NULL, '12', '34', '230', '131', '6', NULL, NULL, NULL, NULL, '268');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_fields_values`
--

CREATE TABLE IF NOT EXISTS `engine4_user_fields_values` (
  `item_id` int(11) unsigned NOT NULL,
  `field_id` int(11) unsigned NOT NULL,
  `index` smallint(3) unsigned NOT NULL default '0',
  `value` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`item_id`,`field_id`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_fields_values`
--

INSERT INTO `engine4_user_fields_values` (`item_id`, `field_id`, `index`, `value`) VALUES
(1, 1, 0, '8'),
(1, 29, 0, 'System'),
(1, 30, 0, 'Administrator'),
(6, 1, 0, '1'),
(6, 3, 0, 'Secondary'),
(6, 4, 0, 'Admin'),
(13, 1, 0, '4'),
(13, 15, 0, '13'),
(13, 16, 0, '31'),
(13, 17, 0, '144'),
(13, 18, 0, '28'),
(13, 19, 0, '6'),
(13, 26, 0, 'Kate'),
(13, 27, 0, 'Decker'),
(13, 35, 0, '275'),
(14, 1, 0, '1'),
(14, 3, 0, 'Jenni'),
(14, 4, 0, 'Choi'),
(16, 1, 0, '4'),
(16, 15, 0, '16'),
(16, 16, 0, '30'),
(16, 17, 0, '130'),
(16, 18, 0, '131'),
(16, 19, 0, '5'),
(16, 26, 0, 'Bailey'),
(16, 27, 0, 'Rucker'),
(16, 35, 0, '271'),
(17, 1, 0, '4'),
(17, 15, 0, '14'),
(17, 16, 0, '33'),
(17, 17, 0, '130'),
(17, 18, 0, '131'),
(17, 19, 0, '6'),
(17, 24, 0, 'OP2 Club Volleyball - 4th year\r\nOCS High School Varsity'),
(17, 26, 0, 'Emily'),
(17, 27, 0, 'Roberts'),
(17, 35, 0, '271'),
(18, 1, 0, '4'),
(18, 15, 0, '16'),
(18, 16, 0, '33'),
(18, 17, 0, '125'),
(18, 18, 0, '134'),
(18, 19, 0, '6'),
(18, 26, 0, 'Diane'),
(18, 27, 0, 'Fair'),
(18, 35, 0, '253'),
(19, 1, 0, '4'),
(19, 15, 0, '15'),
(19, 16, 0, '33'),
(19, 17, 0, '129'),
(19, 18, 0, '134'),
(19, 19, 0, '5'),
(19, 26, 0, 'Jillian'),
(19, 27, 0, 'Crotts'),
(19, 35, 0, '253'),
(20, 1, 0, '1'),
(20, 3, 0, 'Tonya'),
(20, 4, 0, 'Bell'),
(21, 1, 0, '4'),
(21, 15, 0, '11'),
(21, 16, 0, '30'),
(21, 17, 0, '126'),
(21, 18, 0, '135'),
(21, 19, 0, '6'),
(21, 26, 0, 'Alyssa'),
(21, 27, 0, 'Bert'),
(21, 35, 0, '253'),
(22, 1, 0, '4'),
(22, 15, 0, '14'),
(22, 16, 0, '30'),
(22, 17, 0, '127'),
(22, 18, 0, '134'),
(22, 19, 0, '6'),
(22, 26, 0, 'Bailee'),
(22, 27, 0, 'Wright'),
(22, 35, 0, '253'),
(23, 1, 0, '4'),
(23, 15, 0, '12'),
(23, 16, 0, '30'),
(23, 17, 0, '145'),
(23, 18, 0, '27'),
(23, 19, 0, '6'),
(23, 26, 0, 'Kristen'),
(23, 27, 0, 'Macy'),
(23, 35, 0, '272'),
(24, 1, 0, '4'),
(24, 15, 0, '18'),
(24, 16, 0, '35'),
(24, 17, 0, '125'),
(24, 18, 0, '132'),
(24, 19, 0, '6'),
(24, 26, 0, 'Sarah'),
(24, 27, 0, 'Decker'),
(24, 35, 0, '262'),
(25, 1, 0, '4'),
(25, 15, 0, '16'),
(25, 16, 0, '33'),
(25, 17, 0, '142'),
(25, 18, 0, '26'),
(25, 19, 0, '6'),
(25, 24, 0, 'Op2 11 Smack, 12 Smack, 13 Smack'),
(25, 26, 0, 'Katie'),
(25, 27, 0, 'Roberts'),
(25, 35, 0, '263'),
(26, 1, 0, '1'),
(26, 3, 0, 'Becky'),
(26, 4, 0, 'Ethridge'),
(27, 1, 0, '4'),
(27, 15, 0, '12'),
(27, 16, 0, '35'),
(27, 17, 0, '129'),
(27, 18, 0, '132'),
(27, 19, 0, '6'),
(27, 26, 0, 'McKinly'),
(27, 27, 0, 'Dortch'),
(27, 35, 0, '266'),
(28, 1, 0, '4'),
(28, 15, 0, '11'),
(28, 16, 0, '33'),
(28, 17, 0, '126'),
(28, 18, 0, '133'),
(28, 19, 0, '6'),
(28, 26, 0, 'Ericka'),
(28, 27, 0, 'Scholl'),
(28, 35, 0, '257'),
(29, 1, 0, '1'),
(29, 3, 0, 'Terri'),
(29, 4, 0, 'McCoy'),
(30, 1, 0, '4'),
(30, 15, 0, '9'),
(30, 16, 0, '36'),
(30, 17, 0, '129'),
(30, 18, 0, '133'),
(30, 19, 0, '6'),
(30, 26, 0, 'Bethany'),
(30, 27, 0, 'Wrasse'),
(30, 35, 0, '261'),
(31, 1, 0, '4'),
(31, 15, 0, '15'),
(31, 16, 0, '30'),
(31, 17, 0, '128'),
(31, 18, 0, '131'),
(31, 19, 0, '5'),
(31, 24, 0, 'This is our 4th year with PEAK. She plays for Santa Fe Volley ball team. Miranda has been playing volleyball since she was 9. '),
(31, 26, 0, 'Miranda'),
(31, 27, 0, 'Rude'),
(31, 35, 0, '271'),
(32, 1, 0, '4'),
(32, 15, 0, '18'),
(32, 16, 0, '33'),
(32, 17, 0, '229'),
(32, 18, 0, '27'),
(32, 19, 0, '6'),
(32, 26, 0, 'Claire'),
(32, 27, 0, 'Kelley'),
(32, 35, 0, '275'),
(33, 1, 0, '4'),
(33, 15, 0, '45'),
(33, 16, 0, '33'),
(33, 17, 0, '128'),
(33, 18, 0, '131'),
(33, 19, 0, '6'),
(33, 24, 0, '6th year in club ball (playing primarily DS/Libero for OP2 12-2, 12-2, 13-2 and 14-2 and for 15-1 Oklahoma Charge; playing setter for OP2 16-3).\r\nPlayed Libero and Outside Hitter for Edmond North HS Freshman Team.\r\nPlayed on varsity as 7th and 8th grader for Sequoyah Middle School (DS in 7th grade; all around in 8th grade), when team won Metro Conference and All-Edmond tournament titles in 7th grade and All-Edmond tournament title in 8th grade.'),
(33, 26, 0, 'Katelyn'),
(33, 27, 0, 'Robnett'),
(33, 35, 0, '274'),
(34, 1, 0, '4'),
(34, 15, 0, '37'),
(34, 16, 0, '30'),
(34, 17, 0, '144'),
(34, 18, 0, '28'),
(34, 19, 0, '6'),
(34, 26, 0, 'Hannah'),
(34, 27, 0, 'Frogge'),
(34, 35, 0, '274'),
(35, 1, 0, '4'),
(35, 15, 0, '16'),
(35, 16, 0, '34'),
(35, 17, 0, '142'),
(35, 18, 0, '28'),
(35, 19, 0, '6'),
(35, 24, 0, 'Playing volleyball since 8th grade. Played club ball for Elite club fall of 2010-2011.  Freshmen year played high school volleyball on the freshmen and JV team.  Sophomore year in high school played JV and varsity. Currently playing club ball for Peak fall of 2011-2012. '),
(35, 25, 0, 'Received many medals in track 7th and 8th grade year. Freshmen year medal for all around player in volleyball.  Currently in STUCCO and hold a GPA of 3.3.\r\n'),
(35, 26, 0, 'Tayler '),
(35, 27, 0, 'Burzette'),
(35, 35, 0, '274'),
(36, 1, 0, '4'),
(36, 15, 0, '15'),
(36, 16, 0, '33'),
(36, 17, 0, '122'),
(36, 18, 0, '136'),
(36, 19, 0, '5'),
(36, 26, 0, 'Teagan'),
(36, 27, 0, 'Polcovich'),
(36, 35, 0, '251'),
(37, 1, 0, '4'),
(37, 15, 0, '14'),
(37, 16, 0, '34'),
(37, 17, 0, '229'),
(37, 18, 0, '132'),
(37, 19, 0, '6'),
(37, 26, 0, 'Aeriel'),
(37, 27, 0, 'Jackson'),
(37, 35, 0, '262'),
(38, 1, 0, '4'),
(38, 15, 0, '16'),
(38, 16, 0, '30'),
(38, 17, 0, '125'),
(38, 18, 0, '135'),
(38, 19, 0, '5'),
(38, 26, 0, 'Lauren'),
(38, 27, 0, 'Burgess'),
(38, 35, 0, '255'),
(39, 1, 0, '4'),
(39, 15, 0, '12'),
(39, 16, 0, '30'),
(39, 17, 0, '125'),
(39, 18, 0, '134'),
(39, 19, 0, '6'),
(39, 26, 0, 'Allie'),
(39, 27, 0, 'Rice'),
(39, 35, 0, '255'),
(40, 1, 0, '4'),
(40, 15, 0, '16'),
(40, 16, 0, '34'),
(40, 17, 0, '142'),
(40, 18, 0, '132'),
(40, 19, 0, '6'),
(40, 26, 0, 'Sarah'),
(40, 27, 0, 'Johnson'),
(40, 35, 0, '265'),
(43, 1, 0, '4'),
(43, 15, 0, '9'),
(43, 16, 0, '30'),
(43, 17, 0, '142'),
(43, 18, 0, '132'),
(43, 19, 0, '6'),
(43, 26, 0, 'Ashley'),
(43, 27, 0, 'Wade'),
(43, 35, 0, '265'),
(44, 1, 0, '4'),
(44, 15, 0, '39'),
(44, 16, 0, '30'),
(44, 17, 0, '145'),
(44, 18, 0, '28'),
(44, 19, 0, '6'),
(44, 21, 0, '288'),
(44, 22, 0, '353'),
(44, 23, 0, '408'),
(44, 24, 0, 'Played Club volleyball for four years.  Attend Bishop Kelley High School in Tulsa, Oklahoma.  '),
(44, 25, 0, 'Lettered for Varsity (freshman and sophomore)\r\nSophomore starting OH Bishop Kelley and 6A State Champions\r\n2010 Bartlesville Varsity Tournament (All Tournament Team)'),
(44, 26, 0, 'Josie'),
(44, 27, 0, 'Gandall'),
(44, 35, 0, '272'),
(45, 1, 0, '4'),
(45, 15, 0, '13'),
(45, 16, 0, '35'),
(45, 17, 0, '122'),
(45, 18, 0, '134'),
(45, 19, 0, '6'),
(45, 26, 0, 'Isabel'),
(45, 27, 0, 'Harwell'),
(45, 35, 0, '253'),
(46, 1, 0, '4'),
(46, 15, 0, '12'),
(46, 16, 0, '36'),
(46, 17, 0, '130'),
(46, 18, 0, '133'),
(46, 19, 0, '5'),
(46, 26, 0, 'Madison'),
(46, 27, 0, 'Bolles'),
(46, 35, 0, '259'),
(47, 1, 0, '4'),
(47, 15, 0, '43'),
(47, 16, 0, '30'),
(47, 17, 0, '146'),
(47, 18, 0, '26'),
(47, 19, 0, '5'),
(47, 26, 0, 'Madison'),
(47, 27, 0, 'Ward'),
(47, 35, 0, '276'),
(48, 1, 0, '4'),
(48, 15, 0, '17'),
(48, 16, 0, '33'),
(48, 17, 0, '128'),
(48, 18, 0, '132'),
(48, 19, 0, '6'),
(48, 26, 0, 'Miranda'),
(48, 27, 0, 'Zawisza'),
(48, 35, 0, '265'),
(49, 1, 0, '4'),
(49, 15, 0, '18'),
(49, 16, 0, '30'),
(49, 17, 0, '129'),
(49, 18, 0, '135'),
(49, 19, 0, '5'),
(49, 26, 0, 'Maicee'),
(49, 27, 0, 'Morgan'),
(49, 35, 0, '252'),
(50, 1, 0, '8'),
(50, 29, 0, 'Kimo'),
(50, 30, 0, 'Aweau'),
(51, 1, 0, '8'),
(51, 29, 0, 'Kristen'),
(51, 30, 0, 'Wilson'),
(52, 1, 0, '8'),
(52, 29, 0, 'Will'),
(52, 30, 0, 'Ethridge'),
(53, 1, 0, '8'),
(53, 29, 0, 'Randy'),
(53, 30, 0, 'Decker'),
(54, 1, 0, '8'),
(54, 29, 0, 'Jeff'),
(54, 30, 0, 'Boyland'),
(55, 1, 0, '8'),
(55, 29, 0, 'Kena'),
(55, 30, 0, 'Thompson'),
(56, 1, 0, '8'),
(56, 29, 0, 'Elliot'),
(56, 30, 0, 'Blake'),
(57, 1, 0, '4'),
(57, 15, 0, '18'),
(57, 16, 0, '34'),
(57, 17, 0, '230'),
(57, 18, 0, '132'),
(57, 19, 0, '6'),
(57, 26, 0, 'Samantha'),
(57, 27, 0, 'Bradley'),
(57, 35, 0, '263'),
(58, 1, 0, '8'),
(58, 29, 0, 'Lisa'),
(58, 30, 0, 'Polcovich'),
(59, 1, 0, '8'),
(59, 29, 0, 'Heather '),
(59, 30, 0, 'Erickson'),
(60, 1, 0, '4'),
(60, 15, 0, '13'),
(60, 16, 0, '31'),
(60, 17, 0, '130'),
(60, 18, 0, '133'),
(60, 19, 0, '6'),
(60, 26, 0, 'Sophie'),
(60, 27, 0, 'Bonadeo'),
(60, 35, 0, '257'),
(61, 1, 0, '4'),
(61, 15, 0, '9'),
(61, 16, 0, '34'),
(61, 17, 0, '142'),
(61, 18, 0, '133'),
(61, 19, 0, '6'),
(61, 26, 0, 'Taylor'),
(61, 27, 0, 'Harvick'),
(61, 35, 0, '260'),
(62, 1, 0, '4'),
(62, 15, 0, '15'),
(62, 16, 0, '36'),
(62, 17, 0, '125'),
(62, 18, 0, '132'),
(62, 19, 0, '5'),
(62, 26, 0, 'Ciera'),
(62, 27, 0, 'Jesse'),
(62, 35, 0, '266'),
(63, 1, 0, '4'),
(63, 15, 0, '10'),
(63, 16, 0, '31'),
(63, 17, 0, '144'),
(63, 18, 0, '134'),
(63, 19, 0, '6'),
(63, 26, 0, 'Anna'),
(63, 27, 0, 'Peacock'),
(63, 35, 0, '258'),
(64, 1, 0, '4'),
(64, 15, 0, '10'),
(64, 16, 0, '30'),
(64, 17, 0, '227'),
(64, 18, 0, '134'),
(64, 19, 0, '5'),
(64, 26, 0, 'Peyton'),
(64, 27, 0, 'Fryer'),
(64, 35, 0, '255'),
(65, 1, 0, '4'),
(65, 15, 0, '17'),
(65, 16, 0, '33'),
(65, 17, 0, '146'),
(65, 18, 0, '26'),
(65, 19, 0, '5'),
(65, 24, 0, 'OP2 15-18''s.  \r\nHeritage Hall High School 2009-2011'),
(65, 25, 0, 'Daily Oklahoman All City Player of the Year 2011\r\nOklahoma All-State 2011\r\nState tournament team 2010 and 2011\r\nHeritage Hall single season assist record'),
(65, 26, 0, 'Sydney'),
(65, 27, 0, 'Miles'),
(65, 35, 0, '276'),
(66, 1, 0, '4'),
(66, 15, 0, '15'),
(66, 16, 0, '33'),
(66, 17, 0, '144'),
(66, 18, 0, '132'),
(66, 19, 0, '6'),
(66, 24, 0, 'OP2 11,12,13-1''s'),
(66, 26, 0, 'Paige'),
(66, 27, 0, 'Miles'),
(66, 35, 0, '262'),
(67, 1, 0, '4'),
(67, 15, 0, '12'),
(67, 16, 0, '30'),
(67, 17, 0, '141'),
(67, 18, 0, '132'),
(67, 19, 0, '6'),
(67, 26, 0, 'Kenna'),
(67, 27, 0, 'Macy'),
(67, 35, 0, '264'),
(68, 1, 0, '4'),
(68, 15, 0, '18'),
(68, 16, 0, '35'),
(68, 17, 0, '29'),
(68, 18, 0, '135'),
(68, 19, 0, '6'),
(68, 26, 0, 'Timmie'),
(68, 27, 0, 'Dorsey'),
(68, 35, 0, '251'),
(69, 1, 0, '8'),
(69, 29, 0, 'Alica'),
(69, 30, 0, 'Sexton'),
(70, 1, 0, '4'),
(70, 15, 0, '13'),
(70, 16, 0, '35'),
(70, 17, 0, '127'),
(70, 18, 0, '133'),
(70, 19, 0, '6'),
(70, 26, 0, 'Samantha'),
(70, 27, 0, 'Srite'),
(70, 35, 0, '258'),
(71, 1, 0, '4'),
(71, 15, 0, '11'),
(71, 16, 0, '35'),
(71, 17, 0, '141'),
(71, 18, 0, '28'),
(71, 19, 0, '6'),
(71, 21, 0, '177'),
(71, 22, 0, '345'),
(71, 23, 0, '402'),
(71, 24, 0, '-6th year of club\r\n-Played in 4 USAV National Championships\r\n-Played in 2 USAV High Performance Championships '),
(71, 25, 0, '-2nd in two Nat''l Quals. (14s Lonestar, Mideast)\r\n-Won two Nat''l Quals. (15s Crossroads, Lonestar)\r\n-''Freshman of the Year'' in 2010, Varsity Volleyball\r\n-MVP Union Varsity Tournament\r\n-All Tournament (H.H. Invitational, OSSAA 6A State)\r\n-''All Edmond First Team'' in 2011'),
(71, 26, 0, 'Rachel'),
(71, 27, 0, 'Manriquez'),
(71, 35, 0, '272'),
(72, 1, 0, '1'),
(72, 3, 0, 'B. DeWayne'),
(72, 4, 0, 'Benson'),
(73, 1, 0, '4'),
(73, 15, 0, '53'),
(73, 16, 0, '33'),
(73, 17, 0, '230'),
(73, 18, 0, '28'),
(73, 19, 0, '6'),
(73, 24, 0, '5 years with OP2 on OP2 12-1s (2 years), 13-1s, 14-1s, and 15-1s'),
(73, 26, 0, 'Alissa'),
(73, 27, 0, 'Benson'),
(73, 35, 0, '272'),
(74, 1, 0, '4'),
(74, 15, 0, '12'),
(74, 16, 0, '30'),
(74, 17, 0, '144'),
(74, 18, 0, '27'),
(74, 19, 0, '6'),
(74, 24, 0, 'OP2 6 Years.  OP2 12-1s (2 years), 13-1s, 14-1s, 15-1s, and 16-1s'),
(74, 26, 0, 'Maggie'),
(74, 27, 0, 'Benson'),
(74, 35, 0, '275'),
(75, 1, 0, '4'),
(75, 15, 0, '13'),
(75, 16, 0, '33'),
(75, 17, 0, '125'),
(75, 18, 0, '133'),
(75, 19, 0, '6'),
(75, 26, 0, 'Anna'),
(75, 27, 0, 'Wiewel'),
(75, 35, 0, '261'),
(77, 1, 0, '8'),
(77, 29, 0, 'Sammy'),
(77, 30, 0, 'Duncan'),
(78, 1, 0, '8'),
(78, 29, 0, 'Michelle'),
(78, 30, 0, 'Boevers'),
(79, 1, 0, '8'),
(79, 29, 0, 'Heather'),
(79, 30, 0, 'Ruiz'),
(80, 1, 0, '4'),
(80, 15, 0, '13'),
(80, 16, 0, '30'),
(80, 17, 0, '142'),
(80, 18, 0, '132'),
(80, 19, 0, '6'),
(80, 26, 0, 'Paige'),
(80, 27, 0, 'Wekenborg'),
(80, 35, 0, '263'),
(81, 1, 0, '4'),
(81, 15, 0, '12'),
(81, 16, 0, '30'),
(81, 17, 0, '142'),
(81, 18, 0, '28'),
(81, 19, 0, '6'),
(81, 26, 0, 'Jessie'),
(81, 27, 0, 'Heiden'),
(81, 35, 0, '273'),
(82, 1, 0, '4'),
(82, 15, 0, '18'),
(82, 16, 0, '35'),
(82, 17, 0, '129'),
(82, 18, 0, '132'),
(82, 19, 0, '6'),
(82, 26, 0, 'Jennifer'),
(82, 27, 0, 'Brooks'),
(82, 35, 0, '264'),
(83, 1, 0, '4'),
(83, 15, 0, '16'),
(83, 16, 0, '30'),
(83, 17, 0, '229'),
(83, 18, 0, '132'),
(83, 19, 0, '6'),
(83, 26, 0, 'REGAN'),
(83, 27, 0, 'DEQUASIE'),
(83, 35, 0, '264'),
(84, 1, 0, '8'),
(84, 29, 0, 'Mark'),
(84, 30, 0, 'Herrin'),
(85, 1, 0, '4'),
(85, 15, 0, '12'),
(85, 16, 0, '34'),
(85, 17, 0, '142'),
(85, 18, 0, '132'),
(85, 19, 0, '5'),
(85, 26, 0, 'Skylar'),
(85, 27, 0, 'Hamlett'),
(85, 35, 0, '258'),
(86, 1, 0, '4'),
(86, 15, 0, '11'),
(86, 16, 0, '31'),
(86, 17, 0, '143'),
(86, 18, 0, '132'),
(86, 19, 0, '6'),
(86, 26, 0, 'Reagan'),
(86, 27, 0, 'Gantz'),
(86, 35, 0, '263'),
(87, 1, 0, '8'),
(87, 29, 0, 'Natalie'),
(87, 30, 0, 'Murray'),
(88, 1, 0, '4'),
(88, 15, 0, '16'),
(88, 16, 0, '31'),
(88, 17, 0, '128'),
(88, 18, 0, '134'),
(88, 19, 0, '5'),
(88, 26, 0, 'Emma'),
(88, 27, 0, 'Nettleton'),
(88, 35, 0, '256'),
(89, 1, 0, '4'),
(89, 15, 0, '15'),
(89, 16, 0, '34'),
(89, 17, 0, '128'),
(89, 18, 0, '132'),
(89, 19, 0, '6'),
(89, 26, 0, 'Sarah'),
(89, 27, 0, 'Gilkerson'),
(89, 35, 0, '264'),
(90, 1, 0, '4'),
(90, 15, 0, '19'),
(90, 16, 0, '35'),
(90, 17, 0, '141'),
(90, 18, 0, '28'),
(90, 19, 0, '6'),
(90, 26, 0, 'Haley'),
(90, 27, 0, 'Cochran'),
(90, 35, 0, '273'),
(91, 1, 0, '4'),
(91, 15, 0, '13'),
(91, 16, 0, '34'),
(91, 17, 0, '143'),
(91, 18, 0, '132'),
(91, 19, 0, '5'),
(91, 26, 0, 'Madison'),
(91, 27, 0, 'Pearson'),
(91, 35, 0, '262'),
(92, 1, 0, '4'),
(92, 15, 0, '11'),
(92, 16, 0, '36'),
(92, 17, 0, '126'),
(92, 18, 0, '133'),
(92, 19, 0, '6'),
(92, 26, 0, 'Taryn'),
(92, 27, 0, 'Boyland'),
(92, 35, 0, '250'),
(93, 1, 0, '4'),
(93, 15, 0, '14'),
(93, 16, 0, '35'),
(93, 17, 0, '122'),
(93, 18, 0, '134'),
(93, 19, 0, '6'),
(93, 26, 0, 'Lakyn'),
(93, 27, 0, 'Massengill'),
(93, 35, 0, '256'),
(94, 1, 0, '4'),
(94, 15, 0, '9'),
(94, 16, 0, '33'),
(94, 17, 0, '130'),
(94, 18, 0, '132'),
(94, 19, 0, '6'),
(94, 26, 0, 'SYDNEY'),
(94, 27, 0, 'MEGET'),
(94, 35, 0, '264'),
(95, 1, 0, '4'),
(95, 15, 0, '12'),
(95, 16, 0, '33'),
(95, 17, 0, '228'),
(95, 18, 0, '135'),
(95, 19, 0, '6'),
(95, 26, 0, 'Reagan'),
(95, 27, 0, 'Baker'),
(95, 35, 0, '252'),
(96, 1, 0, '8'),
(96, 29, 0, 'Elanna'),
(96, 30, 0, 'Killackey'),
(573980572, 1, 0, '4'),
(573980572, 15, 0, '12'),
(573980572, 16, 0, '30'),
(573980572, 17, 0, '229'),
(573980572, 18, 0, '133'),
(573980572, 19, 0, '6'),
(573980572, 24, 0, 'Played three years of club volleyball. Two years of YMCA volleyball.'),
(573980572, 26, 0, 'Savannah'),
(573980572, 27, 0, 'Onley'),
(573980572, 35, 0, '262'),
(674218479, 1, 0, '4'),
(674218479, 15, 0, '9'),
(674218479, 16, 0, '36'),
(674218479, 17, 0, '129'),
(674218479, 18, 0, '133'),
(674218479, 19, 0, '6'),
(674218479, 26, 0, 'Shary'),
(674218479, 27, 0, 'Bouvette'),
(674218479, 35, 0, '262'),
(886555540, 1, 0, '4'),
(886555540, 15, 0, '23'),
(886555540, 16, 0, '34'),
(886555540, 17, 0, '230'),
(886555540, 18, 0, '28'),
(886555540, 19, 0, '6'),
(886555540, 26, 0, 'Chanelle'),
(886555540, 27, 0, 'McCormick'),
(886555540, 35, 0, '272'),
(1383914828, 1, 0, '8'),
(1383914828, 29, 0, 'Edgar'),
(1383914828, 30, 0, 'Miraku'),
(1610159378, 1, 0, '4'),
(1610159378, 15, 0, '12'),
(1610159378, 16, 0, '30'),
(1610159378, 17, 0, '141'),
(1610159378, 18, 0, '132'),
(1610159378, 19, 0, '6'),
(1610159378, 26, 0, 'Kenna'),
(1610159378, 27, 0, 'Macy'),
(1610159378, 35, 0, '264'),
(1617228157, 1, 0, '4'),
(1617228157, 15, 0, '20'),
(1617228157, 16, 0, '34'),
(1617228157, 17, 0, '229'),
(1617228157, 18, 0, '28'),
(1617228157, 19, 0, '6'),
(1617228157, 21, 0, '283'),
(1617228157, 22, 0, '348'),
(1617228157, 23, 0, '407'),
(1617228157, 26, 0, 'Ashley'),
(1617228157, 27, 0, 'McCoy'),
(1617228157, 35, 0, '272'),
(1829893787, 1, 0, '4'),
(1829893787, 15, 0, '9'),
(1829893787, 16, 0, '34'),
(1829893787, 17, 0, '145'),
(1829893787, 18, 0, '131'),
(1829893787, 19, 0, '6'),
(1829893787, 26, 0, 'Livi'),
(1829893787, 27, 0, 'Schiffner'),
(1829893787, 35, 0, '268'),
(2002635803, 1, 0, '4'),
(2002635803, 15, 0, '10'),
(2002635803, 16, 0, '33'),
(2002635803, 17, 0, '145'),
(2002635803, 18, 0, '27'),
(2002635803, 19, 0, '6'),
(2002635803, 21, 0, '284'),
(2002635803, 23, 0, '408'),
(2002635803, 24, 0, 'I have played organized volleyball for my school team since 4th grade. I have been a club player for PEAK since 7th grade in several different positions.'),
(2002635803, 25, 0, '2010 Vball Leadership Award.Class 6A State Champ 2010. 2011 Santa Fe All Tournament Team. 2011 State All Tournament Team. 2011 Academic State Team. National Honor Society Member. Fall 2011 OK Athlete Of the Week.'),
(2002635803, 26, 0, 'Lindsey'),
(2002635803, 27, 0, 'Roy'),
(2002635803, 35, 0, '275'),
(2031245164, 1, 0, '4'),
(2031245164, 15, 0, '12'),
(2031245164, 16, 0, '34'),
(2031245164, 17, 0, '230'),
(2031245164, 18, 0, '131'),
(2031245164, 19, 0, '6'),
(2031245164, 23, 0, '410'),
(2031245164, 24, 0, 'I have played school volleyball since the 4th grade and club for PEAK since the 8th grade. I really enjoy it!!'),
(2031245164, 25, 0, 'Finished 8th in Nationals Summer 2011 in Atlanta for PEAK. Finished 3rd in state for Class 6A High School 2011. Won Vball Freshman of The Year 2011. 2011 State Academic Team.'),
(2031245164, 26, 0, 'Jenny'),
(2031245164, 27, 0, 'Roy'),
(2031245164, 35, 0, '268');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_forgot`
--

CREATE TABLE IF NOT EXISTS `engine4_user_forgot` (
  `user_id` int(11) unsigned NOT NULL,
  `code` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY  (`user_id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_forgot`
--

INSERT INTO `engine4_user_forgot` (`user_id`, `code`, `creation_date`) VALUES
(1, 'dfqnogzbpe04488wgoos08wos', '2012-02-01 22:48:09'),
(11, '6uas7ntdiwcokok8408g44scw', '2012-01-31 21:16:54'),
(56, 'db55uwpylwggcoocccg4gg888', '2012-02-02 01:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_janrain`
--

CREATE TABLE IF NOT EXISTS `engine4_user_janrain` (
  `user_id` int(11) unsigned NOT NULL,
  `identifier` varchar(255) collate utf8_unicode_ci NOT NULL,
  `provider` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `token` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_janrain`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_listitems`
--

CREATE TABLE IF NOT EXISTS `engine4_user_listitems` (
  `listitem_id` int(11) unsigned NOT NULL auto_increment,
  `list_id` int(11) unsigned NOT NULL,
  `child_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`listitem_id`),
  KEY `list_id` (`list_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_user_listitems`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_lists`
--

CREATE TABLE IF NOT EXISTS `engine4_user_lists` (
  `list_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `owner_id` int(11) unsigned NOT NULL,
  `child_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`list_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_user_lists`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_logins`
--

CREATE TABLE IF NOT EXISTS `engine4_user_logins` (
  `login_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned default NULL,
  `email` varchar(128) collate utf8_unicode_ci default NULL,
  `timestamp` datetime NOT NULL,
  `state` enum('success','no-member','bad-password','disabled','unpaid','third-party','v3-migration','unknown') character set latin1 collate latin1_general_ci NOT NULL default 'unknown',
  `source` varchar(64) collate utf8_unicode_ci default NULL,
  `active` tinyint(1) NOT NULL default '0',
  `ip` varbinary(16) NOT NULL,
  `ulogin_id` varchar(128) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`login_id`),
  KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=225 ;

--
-- Dumping data for table `engine4_user_logins`
--

INSERT INTO `engine4_user_logins` (`login_id`, `user_id`, `email`, `timestamp`, `state`, `source`, `active`, `ip`, `ulogin_id`) VALUES
(1, 1, 'christopher@lloydentertainment.com', '2012-01-04 23:15:05', 'success', NULL, 0, '', ''),
(2, 1, 'christopher@lloydentertainment.com', '2012-01-04 23:26:35', 'success', NULL, 0, '', ''),
(3, 1, 'christopher@lloydentertainment.com', '2012-01-04 23:29:37', 'success', NULL, 0, '', ''),
(4, 1, 'christopher@lloydentertainment.com', '2012-01-04 23:32:19', 'success', NULL, 0, '', ''),
(5, 1, 'christopher@lloydentertainment.com', '2012-01-04 23:38:04', 'success', NULL, 1, '', ''),
(6, 1, 'christopher@lloydentertainment.com', '2012-01-05 00:28:08', 'success', NULL, 0, '', ''),
(7, 1, 'christopher@lloydentertainment.com', '2012-01-05 00:34:33', 'success', NULL, 1, '', ''),
(8, 1, 'christopher@lloydentertainment.com', '2012-01-11 20:41:18', 'success', NULL, 0, '', ''),
(9, 1, 'christopher@lloydentertainment.com', '2012-01-11 22:36:00', 'bad-password', NULL, 0, '', ''),
(10, 1, 'christopher@lloydentertainment.com', '2012-01-11 22:36:05', 'success', NULL, 0, '', ''),
(11, 1, 'christopher@lloydentertainment.com', '2012-01-11 22:43:10', 'success', NULL, 1, '', ''),
(12, 6, 'odesk@op2vb.com', '2012-01-11 23:59:35', 'bad-password', NULL, 0, '', ''),
(13, 6, 'odesk@op2vb.com', '2012-01-11 23:59:40', 'bad-password', NULL, 0, '', ''),
(14, 1, 'christopher@lloydentertainment.com', '2012-01-11 23:59:50', 'success', NULL, 0, '', ''),
(15, 6, 'odesk@op2vb.com', '2012-01-12 00:02:07', 'success', NULL, 1, '', ''),
(16, 1, 'christopher@lloydentertainment.com', '2012-01-12 19:38:57', 'success', NULL, 0, '', ''),
(17, 6, 'odesk@op2vb.com', '2012-01-13 01:58:59', 'success', NULL, 1, '?쏍', ''),
(18, 6, 'odesk@op2vb.com', '2012-01-18 00:21:19', 'success', NULL, 1, '<뻭', ''),
(19, 6, 'odesk@op2vb.com', '2012-01-18 00:41:32', 'success', NULL, 1, '<뻭', ''),
(20, 6, 'odesk@op2vb.com', '2012-01-18 00:53:56', 'success', NULL, 1, '<뻭', ''),
(21, 6, 'odesk@op2vb.com', '2012-01-18 01:38:21', 'success', NULL, 1, '<뻭', ''),
(22, 6, 'odesk@op2vb.com', '2012-01-18 14:18:55', 'success', NULL, 0, '?:', ''),
(23, 6, 'odesk@op2vb.com', '2012-01-18 14:25:48', 'success', NULL, 1, '?:', ''),
(24, 6, 'odesk@op2vb.com', '2012-01-18 23:12:43', 'success', NULL, 0, '\0\0', ''),
(25, 6, 'odesk@op2vb.com', '2012-01-18 23:25:44', 'success', NULL, 1, '\0\0', ''),
(26, NULL, 'odeaks@op2vb.com', '2012-01-19 13:21:46', 'no-member', NULL, 0, '\0\0', ''),
(27, NULL, 'odesks@op2vb.com', '2012-01-19 13:22:19', 'no-member', NULL, 0, '\0\0', ''),
(28, 6, 'odesk@op2vb.com', '2012-01-19 13:22:37', 'success', NULL, 1, '\0\0', ''),
(29, NULL, 'odeaks@op2vb.com', '2012-01-19 18:02:06', 'no-member', NULL, 0, '\0\0', ''),
(30, 6, 'odesk@op2vb.com', '2012-01-19 18:02:24', 'success', NULL, 0, '\0\0', ''),
(31, 6, 'odesk@op2vb.com', '2012-01-19 18:05:41', 'bad-password', NULL, 0, '\0\0', ''),
(32, 6, 'odesk@op2vb.com', '2012-01-19 18:05:55', 'success', NULL, 1, '\0\0', ''),
(33, 6, 'odesk@op2vb.com', '2012-01-19 18:07:55', 'success', NULL, 0, '\0\0', ''),
(34, 6, 'odesk@op2vb.com', '2012-01-19 18:26:11', 'success', NULL, 0, '\0\0', ''),
(35, NULL, 'odeaks@op2vb.com', '2012-01-19 20:39:03', 'no-member', NULL, 0, '\0\0', ''),
(36, 6, 'odesk@op2vb.com', '2012-01-19 20:39:17', 'success', NULL, 0, '\0\0', ''),
(37, 6, 'odesk@op2vb.com', '2012-01-19 20:56:32', 'success', NULL, 0, '\0\0', ''),
(38, 6, 'odesk@op2vb.com', '2012-01-19 21:14:08', 'bad-password', NULL, 0, '\0\0', ''),
(39, 6, 'odesk@op2vb.com', '2012-01-19 21:14:56', 'success', NULL, 0, '\0\0', ''),
(40, 6, 'odesk@op2vb.com', '2012-01-19 21:16:40', 'success', NULL, 0, '\0\0', ''),
(41, 6, 'odesk@op2vb.com', '2012-01-19 21:18:02', 'bad-password', NULL, 0, '\0\0', ''),
(42, 6, 'odesk@op2vb.com', '2012-01-19 21:19:07', 'bad-password', NULL, 0, '\0\0', ''),
(43, 6, 'odesk@op2vb.com', '2012-01-19 21:20:59', 'bad-password', NULL, 0, '\0\0', ''),
(44, 6, 'odesk@op2vb.com', '2012-01-19 21:24:02', 'bad-password', NULL, 0, '\0\0', ''),
(45, 6, 'odesk@op2vb.com', '2012-01-19 21:25:03', 'bad-password', NULL, 0, '\0\0', ''),
(46, 6, 'odesk@op2vb.com', '2012-01-19 21:25:37', 'bad-password', NULL, 0, '\0\0', ''),
(47, 6, 'odesk@op2vb.com', '2012-01-19 21:28:48', 'bad-password', NULL, 0, '\0\0', ''),
(48, 6, 'odesk@op2vb.com', '2012-01-19 21:29:50', 'bad-password', NULL, 0, '\0\0', ''),
(49, 6, 'odesk@op2vb.com', '2012-01-19 21:31:21', 'bad-password', NULL, 0, '\0\0', ''),
(50, 6, 'odesk@op2vb.com', '2012-01-19 21:33:02', 'bad-password', NULL, 0, '\0\0', ''),
(51, 6, 'odesk@op2vb.com', '2012-01-19 21:33:30', 'bad-password', NULL, 0, '\0\0', ''),
(52, NULL, 'odeaks@op2vb.com', '2012-01-19 22:25:26', 'no-member', NULL, 0, '\0\0', ''),
(53, NULL, 'odeaks@op2vb.com', '2012-01-19 22:26:15', 'no-member', NULL, 0, '\0\0', ''),
(54, 6, 'odesk@op2vb.com', '2012-01-19 22:26:17', 'bad-password', NULL, 0, '\0\0', ''),
(55, 6, 'odesk@op2vb.com', '2012-01-19 22:27:33', 'bad-password', NULL, 0, '\0\0', ''),
(56, 6, 'odesk@op2vb.com', '2012-01-19 22:28:54', 'bad-password', NULL, 0, '\0\0', ''),
(57, 6, 'odesk@op2vb.com', '2012-01-20 01:02:23', 'bad-password', NULL, 0, '\0\0', ''),
(58, 6, 'odesk@op2vb.com', '2012-01-20 02:30:27', 'disabled', NULL, 0, '\0\0', 'odesk'),
(59, 6, 'odesk@op2vb.com', '2012-01-20 03:21:01', 'disabled', NULL, 0, '\0\0', 'odesk'),
(60, 6, 'odesk@op2vb.com', '2012-01-20 03:23:21', 'disabled', NULL, 0, '\0\0', 'odesk'),
(61, 6, 'odesk@op2vb.com', '2012-01-20 09:44:56', 'disabled', NULL, 0, '\0\0', 'odesk'),
(62, 6, 'odesk@op2vb.com', '2012-01-20 18:32:47', 'disabled', NULL, 0, '\0\0', 'odesk'),
(63, 6, 'odesk@op2vb.com', '2012-01-20 19:14:13', 'disabled', NULL, 0, '\0\0', 'odesk'),
(64, 6, 'odesk@op2vb.com', '2012-01-20 23:06:02', 'disabled', NULL, 0, '\0\0', 'odesk'),
(65, 6, 'odesk@op2vb.com', '2012-01-20 23:16:03', 'disabled', NULL, 0, '\0\0', 'odesk'),
(66, 6, 'odesk@op2vb.com', '2012-01-21 15:50:54', 'disabled', NULL, 0, '\0\0', 'odesk'),
(67, 6, 'odesk@op2vb.com', '2012-01-21 15:51:29', 'disabled', NULL, 0, '\0\0', 'odesk'),
(68, 6, 'odesk@op2vb.com', '2012-01-21 17:16:40', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(69, NULL, NULL, '2012-01-22 16:04:12', 'no-member', NULL, 0, '��', ''),
(70, NULL, NULL, '2012-01-22 16:04:47', 'no-member', NULL, 0, '��', ''),
(71, 6, 'odesk@op2vb.com', '2012-01-22 16:05:45', 'disabled', NULL, 0, '��', 'odesk'),
(72, 6, 'odesk@op2vb.com', '2012-01-22 16:08:44', 'disabled', NULL, 0, '��', 'odesk'),
(73, 6, 'odesk@op2vb.com', '2012-01-23 05:01:29', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(74, NULL, NULL, '2012-01-23 22:59:24', 'no-member', NULL, 0, '��h', ''),
(75, NULL, NULL, '2012-01-23 23:11:50', 'no-member', NULL, 0, '��h', ''),
(76, 6, 'odesk@op2vb.com', '2012-01-23 23:12:01', 'disabled', NULL, 0, '��h', 'odesk'),
(77, 6, 'odesk@op2vb.com', '2012-01-24 01:05:08', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(78, 6, 'odesk@op2vb.com', '2012-01-24 02:34:15', 'disabled', NULL, 0, '��h', 'odesk'),
(79, 6, 'odesk@op2vb.com', '2012-01-24 02:37:54', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(80, 8, 'clloyd@crossingsokc.org', '2012-01-24 02:42:09', 'disabled', NULL, 0, '��h', 'admin'),
(81, 6, 'odesk@op2vb.com', '2012-01-24 02:42:14', 'disabled', NULL, 0, '��h', 'odesk'),
(82, 1, 'christopher@lloydentertainment.com', '2012-01-24 18:36:43', 'disabled', NULL, 0, '��h', 'admin'),
(83, 1, 'christopher@lloydentertainment.com', '2012-01-24 19:49:37', 'disabled', NULL, 0, '��h', 'admin'),
(84, 6, 'odesk@op2vb.com', '2012-01-24 20:10:40', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(85, 1, 'christopher@lloydentertainment.com', '2012-01-24 22:42:19', 'disabled', NULL, 0, 'Dr�', 'admin'),
(86, 11, 'marjoejek@aol.com', '2012-01-26 04:23:30', 'disabled', NULL, 0, 'DaC�', 'jekel'),
(87, 11, 'marjoejek@aol.com', '2012-01-26 04:24:29', 'disabled', NULL, 0, 'DaC�', 'jekel'),
(88, 11, 'marjoejek@aol.com', '2012-01-26 04:32:23', 'disabled', NULL, 0, 'DaC�', 'jekel'),
(89, 11, 'marjoejek@aol.com', '2012-01-26 04:33:09', 'disabled', NULL, 0, 'DaC�', 'jekel'),
(90, 14, 'jchoi@ppandco.com', '2012-01-26 04:49:26', 'disabled', NULL, 0, 'DaF�', 'jennichoi'),
(91, 1, 'christopher@lloydentertainment.com', '2012-01-26 12:19:09', 'disabled', NULL, 0, 'Dr�', 'admin'),
(92, 1, 'christopher@lloydentertainment.com', '2012-01-26 13:09:38', 'disabled', NULL, 0, 'Dr�', 'admin'),
(93, 19, 'kellycrotts@gmail.com', '2012-01-26 17:30:18', 'disabled', NULL, 0, 'cw޵', 'jilliancrotts'),
(94, 20, 'tbell1961@aol.com', '2012-01-26 19:23:01', 'disabled', NULL, 0, 'F�GN', 'tonyabell'),
(95, 21, 'prbert66@cox.net', '2012-01-26 21:54:50', 'disabled', NULL, 0, '��C�', 'prbert66'),
(96, NULL, NULL, '2012-01-26 22:27:44', 'no-member', NULL, 0, 'Da��', ''),
(97, 22, 'kellykeckwright1@yahoo.com', '2012-01-27 00:20:40', 'disabled', NULL, 0, 'c#�=', 'kellywright'),
(98, NULL, NULL, '2012-01-27 02:50:54', 'no-member', NULL, 0, 'Da��', ''),
(99, NULL, NULL, '2012-01-27 02:51:33', 'no-member', NULL, 0, 'Da��', ''),
(100, NULL, NULL, '2012-01-27 02:51:50', 'no-member', NULL, 0, 'Da��', ''),
(101, 23, 'macyfam@cox.net', '2012-01-27 03:20:00', 'disabled', NULL, 0, 'Da��', 'kmace'),
(102, 25, 'sandyroberts@mac.com', '2012-01-27 04:35:31', 'disabled', NULL, 0, '��_', 'Bsakroberts'),
(103, 14, 'jchoi@ppandco.com', '2012-01-27 05:57:44', 'disabled', NULL, 0, 'DaF�', 'jennichoi'),
(104, 14, 'jchoi@ppandco.com', '2012-01-27 05:58:03', 'disabled', NULL, 0, 'DaF�', 'jennichoi'),
(105, NULL, NULL, '2012-01-27 12:52:43', 'no-member', NULL, 0, 'DaC�', ''),
(106, NULL, NULL, '2012-01-27 12:53:06', 'no-member', NULL, 0, 'DaC�', ''),
(107, NULL, NULL, '2012-01-27 12:53:54', 'no-member', NULL, 0, 'DaC�', ''),
(108, 26, 'becky.ethridge@gmail.com', '2012-01-27 13:16:43', 'disabled', NULL, 0, '��', 'modlbje'),
(109, 26, 'becky.ethridge@gmail.com', '2012-01-27 13:43:36', 'disabled', NULL, 0, '��', 'modlbje'),
(110, NULL, NULL, '2012-01-27 15:07:33', 'no-member', NULL, 0, 'F�@4', ''),
(111, 34, 'efrogge@cox.net', '2012-01-27 15:47:12', 'disabled', NULL, 0, 'D
', 'hfrogge'),
(112, 35, 'brandi.spear2@gmail.com', '2012-01-27 16:25:24', 'disabled', NULL, 0, 'DtZ', 'tayburz'),
(113, 36, 'polcovich@sbcglobal.net', '2012-01-27 16:40:30', 'disabled', NULL, 0, 'F�n', 'tpolcovich'),
(114, 35, 'brandi.spear2@gmail.com', '2012-01-27 17:08:44', 'disabled', NULL, 0, 'DtZ', 'tayburz'),
(115, 40, 'shellyjohnson@sbcglobal.net', '2012-01-27 17:47:54', 'disabled', NULL, 0, '�:J', 'shellyjoh'),
(116, 6, 'odesk@op2vb.com', '2012-01-27 17:54:04', 'disabled', NULL, 0, '<�r', 'odesk'),
(117, 6, 'odesk@op2vb.com', '2012-01-27 18:10:05', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(118, 41, 'aa@bb.com', '2012-01-27 18:29:03', 'disabled', NULL, 0, 'Ѡ:', 'a3'),
(119, 41, 'aa@bb.com', '2012-01-27 18:29:12', 'disabled', NULL, 0, 'Ѡ:', 'a3'),
(120, NULL, NULL, '2012-01-27 18:29:22', 'no-member', NULL, 0, 'Ѡ:', ''),
(121, 42, 'aca@bb.com', '2012-01-27 18:33:07', 'disabled', NULL, 0, 'Ѡ:', 'abcabc'),
(122, NULL, NULL, '2012-01-27 18:40:59', 'no-member', NULL, 0, 'Ѡ:', ''),
(123, 42, 'aca@bb.com', '2012-01-27 18:41:18', 'disabled', NULL, 0, 'Ѡ:', 'abcabc'),
(124, 6, 'odesk@op2vb.com', '2012-01-27 18:41:30', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(125, 44, 'gandall7@cox.net', '2012-01-27 18:43:27', 'disabled', NULL, 0, 'b���', 'jganda'),
(126, 45, 'Robynharwell@sbcglobal.net', '2012-01-27 19:24:59', 'disabled', NULL, 0, '��	 ', 'Izzyb'),
(127, 46, 'rbolles@cox.net', '2012-01-27 19:27:06', 'disabled', NULL, 0, 'D��', 'madi'),
(128, 23, 'macyfam@cox.net', '2012-01-27 20:32:46', 'disabled', NULL, 0, '�:J\n', 'kmace'),
(129, 23, 'macyfam@cox.net', '2012-01-27 20:40:58', 'disabled', NULL, 0, '�:J\n', 'kmace'),
(130, 48, 'rszawisza@cox.net', '2012-01-27 22:32:30', 'disabled', NULL, 0, 'b��6', 'rszawisza'),
(131, NULL, NULL, '2012-01-28 00:55:49', 'no-member', NULL, 0, 'DaC�', ''),
(132, 52, 'Willethr@aol.com', '2012-01-28 01:44:33', 'disabled', NULL, 0, 'D}�', 'Willethr'),
(133, 53, 'rdecker@op2vb.com', '2012-01-28 01:51:01', 'disabled', NULL, 0, 'K��', 'randydecker'),
(134, NULL, NULL, '2012-01-28 03:14:45', 'no-member', NULL, 0, 'F�n', ''),
(135, 59, 'herickson001@hotmail.com', '2012-01-28 03:20:24', 'disabled', NULL, 0, 'F�I�', 'herickson'),
(136, 59, 'herickson001@hotmail.com', '2012-01-28 03:20:34', 'disabled', NULL, 0, 'F�I�', 'herickson'),
(137, 23, 'macyfam@cox.net', '2012-01-28 03:27:06', 'disabled', NULL, 0, 'Da��', 'kmace'),
(138, 60, 'sophiebonadeo@yahoo.com', '2012-01-28 03:29:43', 'disabled', NULL, 0, 'D[��', 'sophiebonadeo'),
(139, NULL, NULL, '2012-01-28 03:39:47', 'no-member', NULL, 0, 'Da�w', ''),
(140, NULL, NULL, '2012-01-28 03:39:52', 'no-member', NULL, 0, 'Da�w', ''),
(141, 61, 'forbelles@aol.com', '2012-01-28 05:09:53', 'disabled', NULL, 0, 'Da�\\', 'forbelles'),
(142, 65, 'claymiles@gmail.com', '2012-01-28 16:57:41', 'disabled', NULL, 0, '� �A', 'sydney'),
(143, 23, 'macyfam@cox.net', '2012-01-28 17:27:43', 'disabled', NULL, 0, 'Da��', 'kmace'),
(144, NULL, NULL, '2012-01-28 18:28:00', 'no-member', NULL, 0, 'H�}F', ''),
(145, 68, '3tdorseys@cox.net', '2012-01-28 18:31:49', 'disabled', NULL, 0, 'H�}F', 'tdorsey'),
(146, NULL, NULL, '2012-01-28 22:35:26', 'no-member', NULL, 0, 'DaC�', ''),
(147, 69, 'alica.sexton@gmail.com', '2012-01-29 03:01:52', 'disabled', NULL, 0, 'D
4�', 'asexton'),
(148, 69, 'alica.sexton@gmail.com', '2012-01-29 03:02:40', 'disabled', NULL, 0, 'D
4�', 'asexton'),
(149, 58, 'lisa@sportsimpact.biz', '2012-01-29 14:34:47', 'disabled', NULL, 0, 'F�+�', 'lpolcovich'),
(150, 26, 'becky.ethridge@gmail.com', '2012-01-29 14:48:44', 'disabled', NULL, 0, 'H�1�', 'modlbje'),
(151, 71, 'vmanri2000@yahoo.com', '2012-01-29 18:27:06', 'disabled', NULL, 0, 'cr��', 'vmanri2000'),
(152, 72, 'dbenson@simplexgrinnell.com', '2012-01-29 20:38:20', 'disabled', NULL, 0, 'J\n��', 'dbenson'),
(153, NULL, NULL, '2012-01-29 23:08:10', 'no-member', NULL, 0, 'DaC�', ''),
(154, 56, 'jelliotblake@yahoo.com', '2012-01-30 00:45:26', 'disabled', NULL, 0, '�f��', 'ebvolley98'),
(155, 56, 'jelliotblake@yahoo.com', '2012-01-30 00:45:31', 'disabled', NULL, 0, '�f��', 'ebvolley98'),
(156, 6, 'odesk@op2vb.com', '2012-01-30 02:50:25', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(157, 1, 'christopher@lloydentertainment.com', '2012-01-30 02:52:18', 'disabled', NULL, 0, 'K��', 'admin'),
(158, 53, 'rdecker@op2vb.com', '2012-01-30 03:23:43', 'disabled', NULL, 0, 'K��', 'randydecker'),
(159, 21, 'prbert66@cox.net', '2012-01-30 03:29:00', 'disabled', NULL, 0, 'Da�
', 'prbert66'),
(160, 21, 'prbert66@cox.net', '2012-01-30 03:30:58', 'disabled', NULL, 0, 'Da�
', 'prbert66'),
(161, 78, 'mboevers@zagmail.gonzaga.edu', '2012-01-30 04:21:27', 'disabled', NULL, 0, 'Da�', 'mboevers'),
(162, 1, 'christopher@lloydentertainment.com', '2012-01-30 14:56:24', 'disabled', NULL, 0, 'Dr�', 'admin'),
(163, 1, 'christopher@lloydentertainment.com', '2012-01-30 14:56:29', 'disabled', NULL, 0, 'Dr�', 'admin'),
(164, 44, 'gandall7@cox.net', '2012-01-30 17:09:44', 'disabled', NULL, 0, 'F�7-', 'jganda'),
(165, 6, 'odesk@op2vb.com', '2012-01-30 17:58:10', 'disabled', NULL, 0, 'Ѡ:', 'odesk'),
(166, NULL, NULL, '2012-01-30 17:58:21', 'no-member', NULL, 0, '�k�', ''),
(167, 87, 'nataliejo_op2@hotmail.com', '2012-01-30 20:39:47', 'disabled', NULL, 0, '�:J\n', 'nataliejo2'),
(168, 90, 'donlisacochran@sbcglobal.net', '2012-01-30 21:39:15', 'disabled', NULL, 0, '��ee', 'haleynicole'),
(169, 91, 'tpearson11@cox.net', '2012-01-30 22:27:51', 'disabled', NULL, 0, '��', 'tpearson11'),
(170, 92, 'gboyland@cox.net', '2012-01-31 00:50:34', 'disabled', NULL, 0, '��\nG', 'gboyland'),
(171, 53, 'rdecker@op2vb.com', '2012-01-31 02:19:14', 'disabled', NULL, 0, 'K��', 'randydecker'),
(172, NULL, NULL, '2012-01-31 03:31:26', 'no-member', NULL, 0, 'c{�W', ''),
(173, 57, 'kbradley16@cox.net', '2012-01-31 04:21:43', 'disabled', NULL, 0, 'D
�#', 'SRB10'),
(174, 52, 'Willethr@aol.com', '2012-01-31 04:23:57', 'disabled', NULL, 0, 'H�1�', 'willethr'),
(175, 96, 'elanna.killackey@gmail.com', '2012-01-31 14:16:01', 'disabled', NULL, 0, '�:J', 'elannabeth'),
(176, 96, 'elanna.killackey@gmail.com', '2012-01-31 14:27:25', 'disabled', NULL, 0, '�:J', 'elannabeth'),
(177, 1, 'christopher@lloydentertainment.com', '2012-01-31 14:43:20', 'disabled', NULL, 0, 'Dr�', 'admin'),
(178, NULL, NULL, '2012-01-31 15:36:01', 'no-member', NULL, 0, 'Dr�', 'lloydent'),
(179, 1, 'christopher@lloydentertainment.com', '2012-01-31 15:36:07', 'disabled', NULL, 0, 'Dr�', 'admin'),
(180, 1, 'christopher@lloydentertainment.com', '2012-01-31 15:54:44', 'disabled', NULL, 0, 'Dr�', 'admin'),
(181, 1, 'christopher@lloydentertainment.com', '2012-01-31 15:56:27', 'disabled', NULL, 0, 'Dr�', 'admin'),
(182, 1, 'christopher@lloydentertainment.com', '2012-01-31 16:10:30', 'disabled', NULL, 0, 'Dr�', 'admin'),
(183, 6, 'odesk@op2vb.com', '2012-01-31 17:57:17', 'disabled', NULL, 0, '<�r', 'odesk'),
(184, 6, 'odesk@op2vb.com', '2012-01-31 18:26:08', 'disabled', NULL, 0, '<�r', 'odesk'),
(185, 1, 'christopher@lloydentertainment.com', '2012-01-31 18:44:32', 'disabled', NULL, 0, 'Dr�', 'admin'),
(186, 1, 'christopher@lloydentertainment.com', '2012-01-31 18:46:24', 'disabled', NULL, 0, 'Dr�', 'admin'),
(187, 6, 'odesk@op2vb.com', '2012-01-31 19:13:02', 'disabled', NULL, 0, '<�r', 'odesk'),
(188, 1, 'christopher@lloydentertainment.com', '2012-01-31 19:21:02', 'disabled', NULL, 0, 'Dr�', 'admin'),
(189, 6, 'odesk@op2vb.com', '2012-01-31 19:58:47', 'disabled', NULL, 0, '<�r', 'odesk'),
(190, 1, 'christopher@lloydentertainment.com', '2012-01-31 21:38:26', 'disabled', NULL, 0, 'Dr�', 'admin'),
(191, 1, 'christopher@lloydentertainment.com', '2012-01-31 22:07:26', 'disabled', NULL, 0, 'Dr�', 'admin'),
(192, 6, 'odesk@op2vb.com', '2012-01-31 22:18:35', 'disabled', NULL, 0, '<�r', 'odesk'),
(193, 1, 'christopher@lloydentertainment.com', '2012-01-31 22:19:45', 'disabled', NULL, 0, 'Dr�', 'admin'),
(194, 1, 'christopher@lloydentertainment.com', '2012-02-01 00:21:43', 'disabled', NULL, 0, 'Dr�', 'admin'),
(195, 1, 'christopher@lloydentertainment.com', '2012-02-01 02:36:19', 'disabled', NULL, 0, 'Da�', 'admin'),
(196, 48, 'rszawisza@cox.net', '2012-02-01 02:58:03', 'disabled', NULL, 0, 'b��6', 'rszawisza'),
(197, 48, 'rszawisza@cox.net', '2012-02-01 03:00:09', 'disabled', NULL, 0, 'b��6', 'rszawisza'),
(198, 25, 'sandyroberts@mac.com', '2012-02-01 15:27:55', 'disabled', NULL, 0, 'l��l', 'bsakroberts'),
(199, 1, 'christopher@lloydentertainment.com', '2012-02-01 15:48:40', 'disabled', NULL, 0, 'Dr�', 'admin'),
(200, 1, 'christopher@lloydentertainment.com', '2012-02-01 22:43:40', 'disabled', NULL, 0, 'Dr�', 'admin'),
(201, NULL, NULL, '2012-02-01 22:48:08', 'no-member', NULL, 0, '@�}�', 'edgarm'),
(202, 1, 'christopher@lloydentertainment.com', '2012-02-01 22:48:19', 'disabled', NULL, 0, 'Dr�', 'admin'),
(203, NULL, NULL, '2012-02-01 22:48:20', 'no-member', NULL, 0, '@�}�', 'edgarm'),
(204, 1383914828, 'edgarmiraku@yahoo.com', '2012-02-01 22:50:48', 'disabled', NULL, 0, '@�}�', 'edgar'),
(205, 1383914828, 'edgarmiraku@yahoo.com', '2012-02-01 23:00:21', 'disabled', NULL, 0, '@�}�', 'edgar'),
(206, NULL, NULL, '2012-02-01 23:29:57', 'no-member', NULL, 0, 'c�s', 'allisonbarr8'),
(207, 6, 'odesk@op2vb.com', '2012-02-01 23:46:23', 'disabled', NULL, 0, '<�r', 'odesk'),
(208, 23, 'macyfam@cox.net', '2012-02-01 23:46:40', 'disabled', NULL, 0, 'Da��', 'kmace'),
(209, 53, 'rdecker@op2vb.com', '2012-02-01 23:58:53', 'disabled', NULL, 0, 'K��', 'randydecker'),
(210, 1, 'christopher@lloydentertainment.com', '2012-02-02 00:12:26', 'disabled', NULL, 0, 'Dr�', 'admin'),
(211, 1610159378, 'hbmacy@gmail.com', '2012-02-02 00:19:35', 'disabled', NULL, 0, 'Da��', 'kennamc'),
(212, 1610159378, 'hbmacy@gmail.com', '2012-02-02 00:21:00', 'disabled', NULL, 0, 'Da��', 'kennamc'),
(213, 1, 'christopher@lloydentertainment.com', '2012-02-02 00:22:13', 'disabled', NULL, 0, 'Dr�', 'admin'),
(214, 1383914828, 'edgarmiraku@yahoo.com', '2012-02-02 00:26:32', 'disabled', NULL, 0, 'c��,', 'edgar'),
(215, 1829893787, 'dshifty1@cox.net', '2012-02-02 00:31:53', 'disabled', NULL, 0, 'D
mR', 'dshifty1'),
(216, 1, 'christopher@lloydentertainment.com', '2012-02-02 00:32:48', 'disabled', NULL, 0, 'Dr�', 'admin'),
(217, 1, 'christopher@lloydentertainment.com', '2012-02-02 00:35:03', 'disabled', NULL, 0, 'Dr�', 'admin'),
(218, 886555540, 'jm-mccormick@hotmail.com', '2012-02-02 00:42:31', 'disabled', NULL, 0, 'F�', 'mccormick56'),
(219, 1, 'christopher@lloydentertainment.com', '2012-02-02 00:43:59', 'disabled', NULL, 0, 'Dr�', 'admin'),
(220, 1, 'christopher@lloydentertainment.com', '2012-02-02 00:50:02', 'disabled', NULL, 0, 'Dr�', 'admin'),
(221, 1, 'christopher@lloydentertainment.com', '2012-02-02 00:51:57', 'disabled', NULL, 0, 'Dr�', 'admin'),
(222, 6, 'odesk@op2vb.com', '2012-02-02 01:05:27', 'disabled', NULL, 0, '<�r', 'odesk'),
(223, 1, 'christopher@lloydentertainment.com', '2012-02-02 01:06:10', 'disabled', NULL, 0, 'Dr�', 'admin'),
(224, 1, 'christopher@lloydentertainment.com', '2012-02-02 01:27:17', 'disabled', NULL, 0, 'Dr�', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_membership`
--

CREATE TABLE IF NOT EXISTS `engine4_user_membership` (
  `resource_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `resource_approved` tinyint(1) NOT NULL default '0',
  `user_approved` tinyint(1) NOT NULL default '0',
  `message` text collate utf8_unicode_ci,
  `description` text collate utf8_unicode_ci,
  PRIMARY KEY  (`resource_id`,`user_id`),
  KEY `REVERSE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_membership`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_online`
--

CREATE TABLE IF NOT EXISTS `engine4_user_online` (
  `ip` varbinary(16) NOT NULL,
  `user_id` int(11) unsigned NOT NULL default '0',
  `active` datetime NOT NULL,
  PRIMARY KEY  (`ip`,`user_id`),
  KEY `LOOKUP` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_online`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_settings`
--

CREATE TABLE IF NOT EXISTS `engine4_user_settings` (
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `value` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`user_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_signup`
--

CREATE TABLE IF NOT EXISTS `engine4_user_signup` (
  `signup_id` int(11) unsigned NOT NULL auto_increment,
  `class` varchar(128) character set latin1 collate latin1_general_ci NOT NULL,
  `order` smallint(6) NOT NULL default '999',
  `enable` smallint(1) NOT NULL default '0',
  PRIMARY KEY  (`signup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `engine4_user_signup`
--

INSERT INTO `engine4_user_signup` (`signup_id`, `class`, `order`, `enable`) VALUES
(1, 'User_Plugin_Signup_Account', 2, 1),
(2, 'User_Plugin_Signup_Fields', 3, 1),
(3, 'User_Plugin_Signup_Photo', 4, 1),
(4, 'User_Plugin_Signup_Invite', 5, 0),
(5, 'Payment_Plugin_Signup_Subscription', 6, 0),
(6, 'Network_Plugin_Signup_Network', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_twitter`
--

CREATE TABLE IF NOT EXISTS `engine4_user_twitter` (
  `user_id` int(10) unsigned NOT NULL,
  `twitter_uid` bigint(20) unsigned NOT NULL,
  `twitter_token` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `twitter_secret` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `twitter_uid` (`twitter_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_twitter`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_user_verify`
--

CREATE TABLE IF NOT EXISTS `engine4_user_verify` (
  `user_id` int(11) unsigned NOT NULL,
  `code` varchar(64) character set latin1 collate latin1_general_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`user_id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `engine4_user_verify`
--

INSERT INTO `engine4_user_verify` (`user_id`, `code`, `date`) VALUES
(5, '3e4e164b00ded7d97c0fc152d7a5595f', '2012-01-05 00:31:03'),
(6, 'c064c063f5790a253147095ff934038e', '2012-01-11 22:42:59'),
(9, '94fe69994e0be51f60b824d9b1d0c896', '2012-01-24 02:47:39'),
(10, '82e7aed854e4a8c6f1757296023683f1', '2012-01-24 22:48:53'),
(11, '0af1d1b93d2b415e099aa8b12a8c2e3e', '2012-01-26 04:18:03'),
(12, '8fe199664a7a6952bc0c2bac44567b39', '2012-01-26 04:23:08'),
(13, 'ecaf0cc824030af3ac205406f77da897', '2012-01-26 04:38:19'),
(14, '9adaf1f919704e121bf560d75b5ebfc0', '2012-01-26 04:48:40'),
(15, 'a0e10cff6920959566c0708b6d47469a', '2012-01-26 13:09:30'),
(16, '7629f7ad5163ae45aca024aac12ec3c5', '2012-01-26 14:15:54'),
(17, 'f489c4d482bf2cf0d31672bfc21cecac', '2012-01-26 16:03:56'),
(18, '507909e1224a2d7a01be609d1acc8f6e', '2012-01-26 17:24:17'),
(19, '964ceb6013976f9c42505495d0c8e118', '2012-01-26 17:29:47'),
(20, '1bfca8f9a71593ded7488045a2dca93a', '2012-01-26 19:22:34'),
(21, 'dd97dd179f94c125ea3647c5cf241cb9', '2012-01-26 21:01:02'),
(22, 'ee20d0b3a3c47bbe38ce6e466cb23bb6', '2012-01-27 00:20:24'),
(23, '97122d47df86d013e40954509e36e495', '2012-01-27 02:54:30'),
(24, 'c524ec99c69741197cc6a4a2a32e4f00', '2012-01-27 04:31:36'),
(25, 'ac39d8b7c688710092f91a2e6732c63f', '2012-01-27 04:34:39'),
(26, 'f357869cc1ea34359c5c4b7742c929ff', '2012-01-27 13:16:25'),
(27, 'c06d235caf44bb4053789b8350f5adb1', '2012-01-27 13:56:12'),
(28, '72765712afb98b4f494203a8eb8404a2', '2012-01-27 14:13:29'),
(29, 'a4653b3c00841bf4aca8f84825aa49ec', '2012-01-27 14:19:14'),
(30, 'f9865dca8b7ff0271a2e06d0404e4f9f', '2012-01-27 14:25:20'),
(31, '9cc8dc1e42e66377eb10c3d47af19dff', '2012-01-27 15:00:15'),
(32, 'e4a1581a2375170a8ba209f3eb329763', '2012-01-27 15:05:55'),
(33, 'f27763a05b6c9baf083a80ce4483cb80', '2012-01-27 15:37:42'),
(34, '45f8af0b4279a9b2a1f2f54ed94f9fc7', '2012-01-27 15:46:49'),
(35, '21a3492ec64b4b78a192d59bdccbbb40', '2012-01-27 16:16:29'),
(36, '35d189c1a2655fa99447d7dd96568ae5', '2012-01-27 16:40:05'),
(37, '07649c80a9877925bfd3797c325bf637', '2012-01-27 16:53:56'),
(38, 'dd51a6e016be23bb00b8e5f2b92b0b09', '2012-01-27 16:57:30'),
(39, 'c4706ca5c26ec2256e5619d777c819ec', '2012-01-27 17:38:14'),
(40, '8699b85f3828319abb8fd7d0e024513c', '2012-01-27 17:47:05'),
(41, '47bd15ac13bfbd99befe0c12fe86d76f', '2012-01-27 18:28:29'),
(42, '457eb16a1fa66a4be4815c7f1698c295', '2012-01-27 18:32:47'),
(43, 'fa45f22c9609ab326e56888f89b9dbdf', '2012-01-27 18:38:57'),
(44, '5ae2f18f1a9ba0a1d3e1f8c6e169a6bf', '2012-01-27 18:43:02'),
(45, '917b903bcff8325f4c6b527f36cd0bde', '2012-01-27 19:24:04'),
(46, 'd22bc1fb2d9432b52b2aa2e60d9fbee1', '2012-01-27 19:26:23'),
(47, 'bce50ebdceca0e58e6d17e7c67781e7c', '2012-01-27 22:20:45'),
(48, '4e78c0e8869a28d1f26c9034e3f1b047', '2012-01-27 22:23:00'),
(49, '71d8a96240d500f66811309022ce890a', '2012-01-27 22:43:43'),
(50, '5792cba5fc08ffbc9e979eb11d9e7f7a', '2012-01-27 22:53:21'),
(51, '29b262808f6572062db7dda6797edd46', '2012-01-28 00:57:21'),
(52, 'a21f40733aa4faefb4abff30e6e2d995', '2012-01-28 01:36:59'),
(53, '36a9a6f9a66fd266738e8ddb82cf8685', '2012-01-28 01:50:30'),
(54, '92bf32eadf7cdf7efd50f00d49f9103a', '2012-01-28 01:52:05'),
(55, 'fc50249fcadcefd722cbe90fd0e9b400', '2012-01-28 02:56:38'),
(56, '887c319116ed5f5334cd15c2cf1a9ce0', '2012-01-28 03:02:22'),
(57, '36d57150883ef1a25c0433c806b9a35a', '2012-01-28 03:12:41'),
(58, '4c62056a83974d31ed5eb42c60bb37ec', '2012-01-28 03:19:56'),
(59, '88ecf8301c87572e2576200b8737cf38', '2012-01-28 03:20:03'),
(60, '7cc4fbed54f50cefba8acfcae08a05d9', '2012-01-28 03:29:15'),
(61, '29be8b6cce0e2d26c19ac1ed03a9a3b3', '2012-01-28 05:05:29'),
(62, '9ac22fdf1ec5dcab6401d71eb911372a', '2012-01-28 05:06:20'),
(63, '7ae3728b943aabc47921ddf6a3396df8', '2012-01-28 06:06:16'),
(64, 'd7eab45b68175a57e8b8a74b30b531e4', '2012-01-28 14:32:47'),
(65, '3a5c014166c8f255d2d96d8a167fc801', '2012-01-28 16:56:06'),
(66, 'f47a5dc02b4ccb9f58d50282557c07a8', '2012-01-28 17:05:04'),
(67, 'a0672d54a9c0226e9b645a702190fb5d', '2012-01-28 17:27:08'),
(68, 'c5890f8364293900c3cac1e856b5a66f', '2012-01-28 18:30:47'),
(69, '51a92790e9122e217761a061d4553f1e', '2012-01-29 03:00:49'),
(70, '82064b96b6aa893cfc63d7f4eafd2d47', '2012-01-29 17:00:30'),
(71, '2c94f748b45848bf65db857da0808954', '2012-01-29 18:26:10'),
(72, 'e6b9193079aa3b1dd0d4c0689238dffc', '2012-01-29 20:23:30'),
(73, '52be1e1632ac39487f11c5fc22934f6f', '2012-01-29 20:31:15'),
(74, 'dbe9ff8edea74689da68eb3e733170a6', '2012-01-29 20:37:15'),
(75, '1d66f6a52d0d599c93b3c535521f584a', '2012-01-30 00:49:12'),
(76, '095a3d681bf82dbb87424b389cb553a1', '2012-01-30 03:49:38'),
(77, '5ae871e2f38da58147f6e4078130ba5f', '2012-01-30 03:56:58'),
(78, '5a8cb2b40eb76f0f2cfea301ca37e413', '2012-01-30 04:20:51'),
(79, '9d1d3fd1fba9e0a8adaafaf5b421084d', '2012-01-30 13:15:54'),
(80, '26a3c20e6cfd6bce9acbba8bf761a7e7', '2012-01-30 13:42:37'),
(81, 'a00e67190960ac78a2931896b75720f4', '2012-01-30 14:50:04'),
(82, '354a2f9eb895af3a86ac46210cd0681b', '2012-01-30 15:16:37'),
(83, 'a5cc152b5e4c4cc2cc060134bb9ef8a4', '2012-01-30 15:19:44'),
(84, '0acc9dfd92c65a2f8c71ccbb0526f249', '2012-01-30 17:06:23'),
(85, '4c12d6f5dd25d02f160cd4093674de70', '2012-01-30 18:01:29'),
(86, 'fb9bfa8f801db1bf0d262a4ba3f70934', '2012-01-30 19:42:05'),
(87, 'f74aca0982f71e673e8c9353df155386', '2012-01-30 20:27:06'),
(88, '6708035250dee779e51e18e5a156d43a', '2012-01-30 21:12:39'),
(89, '753fb1a63099a722929c213192d1950a', '2012-01-30 21:19:30'),
(90, 'c855487723c118ddb803dad17d154a77', '2012-01-30 21:38:43'),
(91, 'b5725b84cb1861e32e514899521b98d5', '2012-01-30 22:14:29'),
(92, '6f23d3071b1495dcf5bf1d6c147dd170', '2012-01-31 00:27:33'),
(93, 'e73cccc558c66ae372528df5e28e2a23', '2012-01-31 03:00:30'),
(94, '973de93274ef7bfcceb2d35c7063c92c', '2012-01-31 03:30:33'),
(95, '26fa98696d20a3946e96c398602314e7', '2012-01-31 05:28:21'),
(96, 'abd21849ee0b4d96ac1ba82db5c6f449', '2012-01-31 14:15:51'),
(573980572, 'e17c0b69a62aadb2507562f0ef7a9d3b', '2012-02-01 03:28:56'),
(674218479, '7702c4653af9a1da95b3d3207d214098', '2012-02-01 03:17:05'),
(1051272904, 'abb64b709aa446b17f0cc8783ef82011', '2012-02-01 03:24:21'),
(1544235684, '4a8e766e117c4aa2888360b52082b4da', '2012-02-01 03:23:31'),
(1610159378, '94cbebf59eea9cf24fc7551ca4a2a7a8', '2012-02-02 00:19:11'),
(1617228157, '6f91898e2669c23b59ec3474bbdccf61', '2012-02-01 23:55:09'),
(1829893787, '4de935a3bcb32222578b28cb023a042e', '2012-02-01 03:25:11'),
(2002635803, '26075812e488066fbfa715fae4085f69', '2012-02-02 01:25:32'),
(2031245164, '2aaca20ff3daa9cc693807b5414df5ef', '2012-02-02 01:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_users`
--

CREATE TABLE IF NOT EXISTS `engine4_users` (
  `user_id` int(11) unsigned NOT NULL auto_increment,
  `email` varchar(128) collate utf8_unicode_ci NOT NULL,
  `username` varchar(128) collate utf8_unicode_ci default NULL,
  `displayname` varchar(128) collate utf8_unicode_ci NOT NULL default '',
  `photo_id` int(11) unsigned NOT NULL default '0',
  `status` text collate utf8_unicode_ci,
  `status_date` datetime default NULL,
  `password` char(32) collate utf8_unicode_ci NOT NULL,
  `salt` char(64) collate utf8_unicode_ci NOT NULL,
  `locale` varchar(16) character set latin1 collate latin1_general_ci NOT NULL default 'auto',
  `language` varchar(8) character set latin1 collate latin1_general_ci NOT NULL default 'en_US',
  `timezone` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default 'America/Los_Angeles',
  `search` tinyint(1) NOT NULL default '1',
  `show_profileviewers` tinyint(1) NOT NULL default '1',
  `level_id` int(11) unsigned NOT NULL,
  `invites_used` int(11) unsigned NOT NULL default '0',
  `extra_invites` int(11) unsigned NOT NULL default '0',
  `enabled` tinyint(1) NOT NULL default '1',
  `verified` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `creation_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `lastlogin_date` datetime default NULL,
  `update_date` int(11) default NULL,
  `member_count` smallint(5) unsigned NOT NULL default '0',
  `view_count` int(11) unsigned NOT NULL default '0',
  `creation_ip` varbinary(16) NOT NULL,
  `lastlogin_ip` varbinary(16) default NULL,
  `ulogin_id` varchar(128) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `login_id_user_01` (`ulogin_id`),
  UNIQUE KEY `USERNAME` (`username`),
  KEY `MEMBER_COUNT` (`member_count`),
  KEY `CREATION_DATE` (`creation_date`),
  KEY `search` (`search`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2031245165 ;

--
-- Dumping data for table `engine4_users`
--

INSERT INTO `engine4_users` (`user_id`, `email`, `username`, `displayname`, `photo_id`, `status`, `status_date`, `password`, `salt`, `locale`, `language`, `timezone`, `search`, `show_profileviewers`, `level_id`, `invites_used`, `extra_invites`, `enabled`, `verified`, `approved`, `creation_date`, `modified_date`, `lastlogin_date`, `update_date`, `member_count`, `view_count`, `creation_ip`, `lastlogin_ip`, `ulogin_id`) VALUES
(1, 'christopher@lloydentertainment.com', 'admin', 'System Administrator', 84, NULL, NULL, '900d90c20f69d5551e900b58b56c0c50', '4760666', 'auto', 'en_US', 'US/Central', 1, 1, 1, 0, 0, 1, 1, 1, '2012-01-04 22:17:31', '2012-02-01 22:56:47', '2012-02-02 01:27:17', NULL, 0, 12, '�r�', 'Dr�', 'admin'),
(6, 'odesk@op2vb.com', 'admin2', 'Secondary Admin', 0, NULL, NULL, '14519c552ca32d5b48b9aebfbee1d984', '8131035', 'English', 'English', 'US/Central', 1, 1, 1, 0, 0, 1, 1, 1, '2012-01-11 22:42:59', '2012-01-11 22:45:37', '2012-02-02 01:05:27', NULL, 0, 5, '���', '<�r', 'odesk'),
(13, 'annedecker@att.net', NULL, 'Kate Decker', 0, NULL, NULL, '81158357a893856e90b604cc8779168d', '8735852', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 04:38:19', '2012-02-02 00:13:05', NULL, NULL, 0, 5, 'K��', NULL, 'katedecker'),
(14, 'jchoi@ppandco.com', NULL, 'Jenni Choi', 0, NULL, NULL, 'e472f554ab263bdcfc9702ff969e6017', '4788489', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 04:48:40', '2012-01-31 19:59:20', NULL, NULL, 0, 4, 'DaF�', NULL, 'jennichoi'),
(16, 'mkmrucker@cox.net', NULL, 'Bailey Rucker', 0, NULL, NULL, 'c12fcc5823f45859337f5a6b51c7da85', '3321556', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 14:15:54', '2012-01-31 19:55:40', NULL, NULL, 0, 1, 'Da�t', NULL, 'marcia'),
(17, 'edmondroberts@hotmail.com', NULL, 'Emily Roberts', 0, NULL, NULL, '2a326f5fbdd4daa197c04f41a88a21c6', '2181468', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 16:03:56', '2012-01-31 19:58:16', NULL, NULL, 0, 1, 'Da��', NULL, 'kerryroberts'),
(18, 'diane@ehsrg.com', NULL, 'Diane Fair', 0, NULL, NULL, '6a9c1f78b44b9e26b200d203c0cdc302', '5213981', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 17:24:17', '2012-01-31 20:22:18', NULL, NULL, 0, 1, 'F�C''', NULL, 'dcrrfair'),
(19, 'kellycrotts@gmail.com', NULL, 'Jillian Crotts', 0, NULL, NULL, '557da58c474ad121d56a0d3d9ed54623', '7980837', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 17:29:47', '2012-01-31 20:17:45', NULL, NULL, 0, 1, 'cw޵', NULL, 'jilliancrotts'),
(20, 'tbell1961@aol.com', NULL, 'Tonya Bell', 0, NULL, NULL, '56c501fb9146b0013bc50ba11e5a6e28', '8723070', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 19:22:34', '2012-01-31 19:30:24', NULL, NULL, 0, 1, 'F�GN', NULL, 'tonyabell'),
(21, 'prbert66@cox.net', NULL, 'Alyssa Bert', 0, NULL, NULL, '91d13313b1fbbcd685f9632b8bd0fe5f', '2714238', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-26 21:01:02', '2012-01-31 19:42:51', NULL, NULL, 0, 2, '��C�', NULL, 'prbert66'),
(22, 'kellykeckwright1@yahoo.com', NULL, 'Bailee Wright', 0, NULL, NULL, '26e2d3c91b6d29200d46c1a0926e6d95', '3216030', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 00:20:24', '2012-01-31 20:16:41', NULL, NULL, 0, 1, 'c#�=', NULL, 'kellywright'),
(23, 'macyfam@cox.net', NULL, 'Kristen Macy', 0, NULL, NULL, '7c9a70978fb94bf7ea772086a4a07f6d', '4297851', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 02:54:30', '2012-01-31 19:57:30', '2012-02-01 23:46:40', NULL, 0, 1, 'Da��', 'Da��', 'kmace'),
(24, 'radecker@att.net', NULL, 'Sarah Decker', 0, NULL, NULL, '0078413d94b07be649f59bb762f7de61', '5275138', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 04:31:36', '2012-01-31 19:43:41', NULL, NULL, 0, 4, 'K��', NULL, 'sarahdecker'),
(25, 'sandyroberts@mac.com', NULL, 'Katie Roberts', 0, NULL, NULL, 'dd44638249a5573c56e1bd7adf377ab0', '8318034', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 04:34:39', '2012-01-31 20:21:23', '2012-02-01 15:27:55', NULL, 0, 2, '��_', 'l��l', 'bsakroberts'),
(26, 'becky.ethridge@gmail.com', NULL, 'Becky Ethridge', 0, NULL, NULL, '1f019915a6ecb998088f28723957d259', '9003837', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 13:16:25', '2012-01-31 19:55:26', NULL, NULL, 0, 4, '��', NULL, 'modlbje'),
(27, 'catherine.dortch@dvn.com', NULL, 'McKinly Dortch', 0, NULL, NULL, '5e91d6913d6c04502dc38300ae902214', '9707161', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 13:56:12', '2012-01-31 19:55:04', NULL, NULL, 0, 1, '?c', NULL, 'mckinlydortch'),
(28, 'zona@scholls.net', NULL, 'Ericka Scholl', 0, NULL, NULL, '283b46f5be056f22da4b74813b3f48c7', '4261647', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 14:13:29', '2012-01-31 19:22:09', NULL, NULL, 0, 3, '��', NULL, 'zscholl'),
(29, 'terri.mccoy@cox.net', NULL, 'Terri McCoy', 0, NULL, NULL, 'eb1d6f454cae80386de58b25ff9d956a', '5670297', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 14:19:14', '2012-01-31 19:31:44', NULL, NULL, 0, 3, 'b���', NULL, 'tmccoy'),
(30, 'wrassemom2@sbcglobal.net', NULL, 'Bethany Wrasse', 0, NULL, NULL, 'eca66b7f0ec95df2a5e707959e21df32', '3202542', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 14:25:20', '2012-01-31 20:16:01', NULL, NULL, 0, 1, 'F�D�', NULL, 'kristiewrasse'),
(31, 'dandmrude@yahoo.com', NULL, 'Miranda Rude', 0, NULL, NULL, '3cb8012b50bbb7cc82bf39243df61e1b', '1327872', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 15:00:15', '2012-01-31 20:22:05', NULL, NULL, 0, 1, '�aCp', NULL, 'dandmrude'),
(32, 'tkelley7@cox.net', NULL, 'Claire Kelley', 0, NULL, NULL, '66b64a8acd1e0c142854eb08f1ad83ab', '6236333', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 15:05:55', '2012-01-31 20:21:38', NULL, NULL, 0, 4, '���
', NULL, 'ckelley'),
(33, 'michellerobnett@sbcglobal.net', NULL, 'Katelyn Robnett', 0, NULL, NULL, '4feea146880623921ec770f3b3fc4146', '7352068', '', '', 'US/Pacific', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 15:37:42', '2012-01-31 19:54:47', NULL, NULL, 0, 1, 'F�@4', NULL, 'michellerobnett'),
(34, 'efrogge@cox.net', NULL, 'Hannah Frogge', 0, NULL, NULL, 'a585c3039f6201060177be5566ff9da5', '1063152', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 15:46:49', '2012-01-31 20:18:33', NULL, NULL, 0, 1, 'D
', NULL, 'hfrogge'),
(35, 'brandi.spear2@gmail.com', NULL, 'Tayler  Burzette', 0, NULL, NULL, '41b3fcdae4e6b30d55462804e22a151a', '6384208', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 16:16:29', '2012-01-31 19:28:26', NULL, NULL, 0, 1, 'DtZ', NULL, 'tayburz'),
(36, 'polcovich@sbcglobal.net', NULL, 'Teagan Polcovich', 0, NULL, NULL, 'f1f7e5d9dadd91fa6bebbf67257d3bd8', '7517728', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 16:40:05', '2012-01-31 19:24:49', NULL, NULL, 0, 1, 'F�n', NULL, 'tpolcovich'),
(37, 'djjackson@okcps.org', NULL, 'Aeriel Jackson', 0, NULL, NULL, '6ecd8dff3b52c1e95dd22a290be1f83a', '1152831', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 16:53:56', '2012-01-31 19:47:01', NULL, NULL, 0, 1, '�:�<', NULL, '3334'),
(38, 'lisatburgess68@sbcglobal.net', NULL, 'Lauren Burgess', 0, NULL, NULL, 'cf32471581ec085a542d2167fbaa2325', '3097174', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 16:57:30', '2012-01-31 19:57:15', NULL, NULL, 0, 1, 'lޥ|', NULL, 'lmb2000'),
(39, 'kylee.rice@sbcglobal.net', NULL, 'Allie Rice', 0, NULL, NULL, '8eeff9686e08383603548e9a7996528e', '1284640', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 17:38:14', '2012-01-31 20:20:37', NULL, NULL, 0, 1, 'cb%�', NULL, 'allierice'),
(40, 'shellyjohnson@sbcglobal.net', NULL, 'Sarah Johnson', 0, NULL, NULL, '36ee274346d2ace2f08c4f84cbadd22c', '2304154', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 17:47:05', '2012-01-31 19:51:02', NULL, NULL, 0, 2, '�:J', NULL, 'shellyjoh'),
(43, 'joewade@cox.net', NULL, 'Ashley Wade', 0, NULL, NULL, 'fc6285039a16466a99097a8d39ed2619', '2568727', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 18:38:57', '2012-02-02 01:06:56', NULL, NULL, 0, 9, '�1D', NULL, 'ashleywade'),
(44, 'gandall7@cox.net', NULL, 'Josie Gandall', 0, NULL, NULL, '36d562ae89b9ccd2956e64f61151e1e8', '5249332', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 18:43:02', '2012-01-31 20:17:59', NULL, NULL, 0, 2, 'b���', NULL, 'jganda'),
(45, 'Robynharwell@sbcglobal.net', NULL, 'Isabel Harwell', 0, NULL, NULL, '86e313d67fdc896d31651b8cc588bfb3', '7860711', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 19:24:04', '2012-01-31 20:18:20', NULL, NULL, 0, 1, '��	 ', NULL, 'izzyb'),
(46, 'rbolles@cox.net', NULL, 'Madison Bolles', 0, NULL, NULL, 'df15128fed15925350b4a4c644ff741f', '9469068', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 19:26:23', '2012-01-31 19:56:31', NULL, NULL, 0, 1, 'D��', NULL, 'madi'),
(47, 'madisonward@live.com', NULL, 'Madison Ward', 0, NULL, NULL, '49345c2701d7377c89b83ff4117b4190', '6620786', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 22:20:45', '2012-01-31 19:44:14', NULL, NULL, 0, 1, 'C�', NULL, 'mrward'),
(48, 'rszawisza@cox.net', NULL, 'Miranda Zawisza', 0, NULL, NULL, 'cc2092c2c01c76ecc15749e8f5a128f9', '7831863', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 22:23:00', '2012-01-31 19:52:06', '2012-02-01 03:00:09', NULL, 0, 3, 'b��6', 'b��6', 'rszawisza'),
(49, 'alecia3@att.net', NULL, 'Maicee Morgan', 24, NULL, NULL, 'caee71f165a3e84f8053b283756aefbc', '7212109', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-27 22:43:43', '2012-01-31 19:56:12', NULL, NULL, 0, 2, 'F�
', NULL, 'maianne'),
(50, 'kimoaweau@live.com', NULL, 'Kimo Aweau', 0, NULL, NULL, 'e3d4f2a7a052b1e25b33c7f6ab8cd6c7', '5890980', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-27 22:53:21', '2012-01-30 03:15:47', NULL, NULL, 0, 1, '�f��', NULL, 'kaweau'),
(51, 'rhaney7317@aol.com', NULL, 'Kristen Wilson', 0, NULL, NULL, 'ca21cd568e77961416ed85fdc4b62806', '4486695', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-28 00:57:21', '2012-01-30 03:15:16', NULL, NULL, 0, 2, 'DaQ�', NULL, 'kristenwilson'),
(52, 'Willethr@aol.com', NULL, 'Will Ethridge', 0, NULL, NULL, 'bfb66f8100163c77ab9f14f2529ca885', '5405978', 'English', 'English', 'US/Central', 1, 1, 1, 0, 0, 1, 1, 1, '2012-01-28 01:36:59', '2012-01-30 02:55:22', '2012-01-31 04:23:57', NULL, 0, 2, 'D}�', 'H�1�', 'willethr'),
(53, 'rdecker@op2vb.com', NULL, 'Randy Decker', 0, NULL, NULL, '8f5f316d3ef6b92b000d141c801b8845', '7563339', 'English', 'English', 'US/Central', 1, 1, 1, 0, 0, 1, 1, 1, '2012-01-28 01:50:30', '2012-01-30 02:54:31', '2012-02-01 23:58:53', NULL, 0, 5, 'K��', 'K��', 'randydecker'),
(54, 'gatorvb@cox.net', NULL, 'Jeff Boyland', 0, NULL, NULL, '2de33de633cb9b89ec7610d33fe49c23', '3657214', 'English', 'English', 'US/Central', 1, 1, 1, 0, 0, 1, 1, 1, '2012-01-28 01:52:05', '2012-01-30 03:10:58', NULL, NULL, 0, 2, 'H��', NULL, 'gatorvb'),
(55, 'kena_thompson@yahoo.com', NULL, 'Kena Thompson', 0, NULL, NULL, '2edfb35e031d40c69a289d8dc5982c5c', '7251075', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-28 02:56:38', '2012-02-02 01:11:27', NULL, NULL, 0, 4, '���', NULL, 'kenathompson'),
(56, 'jelliotblake@yahoo.com', NULL, 'Elliot Blake', 0, NULL, NULL, 'd3b7ddbc98460fcf59bf843fcf680483', '9598830', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-28 03:02:22', '2012-01-30 03:14:37', NULL, NULL, 0, 2, 'Da�w', NULL, 'ebvolley98'),
(57, 'kbradley16@cox.net', NULL, 'Samantha Bradley', 0, NULL, NULL, 'f72134e99fcd07f038638df05f512cdb', '5092288', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 03:12:41', '2012-01-31 19:33:06', NULL, NULL, 0, 1, 'D
�#', NULL, 'srb10'),
(58, 'lisa@sportsimpact.biz', NULL, 'Lisa Polcovich', 0, NULL, NULL, '78bd53ceaf997b9cb1085670d4d5e171', '9428850', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-28 03:19:56', '2012-02-02 01:16:31', NULL, NULL, 0, 6, 'F�n', NULL, 'lpolcovich'),
(59, 'herickson001@hotmail.com', NULL, 'Heather  Erickson', 0, NULL, NULL, '01a4a77883e7ef544d00d8967a4c6ff9', '4016251', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 03:20:03', '2012-01-31 20:19:56', NULL, NULL, 0, 1, 'F�I�', NULL, 'herickson'),
(60, 'sophiebonadeo@yahoo.com', NULL, 'Sophie Bonadeo', 0, NULL, NULL, 'd941325c5cd722eccb1c7cc632918ec0', '4197890', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 03:29:15', '2012-01-31 19:29:05', NULL, NULL, 0, 1, 'D[��', NULL, 'sophiebonadeo'),
(61, 'forbelles@aol.com', NULL, 'Taylor Harvick', 0, NULL, NULL, '588cfa58b943f2f6ef5135ee54a8d351', '2668161', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 05:05:29', '2012-02-02 01:12:29', NULL, NULL, 0, 3, 'Da�\\', NULL, 'forbelles'),
(62, 'wljess@aol.com', NULL, 'Ciera Jesse', 0, NULL, NULL, 'bfc6eb92249ef80f259fdf1a43c05137', '2570678', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 05:06:20', '2012-01-31 19:22:39', NULL, NULL, 0, 2, 'Da��', NULL, 'wljess'),
(63, 'susan@showsecretary.com', NULL, 'Anna Peacock', 0, NULL, NULL, '851e593a0b34fcbaaadc7f7736ca3434', '7773871', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 06:06:16', '2012-01-31 19:50:48', NULL, NULL, 0, 1, '����', NULL, 'showsec'),
(64, 'peytonf123@hotmail.com', NULL, 'Peyton Fryer', 0, NULL, NULL, 'b599316db6d5d400a9e81cbdea7f220d', '9780248', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 14:32:47', '2012-02-02 01:14:21', NULL, NULL, 0, 5, 'b���', NULL, 'peytonfryer'),
(65, 'claymiles@gmail.com', NULL, 'Sydney Miles', 0, NULL, NULL, 'ed3e9bd08c26ac473454a4374bb394f5', '1169267', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 16:56:06', '2012-01-31 19:28:44', NULL, NULL, 0, 1, '� �A', NULL, 'sydney'),
(66, 'lm1312@mac.com', NULL, 'Paige Miles', 0, NULL, NULL, 'bb351fbefab49ebd7d8ab024a8439385', '9113452', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 17:05:04', '2012-01-31 19:54:25', NULL, NULL, 0, 2, '� �A', NULL, 'paige'),
(67, 'hbmacy@gmail.com', NULL, 'Kenna Macy', 0, NULL, NULL, '7ddddba43b6830df6c78b093ec987173', '1830560', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 17:27:08', '2012-01-31 19:58:30', NULL, NULL, 0, 1, 'Da��', NULL, 'kenmac'),
(68, '3tdorseys@cox.net', NULL, 'Timmie Dorsey', 0, NULL, NULL, '0c94d9137611434968817a5628015386', '1974067', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-28 18:30:47', '2012-02-02 01:12:01', NULL, NULL, 0, 7, 'H�}F', NULL, 'tdorsey'),
(69, 'alica.sexton@gmail.com', NULL, 'Alica Sexton', 0, NULL, NULL, 'f8c170687b74f4a29a7de58102f4c099', '1720706', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-29 03:00:49', '2012-01-31 19:30:58', NULL, NULL, 0, 2, 'D
4�', NULL, 'asexton'),
(70, '3srites@cox.net', NULL, 'Samantha Srite', 0, NULL, NULL, '29e1db5bdce5c8b1d10496a93df3f696', '6686360', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-29 17:00:30', '2012-01-31 19:43:09', NULL, NULL, 0, 1, 'D
��', NULL, 'panther'),
(71, 'vmanri2000@yahoo.com', NULL, 'Rachel Manriquez', 0, NULL, NULL, '38724c52a02f5a30f5439edb4c06f6ce', '9120715', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-29 18:26:10', '2012-01-31 19:24:31', NULL, NULL, 0, 2, 'cr��', NULL, 'vmanri2000'),
(72, 'dbenson@simplexgrinnell.com', NULL, 'B. DeWayne Benson', 0, NULL, NULL, '0c5e380043603d02ab63f7a5dc28d864', '6555598', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-29 20:23:30', '2012-01-31 20:18:48', NULL, NULL, 0, 3, 'J\n��', NULL, 'dbenson'),
(73, 'AlissaBBenson@gmail.com', NULL, 'Alissa Benson', 0, NULL, NULL, 'c1a5e8111931b55482aac660944437de', '5576867', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-29 20:31:15', '2012-01-31 19:47:36', NULL, NULL, 0, 1, 'J\n��', NULL, 'alissabenson'),
(74, 'vbmoocow22@att.net', NULL, 'Maggie Benson', 0, NULL, NULL, 'b8fb1bad6ba534e7cfc2b876733ff16d', '1002135', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-29 20:37:15', '2012-01-31 19:59:49', NULL, NULL, 0, 3, 'J\n��', NULL, 'maggiebenson'),
(75, 'sherri.wiewel@cox.net', NULL, 'Anna Wiewel', 0, NULL, NULL, 'f6239229fa4c29428bb3577e00b1622b', '9505166', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 00:49:12', '2012-01-31 20:15:23', NULL, NULL, 0, 5, 'D�}�', NULL, 'littlewiewel'),
(77, 'samduncanokre@gmail.com', NULL, 'Sammy Duncan', 0, NULL, NULL, '0f328f2da1310bbbef98a05f1f29e0d9', '1118544', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-30 03:56:58', '2012-02-02 01:12:55', NULL, NULL, 0, 6, 'D
�S', NULL, 'sduncan'),
(78, 'mboevers@zagmail.gonzaga.edu', NULL, 'Michelle Boevers', 0, NULL, NULL, 'a9ff5c4aca80d8e0af6edee7cd03d053', '3117011', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-30 04:20:51', '2012-01-31 02:21:40', NULL, NULL, 0, 1, 'Da�', NULL, 'mboevers'),
(79, 'heather.overturf@gmail.com', NULL, 'Heather Ruiz', 0, NULL, NULL, 'f940e9af38e0b47c34b40606d1e7adab', '8026388', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-30 13:15:54', '2012-01-31 02:21:16', NULL, NULL, 0, 4, 'b��u', NULL, 'hruiz'),
(80, 'wekfam@cox.net', NULL, 'Paige Wekenborg', 0, NULL, NULL, 'b741b428f4df55b57da4d9797cdb0743', '4859821', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 13:42:37', '2012-02-02 01:15:47', NULL, NULL, 0, 3, 'DaX�', NULL, 'wekfam'),
(81, 'jheiden2@cox.net', NULL, 'Jessie Heiden', 0, NULL, NULL, '58eb8dcb299b79e9531fed514c901d90', '6562672', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 14:50:04', '2012-01-31 19:32:35', NULL, NULL, 0, 1, 'b��C', NULL, 'steph1988'),
(82, 'mbrooks@levybeffort.com', NULL, 'Jennifer Brooks', 0, NULL, NULL, 'f98e31d20214af69ec0a4652957d1ce9', '7616435', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 15:16:37', '2012-01-31 19:43:56', NULL, NULL, 0, 1, '�L\0�', NULL, 'mrbrooks724'),
(83, 'lkleindahlberg@gmail.com', NULL, 'REGAN DEQUASIE', 0, NULL, NULL, 'ce8f65b7265273a512699af732cfdca4', '4088284', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 15:19:44', '2012-01-31 19:57:59', NULL, NULL, 0, 1, '��B', NULL, 'lisaklein9'),
(84, 'mherrin@op2vb.com', NULL, 'Mark Herrin', 0, NULL, NULL, '7febd51436932495d37fe3ca2e6d2220', '4273811', 'English', 'English', 'US/Central', 1, 1, 1, 0, 0, 1, 1, 1, '2012-01-30 17:06:23', '2012-01-31 02:20:30', NULL, NULL, 0, 1, '�f��', NULL, 'peak142'),
(85, 'jjbeeson12@yahoo.com', NULL, 'Skylar Hamlett', 0, NULL, NULL, 'fc62fa23b3b9e5d35c49422fe74f713e', '2337995', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 18:01:29', '2012-01-31 19:50:31', NULL, NULL, 0, 1, '�k�', NULL, 'skylar'),
(86, 'randall.gantz@yahoo.com', NULL, 'Reagan Gantz', 0, NULL, NULL, 'c195f17b4adf4e56e42908288055433f', '1108781', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 19:42:05', '2012-01-31 19:52:20', NULL, NULL, 0, 1, 'D�', NULL, 'rgantz'),
(87, 'nataliejo_op2@hotmail.com', NULL, 'Natalie Murray', 0, NULL, NULL, 'cc6f526bd42a515f962642617c81dfd3', '8651360', 'English', 'English', 'US/Central', 1, 1, 3, 0, 0, 1, 1, 1, '2012-01-30 20:27:06', '2012-01-31 02:19:59', NULL, NULL, 0, 1, '�:J\n', NULL, 'nataliejo2'),
(88, 'knettleton@dealercapital.com', NULL, 'Emma Nettleton', 0, NULL, NULL, 'f74e442a06ca528e886adf7fdd8974b7', '8011787', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 21:12:39', '2012-02-02 01:11:01', NULL, NULL, 0, 3, 'F�X�', NULL, 'knettleton'),
(89, 'c_skoch@yahoo.com', NULL, 'Sarah Gilkerson', 0, NULL, NULL, '76072dac4aaaa09172481b654bda924a', '6053415', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 21:19:30', '2012-01-31 19:51:18', NULL, NULL, 0, 1, 'B���', NULL, 'sgilkerson'),
(90, 'donlisacochran@sbcglobal.net', NULL, 'Haley Cochran', 0, NULL, NULL, '0d74f110a23a2c6dc839f321573551b1', '1854508', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 21:38:43', '2012-01-31 20:19:27', NULL, NULL, 0, 1, '��ee', NULL, 'haleynicole'),
(91, 'tpearson11@cox.net', NULL, 'Madison Pearson', 0, NULL, NULL, 'c9f639a3bcd46b3b2dac41180edf850a', '7202865', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-30 22:14:29', '2012-01-31 19:25:13', NULL, NULL, 0, 1, '��', NULL, 'tpearson11'),
(92, 'gboyland@cox.net', NULL, 'Taryn Boyland', 0, NULL, NULL, 'd1335d36e9acdce9819f21984538a811', '9687891', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-31 00:27:33', '2012-01-31 20:19:39', NULL, NULL, 0, 2, '��\nG', NULL, 'gboyland'),
(93, 'jamie_massengill@yahoo.com', NULL, 'Lakyn Massengill', 0, NULL, NULL, '01a06bc4de92b33ad5b437a848fe5d9c', '7684967', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-31 03:00:30', '2012-01-31 20:15:43', NULL, NULL, 0, 1, 'D��', NULL, 'lakynm'),
(94, 'meget@att.net', NULL, 'SYDNEY MEGET', 0, NULL, NULL, '0a00cf3d1489ffaa744ec0396904a9b7', '9826483', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-31 03:30:33', '2012-01-31 20:21:52', NULL, NULL, 0, 3, 'c{�W', NULL, 'cmeget'),
(95, 'lj_baker@cox.net', NULL, 'Reagan Baker', 0, NULL, NULL, '19433bc8293f7bc68f5d756368fb294b', '2176278', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-31 05:28:21', '2012-02-02 01:13:31', NULL, NULL, 0, 3, 'D���', NULL, 'tiredshopper321'),
(96, 'elanna.killackey@gmail.com', NULL, 'Elanna Killackey', 0, NULL, NULL, '6c676384dbaf2514e920756180057376', '1541625', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-01-31 14:15:51', '2012-02-02 01:08:15', NULL, NULL, 0, 4, '�:J', NULL, 'elannabeth'),
(573980572, 'savannahonley@sbcglobal.net', NULL, 'Savannah Onley', 0, NULL, NULL, '653479af4f6834f0e8d7b404064451e5', '6643153', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-02-01 03:28:56', '2012-02-01 14:10:48', NULL, NULL, 0, 0, 'F�*S', NULL, 'savannahb'),
(674218479, 'cbouvette@cox.net', NULL, 'Shary Bouvette', 0, NULL, NULL, '880bf434eb8ca6f4e0696d3a4b9fee49', '8456741', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-02-01 03:17:05', '2012-02-01 14:12:06', NULL, NULL, 0, 0, 'Da�''', NULL, 'kbouvette'),
(886555540, 'jm-mccormick@hotmail.com', NULL, 'Chanelle McCormick', 0, NULL, NULL, '167869629dff9dbbd9e326013c46abbd', '5271193', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-02-02 00:38:28', '2012-02-02 01:19:06', NULL, NULL, 0, 0, 'F�', NULL, 'mccormick56'),
(1383914828, 'edgarmiraku@yahoo.com', NULL, 'Edgar Miraku', 88, NULL, NULL, 'd4e99b1e18d5bc00d12100de7363e208', '1284123', 'English', 'English', 'US/Central', 1, 1, 1, 0, 0, 1, 1, 1, '2012-02-01 22:49:45', '2012-02-01 23:03:12', '2012-02-02 00:26:32', NULL, 0, 1, '@�}�', 'c��,', 'edgar'),
(1610159378, 'hbmacy@gmail.com', NULL, 'Kenna Macy', 0, NULL, NULL, 'c3822dcffc08b2aac925d78553075f06', '5061920', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-02-02 00:19:11', '2012-02-02 01:19:19', NULL, NULL, 0, 0, 'Da��', NULL, 'kennamc'),
(1617228157, 'mark.mccoy1@cox.net', NULL, 'Ashley McCoy', 0, NULL, NULL, 'b60616815df7a2596c63cf74f2767a2d', '9359485', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-02-01 23:55:09', '2012-02-02 01:27:53', NULL, NULL, 0, 0, 'Da�B', NULL, 'ashley12'),
(1829893787, 'dshifty1@cox.net', NULL, 'Livi Schiffner', 0, NULL, NULL, 'ca21f7286651594553e6ba7b1c584c93', '1896995', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-02-01 03:25:11', '2012-02-01 14:12:41', '2012-02-02 00:31:53', NULL, 0, 0, 'D
mR', 'D
mR', 'dshifty1'),
(2002635803, 'smroy@cox.net', NULL, 'Lindsey Roy', 0, NULL, NULL, '50d3d8fc34fc1a6fe9f99fcef7c252f4', '4757891', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 1, 1, 1, '2012-02-02 01:25:32', '2012-02-02 01:27:37', NULL, NULL, 0, 0, 'DaT', NULL, '800018431'),
(2031245164, 'smroy@cox.net', NULL, 'Jenny Roy', 0, NULL, NULL, '5eac65cf885f6645341b0f018c00a81c', '9394084', 'English', 'English', 'US/Central', 1, 1, 4, 0, 0, 0, 0, 0, '2012-02-02 01:38:20', '2012-02-02 01:38:20', NULL, NULL, 0, 0, 'DaT', NULL, 'happy01');

-- --------------------------------------------------------

--
-- Table structure for table `engine4_younetcore_apisettings`
--

CREATE TABLE IF NOT EXISTS `engine4_younetcore_apisettings` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `params` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_younetcore_apisettings`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_younetcore_install`
--

CREATE TABLE IF NOT EXISTS `engine4_younetcore_install` (
  `token` text NOT NULL,
  `params` text NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `engine4_younetcore_install`
--


-- --------------------------------------------------------

--
-- Table structure for table `engine4_younetcore_license`
--

CREATE TABLE IF NOT EXISTS `engine4_younetcore_license` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `title` text NOT NULL,
  `descriptions` text,
  `type` varchar(50) NOT NULL,
  `current_version` varchar(50) NOT NULL,
  `lasted_version` varchar(50) NOT NULL,
  `is_active` int(1) default '0',
  `date_active` int(11) default NULL,
  `params` text,
  `download_link` varchar(500) default NULL,
  `demo_link` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `engine4_younetcore_license`
--

INSERT INTO `engine4_younetcore_license` (`id`, `name`, `title`, `descriptions`, `type`, `current_version`, `lasted_version`, `is_active`, `date_active`, `params`, `download_link`, `demo_link`) VALUES
(1, 'advgroup', 'Advgroup', 'This is Advanced Group Plugin,', 'module', '4.01p1', '4.01p1', 0, NULL, NULL, NULL, NULL);