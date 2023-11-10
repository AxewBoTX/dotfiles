return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				formatting.prettier,
				formatting.prettierd.with({
					extra_filetypes = { "svelte" },
				}),
				formatting.stylua,
				formatting.clang_format,
				formatting.isort,
				formatting.pyink,
				diagnostics.eslint_d.with({
					condition = function(utils)
						return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs", ".eslintrc.json" })
					end,
				}),
			},
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									--Only Use null-ls For Formatting Instead Of LSP Servers
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
