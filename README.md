

# Axew's dotfiles

>Warning: Dont use these files blindly unless you know what they are meant for or what their function is.

## Contents
- [Neovim](https://neovim.io/) Config
- [Powershell](https://learn.microsoft.com/en-us/powershell/) Config
- [Linux(On WSL and Desktop)](https://learn.microsoft.com/en-us/windows/wsl/install) Config
- [Tmux](https://github.com/tmux/tmux/wiki) Config
- [Alacritty](https://github.com/alacritty/alacritty) Config
- [Neofetch](https://github.com/dylanaraps/neofetch) Config

## About Me
- [My Website](https://axewbotx-links.netlify.app/)
- [Youtube](https://www.youtube.com/@AxewBoTX)
- [Twitter](https://twitter.com/AxewBoTX)
- [Discord](https://discord.com/invite/pTzFSvCYp2)
- [Twitch](https://www.twitch.tv/axewbotx)

## Neovim Setup

Requires [Neovim](https://neovim.io/) (>= 0.8)
### Colorschemes
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Tokyonight
- [tanvirtin/monokai.nvim](https://github.com/tanvirtin/monokai.nvim) - Monokai
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) - Gruvbox 
- [cpea2506/one_monokai.nvim](https://github.com/cpea2506/one_monokai.nvim) - OneMonokai
### Plugins
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) - A plugin manager for Neovim
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Plenary Includes Usefull Functoins For Neovim Plugins
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure Neovim statusline written in Lua
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for Neovim's built-in LSP
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Portable LSP Manager
- [jayp0521/mason-null-ls.nvim](https://github.com/jay-babu/mason-null-ls.nvim) - Linters and formatters manager using Mason
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) - Plugin for converting Neovim into a language server to use formatting, code actions and much more.
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Extionsion to use lspconfig for mason.nvim
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) - A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI
- [mfussenegger/nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls) - LSP plugin specially for java.
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - Lua `fork` of vim-web-devicons for neovim
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - A file browser for neovim.
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua) - A snazzy bufferline
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - Color Code Highlighter
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - A super powerful autopair plugin for Neovim
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim) - UI Component Library For Neovim
- [VonHeikemen/searchbox.nvim](https://github.com/VonHeikemen/searchbox.nvim) - Better Search And Replace
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Code Completion Plugin Written In Lua
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Lsp Snippets For Code Completion
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) - VsCode Like Pictograms For Neovim
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine For Neovim 
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Current Buffer Source For Code COmpletion
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Path Source For Code Completion

## PowerShell Setup (Windows)
>NOTE: The code inside Microsoft.Powershell_Profile.ps1 does not go inside the .config folder. It is just to set the environment var that sets the location of powershell config to the new location in .config/powershell folder that is the user_profile.ps1 file.
- [Scoop](https://scoop.sh/) - A command-line installer
- [Git for Windows](https://gitforwindows.org/)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons

## Linux Setup
>NOTE: The code inside .zshrc does not go inside the .config folder. You need to put the copy of this file in the home directory.
- [Git](https://git-scm.com/)
- [zsh](https://www.zsh.org/) --Bash but better
- [Oh My Zsh](https://ohmyz.sh/) - Prompt theme engine for Linux
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - Oh My Zsh theme
- [Exa](https://github.com/ogham/exa) -- Modern replacement for `ls` command
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - Command Suggestions for zsh
- [eruizc-dev/jdtls-launcher](https://github.com/eruizc-dev/jdtls-launcher) - Automatic JDTLS installer

## Tmux Setup
>NOTE The code inside .tmux.conf does not go inside the .config folder. You need to put the copy of this file in the home directory.
- [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm) - Tmux Plugin Manager
