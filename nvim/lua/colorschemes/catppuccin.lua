--Ensuring Catppuccin Is Working
local status, catppuccin = pcall(require, "catppuccin")
if not status then
	print("Catppuccin Is Not Working")
	return
end

--Catppuccin Setup
catppuccin.setup({
	flavour = "mocha",
	backgroud = {
		light = "latte",
		dark = "mocha",
	},
	color_overrides = {
		mocha = {
			base = "#000000",
			mantle = "#000000",
			crust = "#000000",
		},
	},
})
