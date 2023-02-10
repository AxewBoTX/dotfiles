--Ensuring Colorizer Is Working
local status,colorizer = pcall(require,"colorizer")
if (not status) then
	print("Colorizer Is Not Working!")
	return
end

--Colorizer Setup
colorizer.setup({'*'})
