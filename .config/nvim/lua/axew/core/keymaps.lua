local keymap = vim.keymap
keymap.set("n", "<C-o>", ":edit . <Return>", { silent = true }) -- opening files
keymap.set("n", "<C-a>", ":vsplit . <Return>", { silent = true }) -- opening files in V-SPLIT
keymap.set("n", "<S-a>", ":split . <Return>", { silent = true }) -- opening files in SPLIT
keymap.set("n", "<S-t>", ":tabedit . <Return>", { silent = true }) -- opening files in tabs
keymap.set("n", "<Tab>", ":tabnext <Return>", { silent = true }) -- switching to next tab
keymap.set("n", "<S-Tab>", ":tabprevious <Return>", { silent = true }) -- switching to previous tab
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true }) -- moving selecting stuff up
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true }) -- moving selecting stuff down
keymap.set("n", ";m", ":noh <Return>", { silent = true }) -- getting rid of search highlighting
keymap.set({ "n", "v" }, "H", "^") -- going to start of the line
keymap.set({ "n", "v" }, "L", "$") -- going to end of the line
keymap.set("n", "J", "mzJ`z", { silent = true }) -- keeping your cursom in place while appending lines to the current line from line below
-- keeping cursom in the middle while going up and down
keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
-- keeping search terms in the middle while searching
keymap.set("n", "n", "nzzzv", { silent = true })
keymap.set("n", "N", "Nzzzv", { silent = true })
-- window navigation keymaps
keymap.set("n", "<C-e>h", ":wincmd h<CR>", { silent = true, noremap = true })
keymap.set("n", "<C-e>j", ":wincmd j<CR>", { silent = true, noremap = true })
keymap.set("n", "<C-e>k", ":wincmd k<CR>", { silent = true, noremap = true })
keymap.set("n", "<C-e>l", ":wincmd l<CR>", { silent = true, noremap = true })
-- replace default window navigation keymaps to do nothing
keymap.set("n", "<C-w>h", "", { silent = true, noremap = true })
keymap.set("n", "<C-w>j", "", { silent = true, noremap = true })
keymap.set("n", "<C-w>k", "", { silent = true, noremap = true })
keymap.set("n", "<C-w>l", "", { silent = true, noremap = true })
