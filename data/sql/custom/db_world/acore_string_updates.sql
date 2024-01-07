DELETE FROM `acore_string` WHERE `entry` IN (82, 83, 84);

INSERT INTO `acore_string` (`entry`, `content_default`, `locale_koKR`, `locale_frFR`, `locale_deDE`, `locale_zhCN`, `locale_zhTW`, `locale_esES`, `locale_esMX`, `locale_ruRU`) VALUES
(82,'You changed FOCUS of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(83,'%s changed your FOCUS to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(84,'Current focus: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
