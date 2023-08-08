local keymap = vim.keymap
keymap.set("n", "<C-o>", ":edit . <Return>", { silent = true }) --Opening Files
keymap.set("n", "<C-a>", ":vsplit . <Return>", { silent = true }) --Opening Files in VSPLIT
keymap.set("n", "<S-a>", ":split . <Return>", { silent = true }) --Opening Files in SPLIT
keymap.set("n", "<S-t>", ":tabedit . <Return>", { silent = true }) --Opening Files in TABS
keymap.set("n", "<Tab>", ":tabnext <Return>", { silent = true }) --Switching To Next TAB
keymap.set("n", "<S-Tab>", ":tabprevious <Return>", { silent = true }) --Switching To Previous TAB
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true }) --Moving Selecting Stuff Up
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true }) --Moving Selecting Stuff Down
keymap.set("n", ";m", ":noh <Return>", { silent = true }) --Getting Rid Of Search Highlighting
keymap.set("n", ";q", ":RunCode <Return>", { silent = true }) --Running Code With Code-Runner
keymap.set({ "n", "v" }, "H", "^") --Going To Start Of The Line
keymap.set({ "n", "v" }, "L", "$") --Going To End Of The Line
keymap.set("n", "gs", ":Gitsigns toggle_signs <Return>", { silent = true }) --Toggeling Git Signs In Sign Column
keymap.set({ "n", "v" }, "cs", ":Cheatsheet <Return>", { silent = true })
keymap.set("n", "J", "mzJ`z", { silent = true }) --Keeping Your Cursom In Place While Appending Lines To The Current Line From Line Below
--Keeping Cursom In The Middle While Going Up And Down
keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
--Keeping Search Terms In The Middle While Searching
keymap.set("n", "n", "nzzzv", { silent = true })
keymap.set("n", "N", "Nzzzv", { silent = true })
