return {
	{
		"norcalli/nvim-colorizer.lua",
		opts = {
			"*",
			java = {
				names = false,
			},
			lua = {
				names = false,
			},
			javascript = {
				names = false,
			},
			python = {
				names = false,
			},
			svelte = {
				names = false,
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			disable_filetypes = { "TelescopePrompt", "vim" },
		},
	},
	{
		"VonHeikemen/searchbox.nvim",
		config = true,
		keys = {
			{ "sr", "<cmd>SearchBoxReplace <CR>" },
		},
	},
	{
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
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
}
