function onCreate()
    setPropertyFromClass('lime.app.Application', 'current.window.title', "Sonic's SchoolHouse - Playing schoolhouse | Player (BOYFRIEND) | Act 1")
    doTweenAlpha('fuckYourHealthTween','healthBar', 0, 0.3, 'linear')
    doTweenAlpha('fuckYourHealthIconP1Tween','iconP1', 0, 0.3, 'linear')
    doTweenAlpha('fuckYourHealthIconP2Tween','iconP2', 0, 0.3, 'linear')
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
end