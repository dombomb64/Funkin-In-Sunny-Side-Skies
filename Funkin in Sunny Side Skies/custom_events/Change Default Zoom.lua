function onCreatePost()
	local originalZoom = getProperty('defaultCamZoom');
end

function onEvent(name, value1, value2)
	if name == 'Change Default Zoom' then
		if value1 ~= 0 then
			--debugPrint(value1);
			setProperty('defaultCamZoom', tonumber(value1));
			--setProperty('camGame.zoom', toNumber(value1));
		else
			setProperty('defaultCamZoom', originalZoom);
		end
	end
	--debugPrint(value1, ' ', getProperty('defaultCamZoom'));
	--debugPrint('Event triggered: ', name, value1, value2);
end