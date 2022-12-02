function onCreate()
    setPropertyFromClass('lime.app.Application', 'current.window.title', "Speed.Gif rom Level : Control 1")
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setTextColor('scoreTxt', 'FFE400')
end

function onDestroy()
	setPropertyFromClass("openfl.Lib","application.window.title", "Speed.Gif")
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.0226);
	end
end

function onUpdate(elapsed)
    songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/90)
local currentBeat2 = (songPos/200)*(curBpm/300)
setProperty('camFollowPos.x',getProperty('camFollowPos.x') + (math.sin(currentBeat2) * 0.2))
setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.cos(currentBeat2) * 0.5))
end