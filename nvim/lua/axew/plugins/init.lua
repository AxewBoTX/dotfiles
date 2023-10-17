return {
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
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
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({
				disable_filetypes = { "TelescopePrompt", "vim" },
			})
		end,
	},
	{
		"VonHeikemen/searchbox.nvim",
		config = function()
			require("searchbox").setup({})
			vim.keymap.set("n", ";s", ":SearchBoxIncSearch<CR>", { silent = true })
			vim.keymap.set("n", "sr", ":SearchBoxReplace<CR>", { silent = true })
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signcolumn = false,
			})
		end,
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
