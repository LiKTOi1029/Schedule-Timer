local Time = require("timeconverter")

local cont = {}
cont.__index = cont
local AllInstances = {}

-- , GlobalTable["Contents"]["PosY"]*(#AllInstances + 10)}

function love.load()
	
	DefaultFont = love.graphics.newFont(500)
	love.graphics.setFont(DefaultFont)
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
		instance.red = GlobalTable["Contents"]["Red"]
		instance.green = GlobalTable["Contents"]["Green"]
		instance.blue = GlobalTable["Contents"]["Blue"]
		instance.alpha = GlobalTable["Contents"]["Alpha"]
		
		instance.contents = love.graphics.newText(DefaultFont, InputString)
		instance.contentsposX = GlobalTable["Contents"]["PosX"] + 30
		instance.contentsposY = instance.posY + 30
		instance.contentssizemultiplier = 0.05
		instance.contentsred = 1
		instance.contentsgreen = 1
		instance.contentsblue = 1
		instance.contentsalpha = 1
		
		instance.date = love.graphics.newText(DefaultFont, Time.new(InputDate).Full)
		instance.dateposX = GlobalTable["Contents"]["PosX"] + 30
		instance.dateposY = instance.contentsposY + 30
		instance.datesizemultiplier = 0.04
		instance.datered = 0.8
		instance.dategreen = 0.8
		instance.dateblue = 0.8
		instance.datealpha = 1
		-- print(instance.posX .. " " .. instance.posY .. " " .. instance.sizeX .. " " .. instance.sizeY .. " " .. tostring(instance.contents))
		-- print(instance.date .. " " .. instance.red .. " " .. instance.green .. " " .. instance.blue .. " " .. instance.alpha)
		table.insert(AllInstances, instance)
		return instance
	end
	
	cont.new("Idk Dec 29 2025 1:46:49:34", "Journaling")
	cont.new("Idk Dec 29 2025 54:35.51", "Speedrun Game Challenge")
	cont.new("Idk Dec 30 2025 1:29:40.07", "Speedrun Game Challenge")
	cont.new("Idk Dec 31 2025 48:17.75", "UNSCRIPTED by MJ DeMarco")
	cont.new("Idk Dec 31 2025 42:52.94", "On The Fourfold Root of The Principle of Sufficient Reason by Arthur Schopenhauer")
	cont.new("Idk Dec 31 2025 51:21.03", "Note Taking")
	cont.new("Idk Dec 31 2025 15:13.81", "Application Dev (Shinran Bot Development)")
	
end	

function love.update(dt)
	
end

function LoadUI()
	local GlobalTable = require("GlobalTable")
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

	for i, v in pairs(AllInstances) do
		love.graphics.setColor(v.red, v.green, v.blue, v.alpha)
		love.graphics.rectangle("fill", v.posX, v.posY, v.sizeX, v.sizeY)
		love.graphics.setColor(v.contentsred, v.contentsgreen, v.contentsblue, v.contentsalpha)
		love.graphics.draw(v.contents, v.contentsposX, v.contentsposY, 0, v.contentssizemultiplier)
		love.graphics.setColor(v.datered, v.dategreen, v.dateblue, v.datealpha)
		love.graphics.draw(v.date, v.dateposX, v.dateposY, 0, v.datesizemultiplier)
	end

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

function love.draw()
	LoadUI()
end