function onCreate()
    setPropertyFromClass('lime.app.Application', 'current.window.title', "???")
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('tnh.visible', false)
    setProperty('sick.visible', false)
    setProperty('cm.visible', false)
    setProperty('good.visible', false)
    setProperty('bad.visible', false)
    setProperty('shit.visible', false)
    setProperty('miss.visible', false)
end

function onDestroy()
	setPropertyFromClass("openfl.Lib","application.window.title", "Speed.gif")
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.0195);
	end
end