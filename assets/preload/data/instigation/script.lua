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
    setTextColor('scoreTxt', 'FF0000')
    setTextColor('tnh', 'FF0000')
    setTextColor('sick', 'FF0000')
    setTextColor('cm', 'FF0000')
    setTextColor('good', 'FF0000')
    setTextColor('bad', 'FF0000')
    setTextColor('shit', 'FF0000')
    setTextColor('miss', 'FF0000')
end

function onCreatePost()
	setProperty('timeBar.color', getColorFromHex('FF0000'))

end

function onDestroy()
	setPropertyFromClass("openfl.Lib","application.window.title", "Speed.Gif")
end

function onUpdate(elapsed)
	if boyfriendName == 'fatalC' then --replace the name for your character name
	  if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
  

		doTweenY(boyfriendTweenY, 'boyfriend', -10 -50*math.sin((currentBeat*0.25)*math.pi),0.001)
		
                end  
        end
end
