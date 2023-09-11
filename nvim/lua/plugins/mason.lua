--Ensuring Mason Is Working
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("Mason Is Not Working")
	return
end
--Ensuring Mason-LSP Is Working
local mason_lsp_status, mason_lsp = pcall(require, "mason-lspconfig")
if not mason_lsp_status then
	print("Mason-LSP-Config Is Not Working")
	return
end
--Ensuring Mason-null-ls Is Working
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("Mason-null-ls Is Not Working")
	return
end

--Mason Setup
mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
		},
	},
})

--Mason-LSP Setup
mason_lsp.setup({
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
	},
})

--Mason-null-ls Setup
mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"eslint_d",
		"clang-format",
		"pyink",
		"prettierd",
	},
})
