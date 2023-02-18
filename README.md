![Screenshot_20230214_011811](https://user-images.githubusercontent.com/84615670/218673342-6a23ade9-4202-4213-9b98-fb8fabdd5113.png)
![Screenshot_20230214_012058](https://user-images.githubusercontent.com/84615670/218673353-25ab0298-3dc5-4d65-92e8-0cc2a8a2bc9e.png)
![Screenshot_20230214_012137](https://user-images.githubusercontent.com/84615670/218673366-a1e9a433-ce8f-4e49-81f4-71a4886f882e.png)
![Screenshot_20230214_012151](https://user-images.githubusercontent.com/84615670/218673381-c4cf5bec-2d8f-468c-a6c1-f475df1168ab.png)
![Screenshot_20230214_012242](https://user-images.githubusercontent.com/84615670/218673397-fe650dc6-0a73-44fb-9d24-b35384472de2.png)

# Axew's dotfiles

>Warning: Dont use these files blindly unless you know what they are meant for or what their function is.

## Contents
- [Neovim](https://neovim.io/) Config
- [Powershell](https://learn.microsoft.com/en-us/powershell/) Config
- [Ubuntu(On WSL)](https://learn.microsoft.com/en-us/windows/wsl/install) Config
- [Tmux](https://github.com/tmux/tmux/wiki) Config

## Neovim Setup

Requires [Neovim](https://neovim.io/) (>= 0.8)
### Colorschemes
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Tokyonight
- [tanvirtin/monokai.nvim](https://github.com/tanvirtin/monokai.nvim) - Monokai
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) - Gruvbox 
- [cpea2506/one_monokai.nvim](https://github.com/cpea2506/one_monokai.nvim) - OneMonokai
### Plugins
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) - A plugin manager for Neovim
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure Neovim statusline written in Lua
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for Neovim's built-in LSP
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Portable LSP Manager
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Extionsion to use lspconfig for mason.nvim
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) - A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI
- [mfussenegger/nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls) - LSP plugin specially for java.
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - Lua `fork` of vim-web-devicons for neovim
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) - File Browser extension for telescope.nvim
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua) - A snazzy bufferline
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - Color Code Highlighter
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers

## PowerShell Setup (Windows)
>NOTE: The code inside Microsoft.Powershell_Profile.ps1 does not go inside the .config folder. It is just to set the environment var that sets the location of powershell config to the new location in .config/powershell folder that is the user_profile.ps1 file.
- [Scoop](https://scoop.sh/) - A command-line installer
- [Git for Windows](https://gitforwindows.org/)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons

## Ubuntu Setup
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

## How To Setup

Check out [UbuntuSetup](https://github.com/AxewBoTX/dotfiles-public/blob/main/UbuntuSetup.md) in order to setup Ubuntu/WSL. Also, check out [Setup](https://github.com/AxewBoTX/dotfiles-public/blob/main/Setup.md) in order to know how to setup the components in a briefly explained manner.

Watch These Video Tutorials:-

- [How To Install Neovim On Windows](https://www.youtube.com/watch?v=7Yhd_sBD75E)
- [How To Setup Neovim On Windows](https://www.youtube.com/watch?v=a7QWjlVhedw&t=1441s)
- [How To Setup Windows Terminal With Powershell - DevAsLife](https://youtu.be/5-aK2_WwrmM?t=532)

## About Me
- [My Website](https://axewbotx-links.netlify.app/)
- [Youtube](https://www.youtube.com/@AxewBoTX)
- [Twitter](https://twitter.com/AxewBoTX)
- [Discord](https://discord.com/invite/pTzFSvCYp2)
- [Twitch](https://www.twitch.tv/axewbotx)
