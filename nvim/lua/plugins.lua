--Ensuring Packer Is Installed
local status,packer = pcall(require,'packer')
if (not status) then
	print("Packer is not installed")
end

--Adding Packer
vim.cmd [[packadd packer.nvim]]

--Packer Config For Floating Install Window
packer.init{
	display = {
		open_fn = function()
			return require("packer.util").float{border = "rounded"}
		end,
	},
}

--Plugins
packer.startup(function(use)
	use 'wbthomason/packer.nvim' --Packer Itself
	use { --ColorSchemes
		'folke/tokyonight.nvim', --TokyoNight
		"ellisonleao/gruvbox.nvim", --Gruvbox
		'navarasu/onedark.nvim', --OneDark
		'cpea2506/one_monokai.nvim', --OneMonokai
	}
	use 'kyazdani42/nvim-web-devicons' --Web Dev Icons
	use {
		'nvim-lualine/lualine.nvim', -- LuaLine As The StatusLine
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { -- Make Sure To Install RipGrep Before Installing Telescope
		'nvim-telescope/telescope.nvim', tag = '0.1.0', --Telescope
		requires = { {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim'} }
	}
	use 'akinsho/bufferline.nvim' --BufferLine For Tabs
    use { --Treesitter For Syntax Highlighting
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use { --Code-Runner For Compiling And Running Code
		'CRAG666/code_runner.nvim',
		requires = {'nvim-lua/plenary.nvim'}
	}
	use { --Langage Server Protocol; LSP
		'neovim/nvim-lspconfig',
		"glepnir/lspsaga.nvim",
		"mfussenegger/nvim-jdtls"
	}
	use {
        "williamboman/mason.nvim",
		requires = {"williamboman/mason-lspconfig.nvim"},
    }
	use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
        }
	}
end)

--Plugins Setup
require('packer-plugins/colorschemes/tokyonight')
require('packer-plugins/colorschemes/gruvbox')
require('packer-plugins/colorschemes/onedark')
require('packer-plugins/colorschemes/onemonokai')
require('packer-plugins/lualine')
require('packer-plugins/telescope')
require('packer-plugins/treesitter')
require('packer-plugins/bufferline')
require('packer-plugins/code_runner')
require('packer-plugins/mason')
require('packer-plugins/lsp')
