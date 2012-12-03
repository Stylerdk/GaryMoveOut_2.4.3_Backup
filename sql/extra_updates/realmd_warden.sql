ALTER TABLE `account` ADD COLUMN `os` VARCHAR(4) DEFAULT '' NOT NULL AFTER `locale`;

DROP TABLE IF EXISTS `warden_data_result`;

CREATE TABLE `warden_data_result` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `check` int(3) DEFAULT NULL,
  `data` tinytext,
  `str` tinytext,
  `address` int(8) DEFAULT NULL,
  `length` int(2) DEFAULT NULL,
  `result` tinytext,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

DELETE FROM `warden_data_result` WHERE id IN (1000,1001,1002,1003);

INSERT INTO `warden_data_result` (`id`, `check`, `data`, `str`, `address`, `length`, `result`, `comment`) VALUES
(1000,243,'','',4840352,2,'558B','lua protection'),
(1001,243,'','',8979979,5,'E04D62503F','Hyper speed'),
(1002,243,'','',9208923,5,'C0854A3340','gravity'),
(1003,243,'','',8100062,2,'7541','air jump');

ALTER TABLE `warden_data_result` DROP COLUMN `id`;