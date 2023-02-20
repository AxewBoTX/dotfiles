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
		'cpea2506/one_monokai.nvim', --OneMonokai
		'tanvirtin/monokai.nvim', --Monokai
	}
	use 'kyazdani42/nvim-web-devicons' --Web Dev Icons
	use 'norcalli/nvim-colorizer.lua' --Colorizer For Color Code Highlighting
	use {
		'nvim-lualine/lualine.nvim', -- LuaLine As The StatusLine
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { -- Make Sure To Install RipGrep Before Installing Telescope
		'nvim-telescope/telescope.nvim', tag = '0.1.0', --Telescope
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-file-browser.nvim' --Telescope File Browser Extension
	use 'akinsho/bufferline.nvim' --BufferLine For Tabs
    use { --Treesitter For Syntax Highlighting
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use { --Code-Runner For Compiling And Running Code
		'CRAG666/code_runner.nvim',
		requires = {'nvim-lua/plenary.nvim'}
	}
	use { --Git Related Plugins
		'lewis6991/gitsigns.nvim', --Git Sign
	}
	use { --Language Server Protocol; LSP
		'williamboman/mason.nvim', --Mason
		'williamboman/mason-lspconfig.nvim', --Mason LSP Config
		'neovim/nvim-lspconfig', --LSP Config
		'glepnir/lspsaga.nvim', --LSP Saga
		'mfussenegger/nvim-jdtls', -- JDTLS For Java
	}
	use {
		'j-hui/fidget.nvim' -- LSP Progress UI
	}
end)

--Colorschemes Setup
require('colorschemes/tokyonight')
require('colorschemes/gruvbox')
require('colorschemes/onemonokai')
require('colorschemes/monokai')
--Plugins Setup
require('packer-plugins/lualine')
require('packer-plugins/telescope')
require('packer-plugins/treesitter')
require('packer-plugins/bufferline')
require('packer-plugins/code_runner')
require('packer-plugins/lsp')
require('packer-plugins/colorizer')
require('packer-plugins/fidget')
