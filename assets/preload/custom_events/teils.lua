-- Event notes hooks
function onCreate()
	makeAnimatedLuaSprite('Ta', 'control/shadow_tails_or_smth', 665, 40)
	addAnimationByIndices('Ta', 'Te', 'tails', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,45')
	setObjectCamera('Ta', 'camOther')
	precacheImage('Ta')
end

function onEvent(name)
	if name == 'teils' then
	        addLuaSprite('Ta', false)
	        objectPlayAnimation('Ta', 'Te', true)
	        runTimer('eliminar', 2.0)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'eliminar' then
		removeLuaSprite('Ta', false)
	end
end