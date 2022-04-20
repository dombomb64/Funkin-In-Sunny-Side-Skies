function onCreatePost()
	--debugPrint(getProperty('gf.curCharacter'));
	--if (gfName == 'mattBgNutshell') then
	if (getProperty('gf.curCharacter') == 'mattBgNutshell') then
		--debugPrint('matt');
		setScrollFactor('gfGroup', 1, 1);
	end
end

function onEvent(name, value1, value2)
	if (name == 'Change Character') then
		if (getProperty('gf.curCharacter') == 'mattBgNutshell') then
			setScrollFactor('gfGroup', 1, 1);
		end
	end
	--print('Event triggered: ', name, value1, value2);
end