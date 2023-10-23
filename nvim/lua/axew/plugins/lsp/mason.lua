return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		--Mason Setup
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
				},
			},
		})

		--Mason-LSP Setup
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"clangd",
				"cssls",
				"jsonls",
				"pyright",
				"tsserver",
				"eslint",
				"html",
				"svelte",
				"rust_analyzer",
				"tailwindcss",
				"prismals",
				"gopls",
			},
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"prettierd",
				"stylua",
				"isort",
				"black",
				"eslint_d",
				"pylint",
			},
		})
	end,
}
