return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
			},
			sections = {
				lualine_b = { "branch" },
				lualine_x = { "" },
				lualine_y = { "" },
			},
		})
	end,
}
