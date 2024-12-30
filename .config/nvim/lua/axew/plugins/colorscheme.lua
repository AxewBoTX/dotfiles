return {
	-- {
	-- 	"nyoom-engineering/oxocarbon.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme oxocarbon]])
	-- 	end,
	-- },
	-- {
	-- 	"Mofiqul/vscode.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme vscode]])
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
	-- 	"neanias/everforest-nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme everforest]])
	-- 	end,
	-- },
	{
		"mellow-theme/mellow.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme mellow]])
		end,
	},
	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("onedark").setup({
	-- 			style = "warmer",
	-- 		})
	-- 		vim.cmd([[colorscheme onedark]])
	-- 	end,
	-- },
	-- {
	-- 	"kvrohit/rasmus.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme rasmus]])
	-- 	end,
	-- },
	-- {
	-- 	"zootedb0t/citruszest.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme citruszest]])
	-- 	end,
	-- },
	-- {
	-- 	"aktersnurra/no-clown-fiesta.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme no-clown-fiesta]])
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			color_overrides = {
	-- 				mocha = {
	-- 					base = "#000000",
	-- 					mantle = "#000000",
	-- 					crust = "#000000",
	-- 				},
	-- 			},
	-- 		})
	-- 		vim.cmd([[colorscheme catppuccin-mocha]])
	-- 	end,
	-- },
}
