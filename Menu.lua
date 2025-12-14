Obj = {}
Obj.__index = Obj

function Obj.Load()
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

return Obj