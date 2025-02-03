{ ... }:
{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings.keys = [
          [ ";f" "<cmd>Telescope find_files<CR>" ]
          [ ";l" "<cmd>Telescope live_grep<CR>" ]
          [ ";b" "<cmd>Telescope buffers<CR>" ]
          [ ";h" "<cmd>Telescope help_tags<CR>" ]
        ];
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
