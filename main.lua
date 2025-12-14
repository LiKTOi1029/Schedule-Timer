local Time = require("timeconverter")

local cont = {}
cont.__index = cont
local AllInstances = {}

-- , GlobalTable["Contents"]["PosY"]*(#AllInstances + 10)}

function love.load()
	
	GlobalTable = require("GlobalTable")
	Menu = require("Menu")
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

function love.update(dt)
	
end

function love.draw()
	Menu.Load()
end