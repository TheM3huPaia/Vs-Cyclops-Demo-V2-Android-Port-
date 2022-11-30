local allowCountdown = false
function onStartCountdown()
		startVideo('instigation');
		allowCountdown = true;
		return Function_Stop;
end
	return Function_Continue;
end