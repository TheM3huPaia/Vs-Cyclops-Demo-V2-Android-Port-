-- Event notes hooks
function onCreate()
	makeAnimatedLuaSprite('sussyStatic', 'effects/schoolstatic', -500, -300)
	addAnimationByIndices('sussyStatic', 'e', 'static', '0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8')
	scaleObject('sussyStatic', 4.8, 4.8)
	setObjectCamera('sussyStatic', 'hud')
	precacheImage('sussyStatic')
end

function onEvent(name, value1, value2)
	if name == 'static' then
		addLuaSprite('sussyStatic', false)
		objectPlayAnimation('sussyStatic', 'e', true)
		runTimer('delay', 0.8)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'delay' then
		removeLuaSprite('sussyStatic', false)
	end
end