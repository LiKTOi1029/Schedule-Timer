local Layer1Red, Layer1Green, Layer1Blue, Layer1Alpha = 0.17647058823529411764705882352941, 0.16862745098039215686274509803922, 0.25490196078431372549019607843137, 1
local Layer2Red, Layer2Green, Layer2Blue, Layer2Alpha = 0.13725490196078431372549019607843, 0.12941176470588235294117647058824, 0.25490196078431372549019607843137, 1
local Layer1PosX, Layer1PosY, Layer1SizeX = 96, 36, 888
local Layer2PosX, Layer2PosY, Layer2SizeX = 106, 46, 868
local Layer3PosY = 53
GlobalTable = 
{
	["Bg"] = 
	{
		["Colours"] = 
		{
			["Red"] = 0.01960784313725490196078431372549,
			["Green"] = 0.01568627450980392156862745098039,
			["Blue"] = 0.08627450980392156862745098039216,
			["Alpha"] = 1,
		},
		["BgLayerTop"] = 
		{
			["Type"] = "fill",
			["SizeX"] = 1080,
			["SizeY"] = 36,
			["PosX"] = 0,
			["PosY"] = 0,
		},
		["BgLayerLeft"] = 
		{
			["Type"] = "fill",
			["SizeX"] = 96,
			["SizeY"] = 640,
			["PosX"] = 0,
			["PosY"] = 0,
		},
		["BgLayerRight"] = 
		{
			["Type"] = "fill",
			["SizeX"] = 96,
			["SizeY"] = 640,
			["PosX"] = 984,
			["PosY"] = 0,
		},
		["BgLayerBottom"] = 
		{
			["Type"] = "fill",
			["SizeX"] = 1080,
			["SizeY"] = 36,
			["PosX"] = 0,
			["PosY"] = 604,
		},
	},
	["Layer1"] = 
	{
		["Type"] = "fill",
		["SizeX"] = Layer1SizeX,
		["SizeY"] = 568,
		["PosX"] = Layer1PosX,
		["PosY"] = Layer1PosY,
		["Red"] = Layer1Red,
		["Green"] = Layer1Green,
		["Blue"] = Layer1Blue,
		["Alpha"] = Layer1Alpha,
	},
	["Layer2"] = 
	{
		["Type"] = "fill",
		["SizeX"] = Layer2SizeX,
		["SizeY"] = 548,
		["PosX"] = Layer2PosX,
		["PosY"] = Layer2PosY,
		["Red"] = Layer2Red,
		["Green"] = Layer2Green,
		["Blue"] = Layer2Blue,
		["Alpha"] = Layer2Alpha,
	},
	["Layer3"] = 
	{
		["Type"] = "fill",
		["SizeX"] = 854,
		["SizeY"] = 534,
		["PosX"] = 113,
		["PosY"] = Layer3PosY,
		["Red"] = 0.05098039215686274509803921568627,
		["Green"] = 0.05098039215686274509803921568627,
		["Blue"] = 0.12941176470588235294117647058824,
		["Alpha"] = 1,
	},
	["Layer1Immitation"] =
	{
		["Type"] = "fill",
		["PosXTop"] = Layer1PosX,
		["PosYTop"] = Layer1PosY,
		["SizeXTop"] = Layer1SizeX,
		["SizeYTop"] = 10,
		["PosXBottom"] = Layer1PosX,
		["PosYBottom"] = 640-Layer2PosY, -- 640 here is the height of the window.
		["SizeXBottom"] = Layer1SizeX,
		["SizeYBottom"] = 10,
		["Red"] = Layer1Red,
		["Green"] = Layer1Green,
		["Blue"] = Layer1Blue,
		["Alpha"] = Layer1Alpha,
	},
	["Layer2Immitation"] =
	{
		["Type"] = "fill",
		["PosXTop"] = Layer2PosX,
		["PosYTop"] = Layer2PosY,
		["SizeXTop"] = Layer2SizeX,
		["SizeYTop"] = 10,
		["PosXBottom"] = Layer2PosX,
		["PosYBottom"] = 640-Layer3PosY, -- 640 here is the height of the window.
		["SizeXBottom"] = Layer2SizeX,
		["SizeYBottom"] = 7,
		["Red"] = Layer2Red,
		["Green"] = Layer2Green,
		["Blue"] = Layer2Blue,
		["Alpha"] = Layer2Alpha,
	},
	["Contents"] =
	{
		["Type"] = "fill",
		["PosX"] = 153,
		["PosY"] = 93,
		["SizeX"] = 774,
		["SizeY"] = 100,
		["Red"] = 0.05490196078431372549019607843137, 
		["Green"] = 0.04313725490196078431372549019608, 
		["Blue"] = 0.23529411764705882352941176470588, 
		["Alpha"] = 1,
	},
}

return GlobalTable