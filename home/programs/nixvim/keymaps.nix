{ ... }:
{
  programs.nixvim.keymaps = [
    # (vanilla) basic neovim open close keybinds
    { key = "<C-o>"; mode = [ "n" ]; action = ":edit . <CR>"; options = { silent = true; noremap = true; desc = "Open file"; }; }
    { key = "<C-a>"; mode = [ "n" ]; action = ":vsplit . <CR>"; options = { silent = true; noremap = true; desc = "Open file in V-SPLIT"; }; }
    { key = "<S-a>"; mode = [ "n" ]; action = ":split . <CR>"; options = { silent = true; noremap = true; desc = "Open file in SPLIT"; }; }
    { key = "<S-t>"; mode = [ "n" ]; action = ":tabedit . <CR>"; options = { silent = true; noremap = true; desc = "Open file in TAB"; }; }
    { key = "<Tab>"; mode = [ "n" ]; action = ":tabnext <CR>"; options = { silent = true; noremap = true; desc = "Next tab"; }; }
    { key = "<S-Tab>"; mode = [ "n" ]; action = ":tabprevious <CR>"; options = { silent = true; noremap = true; desc = "Previous tab"; }; }
    # (vanilla) misc
    { key = ";m"; mode = [ "n" ]; action = ":noh <CR>"; options = { silent = true; noremap = true; desc = "Remove search highlight"; }; }
    { key = "H"; mode = [ "n" "v" ]; action = "^"; options = { silent = true; noremap = true; desc = "Go to start of line"; }; }
    { key = "L"; mode = [ "n" "v" ]; action = "$"; options = { silent = true; noremap = true; desc = "Go to end of line"; }; }
    { key = "J"; mode = [ "n" ]; action = "mzJ`z"; options = { silent = true; noremap = true; desc = "Join lines without losing cursor"; }; }
    { key = "<C-u>"; mode = [ "n" ]; action = "<C-u>zz"; options = { silent = true; noremap = true; desc = "Scroll up with cursor in center"; }; }
    { key = "<C-d>"; mode = [ "n" ]; action = "<C-d>zz"; options = { silent = true; noremap = true; desc = "Scroll down with cursor in center"; }; }
    { key = "n"; mode = [ "n" ]; action = "nzzzv"; options = { silent = true; noremap = true; desc = "Search next with cursor centered"; }; }
    { key = "N"; mode = [ "n" ]; action = "Nzzzv"; options = { silent = true; noremap = true; desc = "Search previous with cursor centered"; }; }
    # (vanilla) pane movement hotkeys
    { key = "<C-e>h"; mode = [ "n" ]; action = ":wincmd h<CR>"; options = { silent = true; noremap = true; desc = "Navigate left window"; }; }
    { key = "<C-e>j"; mode = [ "n" ]; action = ":wincmd j<CR>"; options = { silent = true; noremap = true; desc = "Navigate down window"; }; }
    { key = "<C-e>k"; mode = [ "n" ]; action = ":wincmd k<CR>"; options = { silent = true; noremap = true; desc = "Navigate up window"; }; }
    { key = "<C-e>l"; mode = [ "n" ]; action = ":wincmd l<CR>"; options = { silent = true; noremap = true; desc = "Navigate right window"; }; }
    { key = "<C-w>h"; mode = [ "n" ]; action = ""; options = { silent = true; noremap = true; }; }
    { key = "<C-w>j"; mode = [ "n" ]; action = ""; options = { silent = true; noremap = true; }; }
    { key = "<C-w>k"; mode = [ "n" ]; action = ""; options = { silent = true; noremap = true; }; }
    { key = "<C-w>l"; mode = [ "n" ]; action = ""; options = { silent = true; noremap = true; }; }

    # (gitsigns)
    { key = "<leader>gs"; action = "<cmd>Gitsigns toggle_signs<CR>"; options = { silent = true; noremap = true; }; }
    { key = "<leader>gp"; action = "<cmd>Gitsigns prev_hunk <CR>"; options = { silent = true; noremap = true; }; }
    { key = "<leader>gn"; action = "<cmd>Gitsigns next_hunk <CR>"; options = { silent = true; noremap = true; }; }
    { key = "<leader>tp"; action = "<cmd>Gitsigns preview_hunk <CR>"; options = { silent = true; noremap = true; }; }
    # (lazygit)
    { key = "<leader>;g"; action = ":LazyGit<CR>"; options = { silent = true; noremap = true; }; }
    # (nvim-tree)
    { key = "<leader>sf"; mode = "n"; action = ":NvimTreeFindFileToggle<CR>"; options = { silent = true; noremap = true; }; }
    # (nvim-gomove)
    { key = "<A-C-H>"; mode = "v"; action = "<Plug>GoVSMLeft"; options = { silent = true; noremap = true; }; }
    { key = "<A-C-J>"; mode = "v"; action = "<Plug>GoVSMDown"; options = { silent = true; noremap = true; }; }
    { key = "<A-C-K>"; mode = "v"; action = "<Plug>GoVSMUp"; options = { silent = true; noremap = true; }; }
    { key = "<A-C-L>"; mode = "v"; action = "<Plug>GoVSMRight"; options = { silent = true; noremap = true; }; }
    # (obsidian)
    { key = "<leader>ogf"; mode = [ "n" ]; action = "<cmd>ObsidianFollowLink<CR>"; options = { silent = true; noremap = true; }; }
  ];
}
