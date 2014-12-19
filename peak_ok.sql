-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2012 at 07:18 PM
-- Server version: 5.0.77
-- PHP Version: 5.2.6

create database peak_;
use peak_;
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


