return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
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

		--Mason-null-ls Setup
		require("mason-null-ls").setup({
			ensure_installed = {
				"prettier",
				"prettierd",
				"stylua",
				"eslint_d",
				"clang-format",
				"pyink",
			},
		})
	end,
}
