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
			go = {
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
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{ "sudormrfbin/cheatsheet.nvim", keys = {
		{ "cs", "<cmd>Cheatsheet <CR>" },
	} },
}
