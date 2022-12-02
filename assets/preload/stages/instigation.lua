function onCreate()
    makeAnimatedLuaSprite('insti','bgstuff/instigationStage',-472, -374)
    addAnimationByPrefix('insti','lol','background0',24,true)
    objectPlayAnimation('insti','background0',true)
    scaleObject('insti', 1.8, 1.5)
    addLuaSprite('insti', false)
end