-- NOTE:
-- Feel free to use this script in your mods!
-- Just make sure to give credit to me, dombomb64.
-- (You can delete all the commented-out code, most of it is remnants from past attempts.)

function onCreatePost(elapsed)
	--debugPrint(dadName);
	--if (dadName.indexOf('Nutshell', 0) > -1 or dadName.indexOf('pixel', 0) > -1 or (dadName == 'senpai' or dadName == 'spirit' or dadName == 'kristenNutshell')) then
	--if (dadName == 'senpai' or dadName == 'spirit' or dadName == 'boyfriend-pixel' or dadName == 'gf-pixel' or dadName == 'kristenNutshell' or dadName == 'kristenAngry' or dadName == 'kristenRun' or dadName == 'adamNutshell' or dadName == 'adamRun' or dadName == 'chaseNutshell' or dadName == 'mattBgNutshell' or dadName == 'mattNutshell' or dadName == 'adamCrewmate' or dadName == 'chaseImpostor') then
	--if string.find(getProperty('iconP2.char'), 'senpai-pixel') ~= nil string.find(getProperty('iconP2.char'), 'spirit-pixel') ~= nil then

	--If the opponent has a pixel icon (For some reason I couldn't get indexOf to work so I had to put the individual icon names)
	if getProperty('iconP2.char') == 'senpai-pixel' or getProperty('iconP2.char') == 'spirit-pixel' or getProperty('iconP2.char') == 'bf-pixel' or getProperty('iconP2.char') == 'gf-pixel' or getProperty('iconP2.char') == 'adamNutshell' or getProperty('iconP2.char') == 'kristenNutshell' or getProperty('iconP2.char') == 'kristenAngry' or getProperty('iconP2.char') == 'kristenFurious' or getProperty('iconP2.char') == 'chaseNutshell' or getProperty('iconP2.char') == 'chaseWorried' or getProperty('iconP2.char') == 'chaseZanta' or getProperty('iconP2.char') == 'elliotNutshell' or getProperty('iconP2.char') == 'elliotZanta' or getProperty('iconP2.char') == 'senpaiNutshell' or getProperty('iconP2.char') == 'senpaiZanta' then
		setProperty('iconP2.antialiasing', false);
		--setBlendMode('iconP2', 'add');
		--debugPrint('pixel icon');
	end

	--If the player has a pixel icon
	--if (boyfriendName == 'senpai' or boyfriendName == 'spirit' or boyfriendName == 'boyfriend-pixel' or boyfriendName == 'gf-pixel' or boyfriendName == 'kristenNutshell' or boyfriendName == 'kristenAngry' or boyfriendName == 'kristenRun' or boyfriendName == 'adamNutshell' or boyfriendName == 'adamRun' or boyfriendName == 'chaseNutshell' or boyfriendName == 'mattBgNutshell' or boyfriendName == 'mattNutshell' or boyfriendName == 'adamCrewmate' or boyfriendName == 'chaseImpostor') then
	if getProperty('iconP1.char') == 'senpai-pixel' or getProperty('iconP1.char') == 'spirit-pixel' or getProperty('iconP1.char') == 'bf-pixel' or getProperty('iconP1.char') == 'gf-pixel' or getProperty('iconP1.char') == 'adamNutshell' or getProperty('iconP1.char') == 'kristenNutshell' or getProperty('iconP1.char') == 'kristenAngry' or getProperty('iconP1.char') == 'kristenFurious' or getProperty('iconP1.char') == 'chaseNutshell' or getProperty('iconP1.char') == 'chaseWorried' or getProperty('iconP1.char') == 'chaseZanta' or getProperty('iconP1.char') == 'elliotNutshell' or getProperty('iconP1.char') == 'elliotZanta' or getProperty('iconP1.char') == 'senpaiNutshell' or getProperty('iconP1.char') == 'senpaiZanta' then
		setProperty('iconP1.antialiasing', false);
	end
end