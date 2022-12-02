-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'window_full' then
                setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', true)
	end
end