return {
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = true,
		priority = 1000,
		config = function()
			-- vim.cmd([[colorscheme oxocarbon]])
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd([[colorscheme kanagawa]])
		end,
	},
	{
		"kvrohit/mellow.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme mellow]])
		end,
	},
}
