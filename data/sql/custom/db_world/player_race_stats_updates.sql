DROP TABLE IF EXISTS `player_race_stats`;
CREATE TABLE IF NOT EXISTS `player_race_stats` (
  `Race` tinyint unsigned NOT NULL,
  `Strength` int NOT NULL DEFAULT '0',
  `Agility` int NOT NULL DEFAULT '0',
  `Stamina` int NOT NULL DEFAULT '0',
  `Intellect` int NOT NULL DEFAULT '0',
  `Spirit` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci PACK_KEYS=0 COMMENT='Stores race stats.';

DELETE FROM `player_race_stats`;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`) VALUES
	(1, 0, 0, 0, 0, 0),
	(2, 3, -3, 1, -3, 2),
	(3, 5, -4, 1, -1, -1),
	(4, -4, 4, 0, 0, 0),
	(5, -1, -2, 0, -2, 5),
	(6, 5, -4, 1, -4, 2),
	(7, -5, 2, 0, 3, 0),
	(8, 1, 2, 0, -4, 1),
	(9, -3, 2, 0, 3, -2),
	(10, -3, 2, 0, 3, -2),
	(11, 1, -3, 0, 0, 2),
	(22, 3, 2, 0, -4, -1),
	(24, 0, -2, 1, -1, 2),
	(25, 0, -2, 1, -1, 2);

