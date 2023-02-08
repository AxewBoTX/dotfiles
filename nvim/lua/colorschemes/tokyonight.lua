--Ensuring TokyoNight Is Working
local status,n = pcall(require,"tokyonight")
if (not status) then
	print("TokyoNight Is Not Working")
	return
end

--TokyoNight Setup
n.setup({
	style = "night",
	transparent = true,
	terminal_colors = true
})
