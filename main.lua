local Time = require("timeconverter")

local cont = {}
cont.__index = cont
local AllInstances = {}

-- , GlobalTable["Contents"]["PosY"]*(#AllInstances + 10)}

function love.load()
	
	GlobalTable = require("GlobalTable")
	function cont.new(InputDate, InputString)
		local instance = setmetatable({}, cont)
		instance.posX = GlobalTable["Contents"]["PosX"]
		if #AllInstances > 0 then
			instance.posY = GlobalTable["Contents"]["PosY"]*(#AllInstances+1)+(15*#AllInstances)
		else 
			instance.posY = GlobalTable["Contents"]["PosY"]
		end
		instance.sizeX = GlobalTable["Contents"]["SizeX"]
		instance.sizeY = GlobalTable["Contents"]["SizeY"]
		instance.contents = InputString
		instance.date = Time.new(InputDate).Full
		instance.red = GlobalTable["Contents"]["Red"]
		instance.green = GlobalTable["Contents"]["Green"]
		instance.blue = GlobalTable["Contents"]["Blue"]
		instance.alpha = GlobalTable["Contents"]["Alpha"]
		print(instance.posX .. " " .. instance.posY .. " " .. instance.sizeX .. " " .. instance.sizeY .. " " .. tostring(instance.contents))
		print(instance.date .. " " .. instance.red .. " " .. instance.green .. " " .. instance.blue .. " " .. instance.alpha)
		table.insert(AllInstances, instance)
		return instance
	end
	
	za = cont.new("Mar 13 2025 45:22", "Input 1")
	zb = cont.new("Feb 23 1992 10:00", "Input 2")
	zc = cont.new("Apr 11 2024 2:49:00", "Input 3")
	zd = cont.new("Apr 11 2024 2:49:00", "Input 3")
	ze = cont.new("Apr 11 2024 2:49:00", "Input 3")
	zf = cont.new("Apr 11 2024 2:49:00", "Input 3")
	
end

function Menu()
	local L1 = GlobalTable["Layer1"]
	local L2 = GlobalTable["Layer2"]
	local L3 = GlobalTable["Layer3"]
	local BgTop = GlobalTable["Bg"]["BgLayerTop"]
	local BgLeft = GlobalTable["Bg"]["BgLayerLeft"]
	local BgRight = GlobalTable["Bg"]["BgLayerRight"]
	local BgBottom = GlobalTable["Bg"]["BgLayerBottom"]
	local BgColours = GlobalTable["Bg"]["Colours"]
	local L1I = GlobalTable["Layer1Immitation"]
	local L2I = GlobalTable["Layer2Immitation"]
	local Cont = GlobalTable["Contents"]
	
	love.graphics.setColor(L1["Red"], L1["Green"], L1["Blue"], L1["Alpha"])
	love.graphics.rectangle(L1["Type"], L1["PosX"], L1["PosY"], L1["SizeX"], L1["SizeY"])
	
	love.graphics.setColor(L2["Red"], L2["Green"], L2["Blue"], L2["Alpha"])
	love.graphics.rectangle(L2["Type"], L2["PosX"], L2["PosY"], L2["SizeX"], L2["SizeY"])
	
	love.graphics.setColor(L3["Red"], L3["Green"], L3["Blue"], L3["Alpha"])
	love.graphics.rectangle(L3["Type"], L3["PosX"], L3["PosY"], L3["SizeX"], L3["SizeY"])
	
	-- VVV This is where the activities and their contents begin VVV
	
	love.graphics.setColor(za.red, za.green, za.blue, za.alpha)
	love.graphics.rectangle("fill", za.posX, za.posY, za.sizeX, za.sizeY)
	love.graphics.rectangle("fill", zb.posX, zb.posY, zb.sizeX, zb.sizeY)
	love.graphics.rectangle("fill", zc.posX, zc.posY, zc.sizeX, zc.sizeY)
	love.graphics.rectangle("fill", zd.posX, zd.posY, zd.sizeX, zd.sizeY)
	love.graphics.rectangle("fill", ze.posX, ze.posY, ze.sizeX, ze.sizeY)
	love.graphics.rectangle("fill", zf.posX, zf.posY, zf.sizeX, zf.sizeY)
	
	-- ^^^ This is where the activities and their contents end ^^^
	
	-- VVV This is the Main Menu Background code
	
	love.graphics.setColor(BgColours["Red"], BgColours["Green"], BgColours["Blue"], BgColours["Alpha"])
	love.graphics.rectangle(BgTop["Type"], BgTop["PosX"], BgTop["PosY"], BgTop["SizeX"], BgTop["SizeY"])
	love.graphics.rectangle(BgRight["Type"], BgRight["PosX"], BgRight["PosY"], BgRight["SizeX"], BgRight["SizeY"])
	love.graphics.rectangle(BgLeft["Type"], BgLeft["PosX"], BgLeft["PosY"], BgLeft["SizeX"], BgLeft["SizeY"])
	love.graphics.rectangle(BgBottom["Type"], BgBottom["PosX"], BgBottom["PosY"], BgBottom["SizeX"], BgBottom["SizeY"])
	
	-- ^^^ This is the Main Menu Background code ^^^
	
	-- VVV These are the guidelines VVV
	
	love.graphics.setColor(L1I["Red"], L1I["Green"], L1I["Blue"], L1I["Alpha"])
	love.graphics.rectangle(L1I["Type"], L1I["PosXTop"], L1I["PosYTop"], L1I["SizeXTop"], L1I["SizeYTop"])
	love.graphics.rectangle(L1I["Type"], L1I["PosXBottom"], L1I["PosYBottom"], L1I["SizeXBottom"], L1I["SizeYBottom"])
	
	love.graphics.setColor(L2I["Red"], L2I["Green"], L2I["Blue"], L2I["Alpha"])
	love.graphics.rectangle(L2I["Type"], L2I["PosXTop"], L2I["PosYTop"], L2I["SizeXTop"], L2I["SizeYTop"])
	love.graphics.rectangle(L2I["Type"], L2I["PosXBottom"], L2I["PosYBottom"], L2I["SizeXBottom"], L2I["SizeYBottom"])
	
	-- ^^^ These are the guidelines ^^^
end

function love.update(dt)
	
end

function love.draw()
	Menu()
end