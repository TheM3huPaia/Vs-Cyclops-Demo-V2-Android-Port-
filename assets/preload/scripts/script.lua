function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
    makeLuaSprite('J', 'Cyclops_Stare', 0, 0)
    setObjectCamera('J','other')
    addLuaSprite('J', true)
      endSong()
    end
end