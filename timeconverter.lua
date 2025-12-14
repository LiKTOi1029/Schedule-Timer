Time = {}
Time__index = Time

--[[
	When I wrote this, only God and I knew what it was about.
	Now only God knows what this is about.
	
	update nvm I figured it out. It just took bashing my skull 
	with a brick to lose a few IQ points to understand what kind 
	of stupid I was on to even think of writing something this 
	dumb.
]]

function Time.new(Input)
	local Instance = setmetatable({}, Time)
	local TempTable = {}
	local Time = ""
	local DateTable = {}
	local ParsingString = ""
	for num1 = 1, Input:len(), 1 do
		local Splice = Input:sub(num1,num1)
		print(tostring(Splice))
		if ParsingString ~= "" and Splice == " " then
			table.insert(TempTable, ParsingString)
			ParsingString = ""
		elseif num1 == Input:len() then
			ParsingString = ParsingString..Splice
			table.insert(TempTable, ParsingString)
		elseif Splice ~= " " then
			ParsingString = ParsingString..Splice
		end
	end
	table.remove(TempTable, 1)
	table.insert(TempTable, 1, TempTable[#TempTable])
	table.remove(TempTable, #TempTable)
	table.insert(TempTable, 4, " ")
	for i, v in ipairs(TempTable) do
		if i < 4 then
			DateTable[i] = TempTable[i]
		else
			Time = TempTable[i]
		end
	end
	local Date = table.concat(DateTable)
	Input = table.concat(TempTable)
	Instance.Full = Input
	Instance.Date = Date
	Instance.Time = Time
	return Instance
end

-- local this = Time.new("Nov 24 2025 1:43:55")
-- print(this.Full .. " " .. this.Date .. " " .. this.Time)

return Time