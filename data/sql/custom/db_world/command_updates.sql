DELETE FROM `command` WHERE `name`='anticheat jail';
DELETE FROM `command` WHERE `name`='anticheat delete';
DELETE FROM `command` WHERE `name`='anticheat player';
DELETE FROM `command` WHERE `name`='anticheat';
DELETE FROM `command` WHERE `name`='anticheat global';
DELETE FROM `command` WHERE `name`='anticheat parole';
DELETE FROM `command` WHERE `name`='anticheat purge';
DELETE FROM `command` WHERE `name`='anticheat warn';
DELETE FROM `command` WHERE `name`='anticheat handle';

INSERT INTO `command` (`name`, `help`) VALUES
	('anticheat', 'Syntax: .anticheat\r\n\r\nDisplay the access level of anticheat commands if you possess the necessary permissions.'),
	('anticheat global', 'Syntax: .anticheat global\r\n\r\nDisplay if anticheat is active with global statistics.'),
	('anticheat player', 'Syntax: .anticheat player [$charactername]\r\n\r\nDisplay anticheat statistics of current session of player.'),
	('anticheat delete', 'Syntax: .anticheat delete [$charactername]\r\n\r\nDeletes anticheat statistics of current session of player.'),
	('anticheat jail', 'Syntax: .anticheat jail [$charactername]\r\n\r\nJails and restricts player and teleports GM cmd user to jail with no restrictions'),
	('anticheat parole', 'Syntax: .anticheat parole [$charactername]\r\n\r\nDeletes anticheat statistics, removes jail restrictions, and sends to faction capital of player.'),
	('anticheat purge', 'Syntax: .anticheat purge\r\n\r\nDeletes stored statistics of daily_players_reports table.'),
	('anticheat warn', 'Syntax: .anticheat warn [$charactername]\r\n\r\nSends individual player they are being monitored for possible cheating.'),
	('anticheat handle', 'Syntax: .anticheat handle 0 or 1\r\n\r\n0 Turns off and 1 Turns On Anticheat');
