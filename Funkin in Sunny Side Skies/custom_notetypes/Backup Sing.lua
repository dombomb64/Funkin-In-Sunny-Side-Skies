--Code is from youtu.be/yl8jjHapA1Y

function onCreate()
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Backup Sing' then
			--if (getPropertyFromGroup('opponentStrums', i, 'texture') == 'noteAssetsNutshell') then
				--setPropertyFromGroup('unspawnNotes', i, 'texture', 'hurtNoteAssetsNutshell');
			--else
				--setPropertyFromGroup('unspawnNotes', i, 'texture', 'HURTNOTE_assets');
			--end

			--if getPropertyFromGroup('unspawnNotes', i, 'noteData') < 4 then
				setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			--end

			--if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				--setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			--end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Backup Sing' then
		--setProperty('health', getProperty('health') - 0.1);
		if noteData == 0 then
			objectPlayAnimation('boyfriend2', 'singLEFT', true);
		elseif noteData == 1 then
			objectPlayAnimation('boyfriend2', 'singDOWN', true);
		elseif noteData == 2 then
			objectPlayAnimation('boyfriend2', 'singUP', true);
		elseif noteData == 3 then
			objectPlayAnimation('boyfriend2', 'singRIGHT', true);
		end
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Backup Sing' then
		--setPropertyFromGroup('notes', id, 'noAnimation', true);
		if noteData == 0 then
			objectPlayAnimation('dad2', 'singLEFT', true);
		elseif noteData == 1 then
			objectPlayAnimation('dad2', 'singDOWN', true);
		elseif noteData == 2 then
			objectPlayAnimation('dad2', 'singUP', true);
		elseif noteData == 3 then
			objectPlayAnimation('dad2', 'singRIGHT', true);
		end
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Backup Sing' then
		if noteData == 0 then
			objectPlayAnimation('boyfriend2', 'singLEFTmiss', true);
		elseif noteData == 1 then
			objectPlayAnimation('boyfriend2', 'singDOWNmiss', true);
		elseif noteData == 2 then
			objectPlayAnimation('boyfriend2', 'singUPmiss', true);
		elseif noteData == 3 then
			objectPlayAnimation('boyfriend2', 'singRIGHTmiss', true);
		end
	end
end