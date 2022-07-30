-- NOTE:
-- Feel free to use this script in your mods!
-- Just make sure to give credit to me, dombomb64.
-- (You can delete all the commented-out code, most of it is remnants from past attempts.)

--function onCreatePost()
--	iconP1DefaultX = getProperty('iconP1.x');
--	iconP2DefaultX = getProperty('iconP2.x');
--end

--function onBeatHit()
--	setProperty("iconP2.x", 100);
--end

function onUpdatePost(elapsed)
	--Reset offsets to 0
	iconP1X = 0;
	iconP1Y = 0;
	iconP2X = 0;
	iconP2Y = 0;

	--debugPrint(boyfriendName);

	--                 Character, not icon                      Offset x, y
	if (boyfriendName == 'chaseImpostor') then iconP1X, iconP1Y = -10, -8;
	elseif (boyfriendName == 'chaseImpostorDark') then iconP1X, iconP1Y = -10, -8;
	elseif (boyfriendName == 'chaseImpostorRun') then iconP1X, iconP1Y = -10, -8;
	elseif (boyfriendName == 'adamCrewmate') then iconP1X, iconP1Y = -10, 8;
	elseif (boyfriendName == 'adamCrewmateDark') then iconP1X, iconP1Y = -10, 8;
	elseif (boyfriendName == 'adamCrewmateRun') then iconP1X, iconP1Y = -10, 8;
	elseif (boyfriendName == 'chaseNutshell') then iconP2X, iconP2Y = 0, -8;
	elseif (boyfriendName == 'chaseZanta') then iconP2X, iconP2Y = 0, -8;
	elseif (boyfriendName == 'jimNutshell') then iconP2X, iconP2Y = 0, -20;
	end

	--Copy and paste bf offset code here (or vice versa) and flip the sign of the X value
	if (dadName == 'chaseImpostor') then iconP2X, iconP2Y = 10, -8;
	elseif (dadName == 'chaseImpostorDark') then iconP2X, iconP2Y = 10, -8;
	elseif (dadName == 'chaseImpostorRun') then iconP2X, iconP2Y = 10, -8;
	elseif (dadName == 'adamCrewmate') then iconP2X, iconP2Y = 10, 8;
	elseif (dadName == 'adamCrewmateDark') then iconP2X, iconP2Y = 10, 8;
	elseif (dadName == 'adamCrewmateRun') then iconP2X, iconP2Y = 10, 8;
	elseif (dadName == 'chaseNutshell') then iconP2X, iconP2Y = 0, -8;
	elseif (dadName == 'chaseZanta') then iconP2X, iconP2Y = 0, -8;
	elseif (dadName == 'jimNutshell') then iconP2X, iconP2Y = 0, -20;
	end
	--debugPrint('test');

	--Set offsets
	setProperty('iconP1.offset.x', iconP1X);
	setProperty('iconP1.offset.y', iconP1Y);
	setProperty('iconP2.offset.x', iconP2X);
	setProperty('iconP2.offset.y', iconP2Y);

	setProperty('bfIcon.offset.x', iconP1X);
	setProperty('bfIcon.offset.y', iconP1Y);
	setProperty('dadIcon.offset.x', iconP2X);
	setProperty('dadIcon.offset.y', iconP2Y);

	--setProperty('iconP2.x', iconP2DefaultX + iconP2X);
	--iconP2DefaultX = getProperty('iconP2.x') - iconP2X;
	--setProperty('iconP2.x', 100);
	--doTweenX('iconP2TweenX', 'iconP2', 100, 0, 'linear');

	--doTweenX('iconP2TweenX', 'iconP2', iconP2DefaultX + iconP2X, 0, 'linear');
	--doTweenY('iconP2TweenY', 'iconP2', getProperty('healthBar.y') - 75 + iconP2Y, 0, 'linear');
end