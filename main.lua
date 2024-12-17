dofile("tables.lua")
dofile("logic.lua")
dofile("Tracker.lua")
dofile("Location_Tracker.lua")

local refreshRate2 = 180
local framecount_old = 0
local framecount = 0




while true do
	moduloRefresh = emu.framecount() % refreshRate2
	readTitleScreen = readRam("titleScreen")
	framecount_old = framecount + 1
	framecount = emu.framecount()
	
	if readTitleScreen == 0 then
		if moduloRefresh == 0 then
			forms.clear(picture_box, backgroundColor)
			forms.drawText(picture_box, 30, 140, "Load save file!", "#FFFFFF", "#111111", 36, nil, "bold") 
			forms.refresh(picture_box)
		end
	else
		if (moduloRefresh == 0) or (framecount_old ~= framecount) then
			forms.clear(picture_box, backgroundColor)
			refreshItems()
			refreshItemFlags()
			loadLocFlags()
			forms.refresh(picture_box)
		end
	end
	emu.frameadvance()
end