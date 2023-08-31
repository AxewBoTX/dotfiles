--Ensuring Nvim-CMP Is Working
local nvim_cmp_status, nvim_cmp = pcall(require, "cmp")
if not nvim_cmp_status then
	print("Nvim-CMP Is Not Working")
	return
end
--Ensuring LspKind Is Working
local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
	print("CMP-Kind Is Not Working")
	return
end

--LspKind Setup
lspkind.init({
	mode = "symbol_text",
	preset = "codicons",
	symbol_map = {
		Text = "",
		Method = "",
		Function = "",
		Constructor = "",
		Field = "ﰠ",
		Variable = "",
		Class = "ﴯ",
		Interface = "",
		Module = "",
		Property = "ﰠ",
		Unit = "塞",
		Value = "",
		Enum = "",
		Keyword = "",
		Snippet = "",
		Color = "",
		File = "",
		Reference = "",
		Folder = "",
		EnumMember = "",
		Constant = "",
		Struct = "פּ",
		Event = "",
		Operator = "",
		TypeParameter = "",
	},
})

--Nvim-CMP Setup
vim.opt.completeopt = "menu,menuone,noselect"
nvim_cmp.setup({
	completion = {
		autocomplete = false,
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = nvim_cmp.mapping.preset.insert({
		["<C-n>"] = nvim_cmp.mapping.select_prev_item(), -- Previous Suggestion
		["<C-p>"] = nvim_cmp.mapping.select_next_item(), -- Next Suggestion
		["<C-b>"] = nvim_cmp.mapping.scroll_docs(-4), -- Scroll Docs Up
		["<C-f>"] = nvim_cmp.mapping.scroll_docs(4), -- Scroll Docs Down
		["<C-Space>"] = nvim_cmp.mapping.complete(), -- Show Completion Suggestions
		["<C-e>"] = nvim_cmp.mapping.abort(), -- Close Completion Window
		["<Tab>"] = nvim_cmp.mapping.confirm({
			behavior = nvim_cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	}),
	sources = nvim_cmp.config.sources({
		{ name = "nvim_lsp" }, --LSP Source
		{ name = "luasnip" }, --Lua Snippet Engine
		{ name = "buffer" }, --Current Buffer Source
		{ name = "path" }, --Path Source
	}),
	formatting = {
		format = lspkind.cmp_format({
			wirth_text = false,
			maxWidht = 50,
		}),
	},
})
