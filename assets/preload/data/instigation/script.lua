local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
    setPropertyFromClass('lime.app.Application', 'current.window.title', "Speed.Gif rom Level : Instigation 1")
		startVideo('instigation');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
    setTextFont("scoreTxt","sonic-the-hedgehog.ttf");
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setTextColor('scoreTxt', 'FF0000')
    setTextColor('timeTxt', 'FF0000')
    setTextColor('tnh', 'FF0000')
    setTextColor('sick', 'FF0000')
    setTextColor('cm', 'FF0000')
    setTextColor('good', 'FF0000')
    setTextColor('bad', 'FF0000')
    setTextColor('shit', 'FF0000')
end
