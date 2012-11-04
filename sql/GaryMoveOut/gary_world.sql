-- Add AutoAnnounce System. 
DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- Add Name Admin, GameMaster and Guard Announces.
REPLACE INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2003, '|cffffff00[|c1f4DF620Guard|r |c100FFFF0%s|c1f4DF620 Announces|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2002, '|cffffff00[|c1f4DF620GameMaster|r |c100FFFF0%s|c1f4DF620 Announces|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2001, '|cffffff00[|c1f4DF620Administrator|r |c100FFFF0%s|c1f4DF620 Announces|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `command` (`name`, `security`, `help`) VALUES
('msgadm', 3, 'Syntax: .adm $announcement.\nSend an announcement to all online players, displaying the name of the sender.'),
('msggm', 2, 'Syntax: .adm $announcement.\nSend an announcement to all online players, displaying the name of the sender.'),
('msgguard', 1, 'Syntax: .msg $announcement.\nSend an announcement to all online players, displaying the name of the sender.');
