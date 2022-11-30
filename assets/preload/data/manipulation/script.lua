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

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.0195);
	end
end

function onUpdate(elapsed)
    songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
local currentBeat2 = (songPos/200)*(curBpm/200)
setProperty('camFollowPos.x',getProperty('camFollowPos.x') + (math.sin(currentBeat2) * 0.2))
setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.cos(currentBeat2) * 0.2))
end
