-- NOTE:
-- Feel free to use this script in your mods!
-- Just make sure to give credit to me, dombomb64.
-- (You can delete all the commented-out code, most of it is remnants from past attempts.)

function onUpdate(elapsed)
	--debugPrint(dadName);
	--if (dadName.indexOf('Nutshell', 0) > -1 or dadName.indexOf('pixel', 0) > -1 or (dadName == 'senpai' or dadName == 'spirit' or dadName == 'kristenNutshell')) then

	--If the opponent has a pixel icon (For some reason I couldn't get indexOf to work so I had to put the individual icon names)
	if (dadName == 'senpai' or dadName == 'spirit' or dadName == 'boyfriend-pixel' or dadName == 'gf-pixel' or dadName == 'kristenNutshell' or dadName == 'adamNutshell' or dadName == 'chaseNutshell' or dadName == 'mattBgNutshell' or dadName == 'mattNutshell' or dadName == 'adamCrewmate' or dadName == 'chaseImpostor') then
		setProperty('iconP2.antialiasing', false);
		--setBlendMode('iconP2', 'add');
		--debugPrint('pixel icon');
	end

	--If the player has a pixel icon
	if (boyfriendName == 'senpai' or boyfriendName == 'spirit' or boyfriendName == 'boyfriend-pixel' or boyfriendName == 'gf-pixel' or boyfriendName == 'kristenNutshell' or boyfriendName == 'adamNutshell' or boyfriendName == 'chaseNutshell' or boyfriendName == 'mattBgNutshell' or boyfriendName == 'mattNutshell' or boyfriendName == 'adamCrewmate' or boyfriendName == 'chaseImpostor') then
		setProperty('iconP1.antialiasing', false);
	end
end