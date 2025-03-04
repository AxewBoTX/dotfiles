{ ... }:
{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          keys = [
            [ "<leader>;f" "<cmd>Telescope find_files<CR>" ]
            [ "<leader>;l" "<cmd>Telescope live_grep<CR>" ]
            [ "<leader>;b" "<cmd>Telescope buffers<CR>" ]
            [ "<leader>;h" "<cmd>Telescope help_tags<CR>" ]
          ];
          ft = [ "markdown" ];
        };
      };
      settings.defaults = {
        mappings = {
          i = {
            "<C-k>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
            "<C-j>" = {
              __raw = "require('telescope.actions').move_selection_next";
            };
            "<C-[>" = {
              __raw = "require('telescope.actions').close";
            };
          };
        };
      };
    };
    keymaps = [
      # { key = ";f"; action = "<cmd>Telescope find_files<CR>"; options = { silent = true; noremap = true; }; }
      # { key = ";l"; action = "<cmd>Telescope live_grep<CR>"; options = { silent = true; noremap = true; }; }
      # { key = ";b"; action = "<cmd>Telescope buffers<CR>"; options = { silent = true; noremap = true; }; }
      # { key = ";h"; action = "<cmd>Telescope help_tags<CR>"; options = { silent = true; noremap = true; }; }
    ];
  };
}
