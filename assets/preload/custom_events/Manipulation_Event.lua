-- Event notes hooks
function onEvent(name, value1, value2)
    if name == 'Manipulation_Event' then
                setProperty('timeTxt.visible', true)
                setProperty('scoreTxt.visible', true)
                setProperty('watermark.visible', true)
                setProperty('tnh.visible', true)
                setProperty('sick.visible', true)
                setProperty('cm.visible', true)
                setProperty('good.visible', true)
                setProperty('bad.visible', true)
                setProperty('shit.visible', true)
                setProperty('miss.visible', true)
                setPropertyFromClass("openfl.Lib","application.window.title", "Manipulation Song")
	end
end