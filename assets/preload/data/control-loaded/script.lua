function onCreate()
    setPropertyFromClass('lime.app.Application', 'current.window.title', "Speed.Gif rom Level : Control 2")
    setProperty('timeBG.visible', false)
    setProperty('timeTxt.visible', false)
    makeLuaSprite('loadd', 'bgstuff/black', -1500, -600)
    scaleObject('loadd', 99.0, 99.0)
    setObjectCamera('loadd','other')
    addLuaSprite('loadd', false)
    setTextFont("scoreTxt","sonic-the-hedgehog.ttf");
    setTextFont("timeTxt","sonic-the-hedgehog.ttf");
end

function onDestroy()
	setPropertyFromClass("openfl.Lib","application.window.title", "Speed.Gif")
end

function onCreatePost()
	setProperty('timeBar.color', getColorFromHex('00004A'))

end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.0232);
	end
end

function onUpdate(elapsed)
    songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
local currentBeat2 = (songPos/200)*(curBpm/200)
setProperty('camFollowPos.x',getProperty('camFollowPos.x') + (math.sin(currentBeat2) * 0.2))
setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.cos(currentBeat2) * 0.2))
end
