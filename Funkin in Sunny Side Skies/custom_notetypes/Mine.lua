--Code is from youtu.be/yl8jjHapA1Y

function onCreate() 
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Mine' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'HURTNOTE_assets');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Mine' then
		setProperty('health', getProperty('health') - 0.1);
	end
end