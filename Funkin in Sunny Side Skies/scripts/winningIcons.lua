-- NOTE:
-- Feel free to use this script in your mods!
-- Just make sure to give credit to me, dombomb64.
-- (You can delete all the commented-out code, most of it is remnants from past attempts.)

function onCreatePost()
	--debugPrint('winningIcons/icon-' .. getProperty('iconP1.char'));
	makeIcons();
end

function onUpdatePost()
	setProperty('bfIcon.x', getProperty('iconP1.x'));
	setProperty('bfIcon.scale.x', getProperty('iconP1.scale.x'));
	setProperty('bfIcon.scale.y', getProperty('iconP1.scale.y'));

	setProperty('dadIcon.x', getProperty('iconP2.x'));
	setProperty('dadIcon.scale.x', getProperty('iconP2.scale.x'));
	setProperty('dadIcon.scale.y', getProperty('iconP2.scale.y'));

	if getProperty('healthBar.percent') < 20 then
		objectPlayAnimation('bfIcon', 'losing', true);
		objectPlayAnimation('dadIcon', 'winning', true);
	elseif getProperty('healthBar.percent') > 80 then
		objectPlayAnimation('bfIcon', 'winning', true);
		objectPlayAnimation('dadIcon', 'losing', true);
	else
		objectPlayAnimation('bfIcon', 'neutral', true);
		objectPlayAnimation('dadIcon', 'neutral', true);
	end
end

function onEvent(name, value1, value2)
	if name == 'Change Character' then
		makeIcons();
	end

	--print('Event triggered: ', name, value1, value2);
end

function makeIcons()
	removeLuaSprite('bfIcon', true);
	removeLuaSprite('dadIcon', true);
	setProperty('iconP1.alpha', 1);
	setProperty('iconP2.alpha', 1);

	if getProperty('iconP1.char') == 'adamNutshell' or getProperty('iconP1.char') == 'kristenNutshell' or getProperty('iconP1.char') == 'chaseNutshell' or getProperty('iconP1.char') == 'elliotNutshell' or getProperty('iconP1.char') == 'senpaiNutshell' then
		makeBfIcon();
	end

	if getProperty('iconP2.char') == 'adamNutshell' or getProperty('iconP2.char') == 'kristenNutshell' or getProperty('iconP2.char') == 'chaseNutshell' or getProperty('iconP2.char') == 'elliotNutshell' or getProperty('iconP2.char') == 'senpaiNutshell' then
		makeDadIcon();
	end
end

function makeBfIcon()
	makeAnimatedLuaSprite('bfIcon', 'winningIcons/icon-' .. getProperty('iconP1.char'), getProperty('iconP1.x'), getProperty('iconP1.y'));

	addAnimationByPrefix('bfIcon', 'winning', 'Winning', 24, false);
	addAnimationByPrefix('bfIcon', 'neutral', 'Neutral', 24, false);
	addAnimationByPrefix('bfIcon', 'losing', 'Losing', 24, false);

	addLuaSprite('bfIcon', true);

	setObjectCamera('bfIcon', 'hud');
	setProperty('bfIcon.flipX', true);
	objectPlayAnimation('bfIcon', 'neutral', true);
	setObjectOrder('bfIcon', getObjectOrder('iconP1'));
	setProperty('bfIcon.antialiasing', getProperty('iconP1.antialiasing'));

	setProperty('iconP1.alpha', 0);
end

function makeDadIcon()
	makeAnimatedLuaSprite('dadIcon', 'winningIcons/icon-' .. getProperty('iconP2.char'), getProperty('iconP2.x'), getProperty('iconP2.y'));

	addAnimationByPrefix('dadIcon', 'winning', 'Winning', 24, false);
	addAnimationByPrefix('dadIcon', 'neutral', 'Neutral', 24, false);
	addAnimationByPrefix('dadIcon', 'losing', 'Losing', 24, false);

	addLuaSprite('dadIcon', true);

	setObjectCamera('dadIcon', 'hud');
	--setProperty('dadIcon.flipX', true);
	objectPlayAnimation('dadIcon', 'neutral', true);
	setObjectOrder('dadIcon', getObjectOrder('iconP2'));
	setProperty('dadIcon.antialiasing', getProperty('iconP2.antialiasing'));

	setProperty('iconP2.alpha', 0);
end