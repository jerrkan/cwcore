/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:34:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for transport_events
-- ----------------------------
DROP TABLE IF EXISTS `transport_events`;
CREATE TABLE `transport_events` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `waypoint_id` int(11) unsigned NOT NULL DEFAULT '0',
  `event_id` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
