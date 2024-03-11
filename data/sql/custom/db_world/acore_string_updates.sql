DELETE FROM `acore_string` WHERE `entry` IN (82, 83, 84, 30087, 30088, 30089, 30090, 30091, 30092);

INSERT INTO `acore_string` (`entry`, `content_default`, `locale_koKR`, `locale_frFR`, `locale_deDE`, `locale_zhCN`, `locale_zhTW`, `locale_esES`, `locale_esMX`, `locale_ruRU`) VALUES
(82,'You changed FOCUS of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(83,'%s changed your FOCUS to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(84,'Current focus: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(30087, '|cffffff00[|cffff0000ANTICHEAT ALERT|r|cffffff00]:|r |cFFFF8C00|r |cFFFF8C00[|Hplayer:%s|h%s|h|r|cFFFF8C00] - Latency: %u ms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30088, '|cffffff00[|cffff0000ANTICHEAT ALERT|r|cffffff00]:|r POSSIBLE TELEPORT HACK DETECTED|cFFFF8C00 %s|r - Latency: %u ms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30089, '|cffffff00[|cffff0000ANTICHEAT ALERT|r|cffffff00]:|r POSSIBLE IGNORE CONTROL HACK DETECTED|cFFFF8C00] %s|r - Latency: %u ms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30090, '|cffffff00[|cffff0000ANTICHEAT ALERT|r|cffffff00]:|r TELEPORT HACK USED WHLE DUELING|cFFFF8C00 %s|r - Latency: %u ms vs |cFFFF8C00 %s|r - Latency: %u ms.', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(30091, '|cffffff00[|cffff0000ANTICHEAT ALERT|r|cffffff00]:|r BG Start Bound Teleport\\Exploit Hack DETECTED|cFFFF8C00[|Hplayer:%s|h%s|h|r|cFFFF8C00] - Latency: %u ms', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(30092, '|cffffff00[|cffff0000COUNTER MEASURE ALERT|r|cffffff00]:|r |cFFFF8C00|r %s |cFFFF8C00[|Hplayer:%s|h%s|h|r|cFFFF8C00]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
