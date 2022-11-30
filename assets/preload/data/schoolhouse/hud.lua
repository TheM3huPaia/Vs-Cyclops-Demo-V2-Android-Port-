function onCreate()
    makeLuaSprite('g', 'bgstuff/Hud', 0, 0)
    scaleObject('g', 1.0, 1.0)
    setObjectCamera('g','other')
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    addLuaSprite('g', true)
end