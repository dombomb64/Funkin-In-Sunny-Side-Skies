function onCreatePost()
	--debugPrint(getPropertyFromGroup('unspawnNotes', 0, 'noteSplashTexture'));
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hurt Note' and getPropertyFromGroup('unspawnNotes', 0, 'noteSplashTexture') == 'noteSplashesNutshell' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'hurtNoteAssetsNutshell');
		end
	end
end