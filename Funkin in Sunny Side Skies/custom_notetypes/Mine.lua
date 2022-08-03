--Code is from youtu.be/yl8jjHapA1Y

function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Mine' then
			--if (getPropertyFromGroup('unspawnNotes', 0, 'noteSplashTexture') == 'noteSplashesNutshell') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'hurtNoteAssetsNutshell');
				setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'hurtNoteSplashesNutshell');
			--else
				--setPropertyFromGroup('unspawnNotes', i, 'texture', 'HURTNOTE_assets');
			--end
			if getPropertyFromGroup('unspawnNotes', i, 'noteData') < 4 then
				setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			end

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end

			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 1);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Mine' then
		setProperty('health', getProperty('health') - 0.1);
	end
end

--function opponentNoteHit(id, noteData, noteType, isSustainNote)
	--if noteType == 'Mine' then
		--setPropertyFromGroup('notes', id, 'noAnimation', true);
	--end
--end