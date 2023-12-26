return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				go = { "golines", "goimports-reviser" },
				cpp = { "clang-format" },
				javascript = { { "prettier", "prettierd" } },
				typescript = { { "prettier", "prettierd" } },
				javascriptreact = { { "prettier", "prettierd" } },
				typescriptreact = { { "prettier", "prettierd" } },
				svelte = { { "prettier", "prettierd" } },
				css = { { "prettier", "prettierd" } },
				html = { { "prettier", "prettierd" } },
				json = { { "prettier", "prettierd" } },
				yaml = { { "prettier", "prettierd" } },
				markdown = { { "prettier", "prettierd" } },
				graphql = { { "prettier", "prettierd" } },
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
