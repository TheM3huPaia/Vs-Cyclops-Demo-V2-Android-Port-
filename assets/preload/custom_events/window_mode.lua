-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'window_mode' then
                setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', false)
	end
end