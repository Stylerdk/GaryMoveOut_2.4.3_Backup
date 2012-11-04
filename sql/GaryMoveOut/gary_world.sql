-- Add AutoAnnounce System. 
DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
