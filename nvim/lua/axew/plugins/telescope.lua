return {
	"nvim-telescope/telescope.nvim",
	config = function()
		--Telescope Setup
		local actions = require("telescope.actions")
		require("telescope").setup({
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

		--Telescope Keybinds
		vim.keymap.set("n", ";f", "<cmd>Telescope find_files<CR>", { silent = true })
		vim.keymap.set("n", ";l", "<cmd>Telescope live_grep<CR>", { silent = true })
		vim.keymap.set("n", ";b", "<cmd>Telescope buffers<CR>", { silent = true })
		vim.keymap.set("n", ";h", "<cmd>Telescope help_tags<CR>", { silent = true })
	end,
}
