DROP TABLE IF EXISTS `peak_`.`engine4_album_networks`;
CREATE TABLE  `peak_`.`engine4_album_networks` (
  `resource_id` int(10) unsigned NOT NULL,
  `network_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `resource_approved` tinyint(1) DEFAULT '1',
  `user_approved` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`resource_id`,`network_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;