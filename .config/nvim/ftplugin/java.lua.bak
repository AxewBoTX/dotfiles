--Ensuring JDTLS Is Working
local jdtls_status, jdtls = pcall(require, "jdtls")
if not jdtls_status then
	print("JDTLS Is Not Working")
	return
end

--LSP Saga Keybinds
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

--Capabilities Setup
local capabilities = require("cmp_nvim_lsp").default_capabilities()

--JDTLS Setup
local jdtls_config = {
	cmd = { "jdtls" },
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "gradle.build", "pom.xml" }),
}
jdtls.start_or_attach(jdtls_config)
