--Ensuring null-ls Is Working
local status, null_ls = pcall(require, "null-ls")
if not status then
	print("null-ls Is Not Working")
	return
end

--null-ls Setup
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = {
		formatting.prettier,
		formatting.stylua,
		formatting.clang_format,
		formatting.pyink,
		diagnostics.eslint_d,
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
