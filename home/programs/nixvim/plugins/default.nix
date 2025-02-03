{ pkgs, flake_inputs, ... }:
{
  programs.nixvim = {
    plugins = {
      lz-n.enable = true;
      web-devicons.enable = true;
      colorizer = {
        enable = true;
        lazyLoad = {
          enable = true;
          settings.event = [ "BufReadPre" ];
        };
        settings = {
          filetypes = {
            lua.names = false;
            javascript.names = false;
            python.names = false;
            svelte.names = false;
            go.names = false;
            rust.names = false;
            c.names = false;
            cpp.names = false;
          };
        };
      };
      nvim-autopairs = {
        enable = true;
        lazyLoad = {
          enable = true;
          settings.event = [ "BufReadPre" ];
        };
        settings = {
          disable_filetype = [
            "TelescopePrompt"
          ];
        };
      };
      comment.enable = true;
      markdown-preview = {
        enable = true;
        settings = {
          echo_preview_url = 1;
          theme = "dark";
        };
      };
      # colorbuddy.enable = true;
      # plenary.enable = true;
      nui.enable = true;
      # popup.enable = true;
      dressing.enable = true;
      gitsigns = {
        enable = true;
        lazyLoad = {
          enable = true;
          settings = {
            cmd = [ "Gitsigns" ];
            keys = [ [ "gs" "<cmd>Gitsigns toggle_signs <CR>" ] ];
          };
        };
        settings = {
          signcolumn = false;
        };
      };
      lazygit.enable = true;
      render-markdown = {
        enable = true;
        lazyLoad = {
          enable = true;
          settings = {
            ft = [ "md" ];
          };
        };
        settings = {
          pipe_table.enable = false;
          latex.enable = false;
        };
      };
    };
    colorscheme = "mellow";
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "mellow";
        src = flake_inputs.mellow-nvim;
      })
    ];
    keymaps = [
      # gitsigns
      # { key = "gs"; action = "<cmd>Gitsigns toggle_signs<CR>"; options = { silent = true; noremap = true; }; }
      { key = "gp"; action = "<cmd>Gitsigns prev_hunk <CR>"; options = { silent = true; noremap = true; }; }
      { key = "gn"; action = "<cmd>Gitsigns next_hunk <CR>"; options = { silent = true; noremap = true; }; }
      { key = "tp"; action = "<cmd>Gitsigns preview_hunk <CR>"; options = { silent = true; noremap = true; }; }
      # lazygit
      { key = ";g"; action = ":LazyGit<CR>"; options = { silent = true; noremap = true; }; }
    ];
  };
  imports = [
    ./nvim-tree.nix
    ./bufferline.nix
    ./telescope.nix
    ./treesitter.nix
    ./lsp.nix
    ./cmp.nix
    ./conform.nix
  ];
} 
