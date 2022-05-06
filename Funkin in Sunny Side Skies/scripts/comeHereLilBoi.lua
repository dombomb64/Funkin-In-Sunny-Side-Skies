function onCreatePost()
	makeLegs();
end

function onEvent(name, value1, value2)
	--if name == 'Change Character' and value2 == 'kristenRun' or value2 == 'adamRun' then
	if name == 'Change Character' then
		runTimer('makeLegs', 0.01, 1);
	end

	--print('Event triggered: ', name, value1, value2);
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('kristenLegs', 'danceLeft', true);
		objectPlayAnimation('kristenLegsPlayer', 'danceLeft', true);
		objectPlayAnimation('adamLegs', 'danceLeft', true);
		objectPlayAnimation('adamLegsPlayer', 'danceLeft', true);
	elseif (curBeat + 1) % 2 == 0 then
		objectPlayAnimation('kristenLegs', 'danceRight', true);
		objectPlayAnimation('kristenLegsPlayer', 'danceRight', true);
		objectPlayAnimation('adamLegs', 'danceRight', true);
		objectPlayAnimation('adamLegsPlayer', 'danceRight', true);
	end
end

function onCountdownTick(counter)
	if counter % 2 == 0 then
		objectPlayAnimation('kristenLegs', 'danceLeft', true);
		objectPlayAnimation('kristenLegsPlayer', 'danceLeft', true);
		objectPlayAnimation('adamLegs', 'danceLeft', true);
		objectPlayAnimation('adamLegsPlayer', 'danceLeft', true);
	elseif (counter + 1) % 2 == 0 then
		objectPlayAnimation('kristenLegs', 'danceRight', true);
		objectPlayAnimation('kristenLegsPlayer', 'danceRight', true);
		objectPlayAnimation('adamLegs', 'danceRight', true);
		objectPlayAnimation('adamLegsPlayer', 'danceRight', true );
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'makeLegs' then
		makeLegs();
	end
end

function onUpdate(elapsed)
	setProperty('kristenLegs.x', getProperty('dad.x'));
	setProperty('kristenLegs.y', getProperty('dad.y'));
	setProperty('kristenLegsPlayer.x', getProperty('dad.x'));
	setProperty('kristenLegsPlayer.y', getProperty('dad.y'));
	setProperty('adamLegs.x', getProperty('boyfriend.x'));
	setProperty('adamLegs.y', getProperty('boyfriend.y'));
	setProperty('adamLegsPlayer.x', getProperty('boyfriend.x'));
	setProperty('adamLegsPlayer.y', getProperty('boyfriend.y'));
end

function makeLegs()
	--debugPrint(dadName);
	removeLuaSprite('kristenLegs', false);
	removeLuaSprite('kristenLegsPlayer', false);
	removeLuaSprite('adamLegs', false);
	removeLuaSprite('adamLegsPlayer', false);

	if (dadName == 'kristenRun') then
		makeAnimatedLuaSprite('kristenLegs', 'characters/kristenLegs', getProperty('dad.x'), getProperty('dad.y'));

		addAnimationByIndices('kristenLegs', 'danceLeft', 'Run', '1, 2, 3, 4, 5, 6, 7, 8, 9', 24);
		addAnimationByIndices('kristenLegs', 'danceRight', 'Run', '13, 14, 15, 16, 17, 18, 19, 20, 21', 24);

		setProperty('kristenLegs.scale.x', 3);
		setProperty('kristenLegs.scale.y', 3);
		updateHitbox('kristenLegs');

		setProperty('kristenLegs.offset.x', -30);
		setProperty('kristenLegs.offset.y', -372);

		setProperty('kristenLegs.flipX', true);

		setProperty('kristenLegs.antialiasing', false);

		setObjectOrder('kristenLegs', getObjectOrder('dadGroup'));

		addLuaSprite('kristenLegs', false);

		--setBlendMode('kristenLegs', 'add');
		--debugPrint(getObjectOrder('kristenLegs'), 'test');
		--debugPrint('a');
	end

	if (boyfriendName == 'kristenRun') then
		makeAnimatedLuaSprite('kristenLegsPlayer', 'characters/kristenLegs', getProperty('boyfriend.x'), getProperty('boyfriend.y'));

		addAnimationByIndices('kristenLegsPlayer', 'danceLeft', 'Run', '1, 2, 3, 4, 5, 6, 7, 8, 9', 24);
		addAnimationByIndices('kristenLegsPlayer', 'danceRight', 'Run', '13, 14, 15, 16, 17, 18, 19, 20, 21', 24);

		setProperty('kristenLegsPlayer.scale.x', 3);
		setProperty('kristenLegsPlayer.scale.y', 3);
		updateHitbox('kristenLegsPlayer');

		setProperty('kristenLegsPlayer.offset.x', -201);
		setProperty('kristenLegsPlayer.offset.y', -372);

		--setProperty('kristenLegsPlayer.flipX', 3);

		setProperty('kristenLegsPlayer.antialiasing', false);

		setObjectOrder('kristenLegsPlayer', getObjectOrder('dadGroup'));

		addLuaSprite('kristenLegsPlayer', false);

		--setBlendMode('kristenLegsPlayer', 'add');
		--debugPrint(getObjectOrder('kristenLegs'), 'test');
		--debugPrint('a');
	end

	if (dadName == 'adamRun') then
		makeAnimatedLuaSprite('adamLegs', 'characters/adamLegs', getProperty('dad.x'), getProperty('dad.y'));

		addAnimationByIndices('adamLegs', 'danceRight', 'Run', '1, 2, 3, 4, 5, 6, 7, 8, 9', 24);
		addAnimationByIndices('adamLegs', 'danceLeft', 'Run', '13, 14, 15, 16, 17, 18, 19, 20, 21', 24);

		setProperty('adamLegs.scale.x', 3);
		setProperty('adamLegs.scale.y', 3);
		updateHitbox('adamLegs');

		setProperty('adamLegs.offset.x', -30);
		setProperty('adamLegs.offset.y', -372);

		--setProperty('adamLegs.flipX', true);

		setProperty('adamLegs.antialiasing', false);

		setObjectOrder('adamLegs', getObjectOrder('dadGroup'));

		addLuaSprite('adamLegs', false);

		--setBlendMode('adamLegs', 'add');
		--debugPrint(getObjectOrder('adamLegs'), 'test');
		--debugPrint('a');
	end

	if (boyfriendName == 'adamRun') then
		makeAnimatedLuaSprite('adamLegsPlayer', 'characters/adamLegs', getProperty('boyfriend.x'), getProperty('boyfriend.y'));

		addAnimationByIndices('adamLegsPlayer', 'danceRight', 'Run', '1, 2, 3, 4, 5, 6, 7, 8, 9', 24);
		addAnimationByIndices('adamLegsPlayer', 'danceLeft', 'Run', '13, 14, 15, 16, 17, 18, 19, 20, 21', 24);

		setProperty('adamLegsPlayer.scale.x', 3);
		setProperty('adamLegsPlayer.scale.y', 3);
		updateHitbox('adamLegsPlayer');

		setProperty('adamLegsPlayer.offset.x', -30);
		setProperty('adamLegsPlayer.offset.y', -372);

		setProperty('adamLegsPlayer.flipX', true);

		setProperty('adamLegsPlayer.antialiasing', false);

		setObjectOrder('adamLegsPlayer', getObjectOrder('dadGroup'));

		addLuaSprite('adamLegsPlayer', false);

		--setBlendMode('adamLegsPlayer', 'add');
		--debugPrint(getObjectOrder('adamLegs'), 'test');
		--debugPrint('a');
	end
	objectPlayAnimation('kristenLegs', 'danceLeft');
	objectPlayAnimation('kristenLegsPlayer', 'danceLeft');
	objectPlayAnimation('adamLegs', 'danceLeft');
	objectPlayAnimation('adamLegsPlayer', 'danceLeft');
end