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
						["<C-[>"] = actions.close,
					},
				},
			},
		})
	end,
	keys = {
		{ ";f", "<cmd>Telescope find_files<CR>" },
		{ ";l", "<cmd>Telescope live_grep<CR>" },
		{ ";b", "<cmd>Telescope buffers<CR>" },
		{ ";h", "<cmd>Telescope help_tags<CR>" },
	},
}
