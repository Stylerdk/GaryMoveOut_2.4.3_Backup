-- Add AutoAnnounce System. 
DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
