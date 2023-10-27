return {
	"nvim-lualine/lualine.nvim",
	lazy = true,
	opts = {
		options = {
			icons_enabled = true,
			theme = "auto",
		},
		sections = {
			lualine_b = { "branch" },
			lualine_x = { "" },
			lualine_y = { "" },
		},
	},
}
