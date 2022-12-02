-- Event notes hooks
function onCreate()
	makeAnimatedLuaSprite('Tails', 'bgstuff/tails', 400, 500)
	addAnimationByIndices('Tails', 'T', 'tails', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28')
	setObjectCamera('Tails', 'other')
	precacheImage('Tails')
end

function onEvent(name, value1, value2)
	if name == 'tails' then
		addLuaSprite('Tails', false)
		objectPlayAnimation('Tails', 'T', true)
		runTimer('delay', 1.2)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'delay' then
		removeLuaSprite('Tails', false)
	end
end