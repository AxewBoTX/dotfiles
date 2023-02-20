--Ensuring Fidget Is Working
local status,fidget = pcall(require,"fidget")
if (not status) then
	print("Fidget Is Not Working")
	return
end

--Fidget Config
fidget.setup{
	text = {
		spinner = "moon"
	},
	window = {
		blend = 100,
	}
}
