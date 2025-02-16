{ ... }:
{
  programs.nixvim = {
    colorscheme = "mellow";
    plugins = {
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
      nvim-surround = {
        enable = true;
        lazyLoad = {
          enable = true;
          settings.event = [ "BufReadPre" ];
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
    ./extra.nix
    ./lz-n.nix
  ];
} 
