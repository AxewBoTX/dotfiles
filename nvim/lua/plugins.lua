--Ensuring Packer Is Working
local status, packer = pcall(require, "packer")
if not status then
	print("Packer Is Not Working")
	return
end
--Adding Packer To Neovim
vim.cmd([[packadd packer.nvim]])

--Packer Config For Floating Install Window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

--Plugins
packer.startup(function(use)
	use("wbthomason/packer.nvim") --Packer Itself
	use({ --ColorSchemes
		"folke/tokyonight.nvim", --TokyoNight
		"ellisonleao/gruvbox.nvim", --Gruvbox
		"cpea2506/one_monokai.nvim", --OneMonokai
		"tanvirtin/monokai.nvim", --Monokai
		"Mofiqul/vscode.nvim", --VSCode-Theme
		"nyoom-engineering/oxocarbon.nvim", --Oxocarbon
		{ "catppuccin/nvim", as = "catppuccin" }, --Catppuccin
	})
	use("tjdevries/colorbuddy.nvim") --Colorbuddy For Colorschemes
	use("nvim-lua/plenary.nvim") --Plenary Includes Usefull Functions For Plugins
	use("MunifTanjim/nui.nvim") --UI Component Library For Neovim
	use("nvim-lua/popup.nvim") --Popup API For Neovim
	use("kyazdani42/nvim-web-devicons") --Web Dev Icons
	use("norcalli/nvim-colorizer.lua") --Colorizer For Color Code Highlighting
	use("sudormrfbin/cheatsheet.nvim") --Cheatsheet For Neovim
	use("windwp/nvim-autopairs") --Autopairs
	use("VonHeikemen/searchbox.nvim") --Better Search And Replace
	use("lewis6991/gitsigns.nvim") --Git Integration For Buffers
	use({ --Markdown Preview Plugin
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("CRAG666/code_runner.nvim") --Code-Runner For Compiling And Running Code
	use("numToStr/FTerm.nvim") --Floating Terminal Plugin
	use("numToStr/Comment.nvim") --Commenting Plugin
	use("nvim-tree/nvim-tree.lua") --NvimTree For File Explorer
	use("nvim-lualine/lualine.nvim") --Lualine As The Statusline
	use("akinsho/bufferline.nvim") --BufferLine For Tabs
	use({ "nvim-telescope/telescope.nvim" }) --Telescope Fuzzy Finder
	use({ --Treesitter For Syntax Highlighting
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({ "nvim-treesitter/nvim-treesitter-textobjects" }) --Treesitter For Slecting And Moving Stuff
	use({ --Linting And Formatting
		"jose-elias-alvarez/null-ls.nvim", --Use Neovim as an language server to inject various LSP functions, code actions and more
	})
	use({ --Language Server Protocol; LSP
		"williamboman/mason.nvim", --Mason
		"williamboman/mason-lspconfig.nvim", --Mason LSP Config
		"neovim/nvim-lspconfig", --LSP Config
		"kkharji/lspsaga.nvim", --LSP Saga
		"mfussenegger/nvim-jdtls", -- JDTLS For Java
		"jayp0521/mason-null-ls.nvim", --Mason For Linters and Formatters
	})
	use({ -- Code Completion
		"hrsh7th/nvim-cmp", --Code Completion Plugin
		"hrsh7th/cmp-nvim-lsp", --Lsp Snippets
		"onsails/lspkind.nvim", --VsCode Like Pictograms
		"L3MON4D3/LuaSnip", --Lua Snippets Engine
		"hrsh7th/cmp-buffer", --Current Buffer Source
		"hrsh7th/cmp-path", --Path Completion
	})
end)

--Colorschemes Setup
require("colorschemes/tokyonight")
require("colorschemes/gruvbox")
require("colorschemes/onemonokai")
require("colorschemes/monokai")
require("colorschemes/vscode")
require("colorschemes/oxocarbon")
require("colorschemes/catppuccin")

require("plugins/searchbox")
require("plugins/colorizer")
require("plugins/autopairs")
require("plugins/code_runner")
require("plugins/markdown-preview")
require("plugins/comment")
require("plugins/nvim_tree")
require("plugins/lualine")
require("plugins/telescope")
require("plugins/bufferline")
require("plugins/treesitter")
require("plugins/gitsigns")
require("plugins/fterm")

--Lsp Plugins
require("plugins/lsp/mason")
require("plugins/lsp/lsp")
require("plugins/lsp/null_ls")
require("plugins/lsp/cmp")
