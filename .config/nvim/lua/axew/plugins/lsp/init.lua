return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPost" },
	cmd = { "LspInfo", "LspInstall", "LspUninstall" },
	dependencies = {
		"nvimdev/lspsaga.nvim",
	},
	config = function()
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
			symbol_in_winbar = {
				enable = false,
			},
			lightbulb = {
				enable = false,
			},
			ui = {
				border = "rounded",
				title = false,
			},
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
			keymap.set("n", "gf", "<cmd>Lspsaga finder<CR>", opts) -- show definition, references
			keymap.set("n", "go", "<cmd>Lspsaga outline<CR>", opts) -- show LSP outine of current buffer
			keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
			keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
			keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
			keymap.set("n", ";.", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
		end

		--Capabilities With Nvim-CMP
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local servers = {
			"lua_ls",
			"clangd",
			"cssls",
			"pyright",
			"ts_ls",
			"eslint",
			"html",
			"svelte",
			"rust_analyzer",
			"tailwindcss",
			"prismals",
			"gopls",
			"zls",
			"astro",
			"templ",
			"nil_ls",
		}

		--Servers Setup
		for _, server in pairs(servers) do
			if server == "lua_ls" or server == "rust_analyzer" then
				goto continue
			end
			lsp_config[server].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
			::continue::
		end

		-- rust_analyzer setup
		lsp_config.rust_analyzer.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			settings = {
				["rust-analyzer"] = {
					imports = {
						merge = {
							glob = false,
						},
					},
					lru = {
						capacity = 512,
					},
					files = {
						excludeDirs = { "target", "node_modules" },
					},
				},
			},
		})

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
	end,
}
