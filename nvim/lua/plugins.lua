--Ensuring Packer Is Installed
local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
end

--Adding Packer
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
	})
	use("nvim-lua/plenary.nvim") --Plenary Includes Usefull Functions For Plugins
	use("MunifTanjim/nui.nvim") --UI Component Library For Neovim
	use("kyazdani42/nvim-web-devicons") --Web Dev Icons
	use("norcalli/nvim-colorizer.lua") --Colorizer For Color Code Highlighting
	use("windwp/nvim-autopairs") --Autopairs
	use("VonHeikemen/searchbox.nvim") --Better Search And Replace
	use("iamcco/markdown-preview.nvim") --Markdown Preview Plugin
	use({
		"nvim-lualine/lualine.nvim", -- LuaLine As The StatusLine
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("nvim-tree/nvim-tree.lua") --NvimTree For File Explorer
	use({ -- Make Sure To Install RipGrep Before Installing Telescope
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0", --Telescope
	})
	use("akinsho/bufferline.nvim") --BufferLine For Tabs
	use({ --Treesitter For Syntax Highlighting
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({ --Code-Runner For Compiling And Running Code
		"CRAG666/code_runner.nvim",
	})
	use({ --Git Related Plugins
		"lewis6991/gitsigns.nvim", --Git Sign
	})
	use({ --Language Server Protocol; LSP
		"williamboman/mason.nvim", --Mason
		"williamboman/mason-lspconfig.nvim", --Mason LSP Config
		"neovim/nvim-lspconfig", --LSP Config
		"kkharji/lspsaga.nvim", --LSP Saga
		"mfussenegger/nvim-jdtls", -- JDTLS For Java
		"jose-elias-alvarez/null-ls.nvim", --Use Neovim as an language server to inject various LSP functions, code actions and more
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
--Plugins Setup
require("plugins/lualine")
require("plugins/telescope")
require("plugins/treesitter")
require("plugins/bufferline")
require("plugins/code_runner")
require("plugins/mason")
require("plugins/lsp")
require("plugins/colorizer")
require("plugins/nvim_tree")
require("plugins/autopairs")
require("plugins/searchbox")
require("plugins/cmp")
require("plugins/null_ls")
