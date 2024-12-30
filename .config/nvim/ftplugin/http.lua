vim.api.nvim_set_keymap("n", ";kr", ":lua require('kulala').run()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ";k<Tab>", ":lua require('kulala').toggle_view()<CR>", { noremap = true, silent = true })
