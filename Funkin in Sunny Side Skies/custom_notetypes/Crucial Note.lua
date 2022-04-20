--Code is from youtu.be/yl8jjHapA1Y

function onCreate() 
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Crucial Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'CRUCIALNOTE_assets');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Crucial Note' then
		setProperty('health', getProperty('health') - 0.2);
	end
end