return {
	-- {
	-- 	"nyoom-engineering/oxocarbon.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme oxocarbon]])
	-- 	end,
	-- },
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme vscode]])
		end,
	},
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme tokyonight-night]])
	-- 	end,
	-- },
	-- {
	-- 	"EdenEast/nightfox.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme carbonfox]])
	-- 	end,
	-- },
	-- {
	-- 	"Mofiqul/dracula.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("dracula").setup({
	-- 			transparent_bg = true,
	-- 		})
	-- 		-- vim.cmd([[colorscheme dracula]])
	-- 	end,
	-- },
	-- {
	-- 	"neanias/everforest-nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme everforest]])
	-- 	end,
	-- },
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme kanagawa]])
	-- 	end,
	-- },
	-- {
	-- 	"kvrohit/mellow.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme mellow]])
	-- 	end,
	-- },
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme gruvbox]])
	-- 	end,
	-- },
}
