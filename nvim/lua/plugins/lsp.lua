--Ensuring LSP-Config Is Working
local lsp_config_status, lsp_config = pcall(require, "lspconfig")
if not lsp_config_status then
	print("LSP-Config Is Not Working")
	return
end
--Ensuring LSP-Saga Is Working
local lsp_saga_status, lsp_saga = pcall(require, "lspsaga")
if not lsp_saga_status then
	print("LSP Saga Is Not Working")
	return
end

--LSP Saga Setup
lsp_saga.setup({
	diagnostic_header_icon = " ",
	finder_definition_icon = " ",
	finder_reference_icon = " ",
	finder_action_keys = {
		open = "<CR>",
		vsplit = "v",
		split = "s",
	},
	border_style = "round",
})
--Disabeling The Sign Column In Diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	signs = false,
})

--LSP-Config Setup
-- Keybinds For LSP Servere
local on_attach = function(client, bufnr)
	local keymap = vim.keymap
	-- keybind Options
	local opts = { noremap = true, silent = true, buffer = bufnr }
	-- Keybinds
	keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
	keymap.set("n", "gd", "<cmd>Lspsaga preview_definition<CR>", opts) -- see definition and make edits in window
	keymap.set("n", ";D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", ";d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", ";.", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
end

--Capabilities With Nvim-CMP
local capabilities = require("cmp_nvim_lsp").default_capabilities()

--Lua Setup
lsp_config.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
--C/C++ Setup
lsp_config.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--CSS Setup
lsp_config.cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--JSON Setup
lsp_config.jsonls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--Python Setup
lsp_config.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--Javascript/Typescript Setup
lsp_config.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--ESLINT Setup
lsp_config.eslint.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--HTML Setup
lsp_config.html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--RUST Setup
lsp_config.rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
--Svelte Setup
lsp_config.svelte.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
