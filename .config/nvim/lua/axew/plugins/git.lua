return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signcolumn = false,
	},
	keys = {
		{ "gs", "<cmd>Gitsigns toggle_signs <CR>" },
		{ "gp", "<cmd>Gitsigns prev_hunk <CR>" },
		{ "gn", "<cmd>Gitsigns next_hunk <CR>" },
		{ "tp", "<cmd>Gitsigns preview_hunk <CR>" },
	},
}
