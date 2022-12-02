function onCreate()
	local midX = screenWidth/2
	makeAnimatedLuaSprite('barr','control/Thingy',0, 0)
	addAnimationByPrefix('barr','barr','thingy',24,false)
	setScrollFactor('barr', 0, 0);
	setProperty('barr.alpha',0)
	setObjectCamera('barr','hud')
	setProperty("barr.x", midX - getProperty("barr.width")/2)
	if(downscroll)then
		setProperty("barr.y", screenHeight*0.11 - getProperty("barr.height")/2 )
	else
		setProperty("barr.y", screenHeight*0.89 - getProperty("barr.height")/2)
	end
end

function onStartCountdown()
	addLuaSprite('barr', true)
	setProperty('camHUD.alpha',0)
	return Function_Continue
end

function onCountdownStarted()
	setPropertyFromClass('Conductor', 'songPosition', 0);
end

function goodNoteHit()
    health = getProperty('health')
    setProperty('health', health+ 0.014);
	if(getProperty('health') > 1)then
		setProperty('health', 1);
		--barr.alpha = 1;
		setProperty('barr.alpha',1)
		doTweenAlpha("barrAlpha","barr","0","1","quadInOut");
		objectPlayAnimation('barr', 'barr', true);
	end
end