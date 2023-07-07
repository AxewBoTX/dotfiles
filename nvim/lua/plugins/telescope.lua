--Ensuring Telescope Is Working
local status, telescope = pcall(require, "telescope")
if not status then
	print("Telescope Is Not Working")
	return
end

--Telescope Setup
local actions = require("telescope.actions")
telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.close,
			},
		},
	},
})

--Telescope Keymaps
vim.keymap.set("n", ";f", "<cmd>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", ";l", "<cmd>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", ";b", "<cmd>Telescope buffers<CR>", { silent = true })
vim.keymap.set("n", ";h", "<cmd>Telescope help_tags<CR>", { silent = true })
