return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua", stop_after_first = true },
				python = { "isort", "black", stop_after_first = false },
				go = { "golines", "goimports-reviser", stop_after_first = false },
				cpp = { "clang-format", stop_after_first = true },
				javascript = { "prettier", "prettierd", stop_after_first = true },
				typescript = { "prettier", "prettierd", stop_after_first = true },
				javascriptreact = { "prettier", "prettierd", stop_after_first = true },
				typescriptreact = { "prettier", "prettierd", stop_after_first = true },
				svelte = { "prettier", "prettierd", stop_after_first = true },
				css = { "prettier", "prettierd", stop_after_first = true },
				html = { "prettier", "prettierd", stop_after_first = true },
				json = { "prettier", "prettierd", stop_after_first = true },
				yaml = { "prettier", "prettierd", stop_after_first = true },
				markdown = { "prettier", "prettierd", stop_after_first = true },
				graphql = { "prettier", "prettierd", stop_after_first = true },
				astro = { "prettier", "prettierd", stop_after_first = true },
				rust = { "ast-grep", stop_after_first = true },
				nix = { "nixpkgs-fmt", stop_after_first = true },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
			},
		})
		vim.keymap.set({ "n", "v" }, "for", function()
			conform.format({
				lsp_fallback = true,
				async = false,
			})
		end)
	end,
}
