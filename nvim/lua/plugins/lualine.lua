--Ensuring Lualine Is Working
local status, lualine = pcall(require, "lualine")
if not status then
	print("Lualine Is Not Working")
	return
end

--Lualine Setup
lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
	},
	sections = {
		lualine_x = { "" },
		lualine_y = { "" },
	},
})
