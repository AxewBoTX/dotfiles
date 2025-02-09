{ pkgs, flake_inputs, ... }:
{
  programs.nixvim = {
    colorscheme = "mellow";
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "mellow";
        src = flake_inputs.mellow-nvim;
      })
      (pkgs.vimUtils.buildVimPlugin {
        name = "helpview";
        src = flake_inputs.helpview-nvim;
      })
      (pkgs.vimUtils.buildVimPlugin {
        name = "nvim-gomove";
        src = flake_inputs.nvim-gomove;
      })
    ];
    plugins = {
      lz-n = {
        enable = true;
        plugins = [
          {
            __unkeyed-1 = "nvim-gomove";
            enabled = ''
              				function()
              					return true
              				end
              				'';
            after = ''
              				function()
              					require("gomove").setup({
              						map_defaults = true,
              						reindent = true,
              						undojoin = false,
              						move_past_end_col = false
              					});
              				end
              				'';
            event = [ "BufReadPre" ];
          }
        ];
      };
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
        settings = {
          pipe_table.enable = false;
          latex.enable = false;
        };
      };
      comment = {
        enable = true;
        # lazyLoad = {
        #   enable = true;
        #   settings.event = [ "BufReadPre" ];
        # };
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
    };
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
