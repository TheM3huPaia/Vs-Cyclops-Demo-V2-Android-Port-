function onCreate()
    makeLuaSprite('bg', 'schoolhouseLight', -621, -867)
    addLuaSprite('bg', false)

    makeLuaSprite('bg2', 'bgstuff/schoolhausHud', 0, 0)
    scaleObject('bg2', 1.0, 1.0)
    setObjectCamera('bg2','hud')
    addLuaSprite('bg2', true)
end