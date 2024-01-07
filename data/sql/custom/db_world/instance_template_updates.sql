DELETE FROM `instance_template` WHERE `map` IN (725);

INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES
	(725, 0, 'instance_blackrock_caverns', 0);
