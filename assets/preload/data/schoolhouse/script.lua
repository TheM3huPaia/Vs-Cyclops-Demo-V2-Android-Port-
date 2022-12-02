function onCreate()
    setPropertyFromClass('lime.app.Application', 'current.window.title', "Sonic's SchoolHouse - Playing schoolhouse | Player (BOYFRIEND) | Act 1")
    doTweenAlpha('fuckYourHealthTween','healthBar', 0, 0.1, 'linear')
    doTweenAlpha('fuckYourHealthIconP1Tween','iconP1', 0, 0.1, 'linear')
    doTweenAlpha('fuckYourHealthIconP2Tween','iconP2', 0, 0.1, 'linear')
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setPropertyFromClass('openfl.Lib', 'application.window.resizable', false)
    setPropertyFromClass('openfl.Lib', 'application.window.width', 1000)
    setPropertyFromClass('openfl.Lib', 'application.window.x', 450)
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.0232);
	end
end

function onDestroy()
	setPropertyFromClass("openfl.Lib","application.window.title", "Speed.Gif")
        setPropertyFromClass('openfl.Lib', 'application.window.resizable', true)
        setPropertyFromClass('openfl.Lib', 'application.window.width', 1280)
        setPropertyFromClass('openfl.Lib', 'application.window.x', 320)
        setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
end
