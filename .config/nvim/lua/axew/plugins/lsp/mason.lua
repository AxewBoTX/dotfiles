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
				"ts_ls",
				"eslint",
				"html",
				"htmx",
				"svelte",
				"rust_analyzer",
				"tailwindcss",
				"prismals",
				"gopls",
				"zls",
				"astro",
				"templ",
				"yamlls",
			},
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettierd",
				"prettier",
				"stylua",
				"black",
				"pylint",
				"eslint_d",
				"isort",
				"golines",
				"goimports-reviser",
				"clang-format",
			},
		})
	end,
}
