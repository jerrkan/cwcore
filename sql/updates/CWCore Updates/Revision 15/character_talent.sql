DROP TABLE IF EXISTS `character_talent`;

CREATE TABLE `character_talent` (
  `guid` int(11) unsigned NOT NULL,
  `spell` int(11) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;