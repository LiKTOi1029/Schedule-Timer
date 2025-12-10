Time = require("timeconverter")

cont = {}
cont.__index = cont

function cont.new(Input)
	instance = setmetatable({}, cont)
	
	
end

function love.load()
	GlobalTable = 
	{
		["BgColour"] = {0.1, 0.1, 0.1, 1},
		["BgTopSizeX"] = 1080,
		["BgTopSizeY"] = 36,
		["BgLeftSizeX"] = 96,
		["BgLeftSizeY"] = 640,
		["BgBottomSizeX"] = 1080,
		["BgBottomSizeY"] = 36,
		["BgBottomPosY"] = 604,
		["BgRightSizeX"] = 96,
		["BgRightSizeY"] = 640,
		["BgRightPosX"] = 984,
		["1SizeX"] = 888,
		["1SizeY"] = 568,
		["1Colour"] = {0.5, 0.5, 0.5, 1},
		["1PosX"] = 96,
		["1PosY"] = 36,
		["2SizeX"] = 868,
		["2SizeY"] = 548,
		["2Colour"] = {0.7, 0.7, 0.7, 1},
		["2PosX"] = 106,
		["2PosY"] = 46,
		["3SizeX"] = 854,
		["3SizeY"] = 534,
		["3Colour"] = {0.3, 0.3, 0.3, 1},
		["3PosX"] = 113,
		["3PosY"] = 53,
		["1ImmitationSizeY"] = 10,
		["2ImmitationSizeY"] = 7,
	}
end

function Menu()
	love.graphics.setColor(GlobalTable["1Colour"][1], GlobalTable["1Colour"][2], GlobalTable["1Colour"][3], GlobalTable["1Colour"][4])
	love.graphics.rectangle("fill", GlobalTable["1PosX"], GlobalTable["1PosY"], GlobalTable["1SizeX"], GlobalTable["1SizeY"])
	
	love.graphics.setColor(GlobalTable["2Colour"][1], GlobalTable["2Colour"][2], GlobalTable["2Colour"][3], GlobalTable["2Colour"][4])
	love.graphics.rectangle("fill", GlobalTable["2PosX"], GlobalTable["2PosY"], GlobalTable["2SizeX"], GlobalTable["2SizeY"])
	
	love.graphics.setColor(GlobalTable["3Colour"][1], GlobalTable["3Colour"][2], GlobalTable["3Colour"][3], GlobalTable["3Colour"][4])
	love.graphics.rectangle("fill", GlobalTable["3PosX"], GlobalTable["3PosY"], GlobalTable["3SizeX"], GlobalTable["3SizeY"])
	
	-- This is where the activities and their contents begin
	
	-- This is where the activities and their contents end
	
	love.graphics.setColor(GlobalTable["BgColour"][1], GlobalTable["BgColour"][2], GlobalTable["BgColour"][3], GlobalTable["BgColour"][4])
	love.graphics.rectangle("fill", 0, 0, GlobalTable["BgTopSizeX"], GlobalTable["BgTopSizeY"])
	love.graphics.rectangle("fill", 0, 0, GlobalTable["BgLeftSizeX"], GlobalTable["BgLeftSizeY"])
	love.graphics.rectangle("fill", 0, GlobalTable["BgBottomPosY"], GlobalTable["BgBottomSizeX"], GlobalTable["BgBottomSizeY"])
	love.graphics.rectangle("fill", GlobalTable["BgRightPosX"], 0, GlobalTable["BgRightSizeX"], GlobalTable["BgRightSizeY"])	
	
	love.graphics.setColor(GlobalTable["1Colour"][1], GlobalTable["1Colour"][2], GlobalTable["1Colour"][3]+0.5, GlobalTable["1Colour"][4])
	love.graphics.rectangle("fill", GlobalTable["1PosX"], GlobalTable["1PosY"], GlobalTable["1SizeX"], GlobalTable["1ImmitationSizeY"])
	love.graphics.rectangle("fill", GlobalTable["1PosX"], 640-GlobalTable["2PosY"], GlobalTable["1SizeX"], GlobalTable["1ImmitationSizeY"])
	
	love.graphics.setColor(GlobalTable["2Colour"][1], GlobalTable["2Colour"][2], GlobalTable["2Colour"][3]-0.5, GlobalTable["2Colour"][4])
	love.graphics.rectangle("fill", GlobalTable["2PosX"], GlobalTable["2PosY"], GlobalTable["2SizeX"], GlobalTable["2ImmitationSizeY"])
	love.graphics.rectangle("fill", GlobalTable["2PosX"], 640-GlobalTable["3PosY"], GlobalTable["2SizeX"], GlobalTable["2ImmitationSizeY"])
end

function love.update(dt)
	
end

function love.draw()
	Menu()
end