-- Author:	Julian Rabe
-- Date:	2016-05-03
--
-- This GrandMA 2 LUA script will import .csv files for autopatching.
-- For further information, bug reports and requests, please refer to
-- https://github.com/schw4rzlicht/gma2.lua.importCSVPatch
--
-- Released under GNU GPL v3.0

return function()
	fixtures = {}
	
	if gma.show.getvar("HOSTSUBTYPE") == "onPC" then
		filePath = gma.textinput("What's the letter of your USB drive?")..":/patch.csv"
	else
		-- @TODO: Insert path from UNIX drive
	end
	
	for line in io.lines(filePath) do
		for f, d in string.gmatch(line,"(%d+);([%d%.]+)") do
			gma.cmd("Assign Fixture "..f.." /patch="..d)
		end
	end
end