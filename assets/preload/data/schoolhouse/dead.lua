function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfst'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverSchool'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndSchool'); --put in mods/music/
end