DELETE FROM `spell_script_names` WHERE `spell_id` IN (101009, 101060, 101062, 101064);

INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
	(101009,'spell_monk_arcane_torrent'),
	(101060,'spell_monk_serpent_stance_aura'),
	(101062,'spell_monk_tiger_stance_aura'),
	(101064,'spell_monk_ox_stance_aura');
