--Ensuring Nvim-CMP Is Working
local nvim_cmp_status,nvim_cmp = pcall(require,'cmp')
if (not nvim_cmp_status) then
	print("Nvim-CMP Is Not Working")
	return
end

--Nvim-CMP Setup
vim.opt.completeopt = "menu,menuone,noselect"
nvim_cmp.setup({
	mapping = nvim_cmp.mapping.preset.insert({
		["<C-n>"] = nvim_cmp.mapping.select_prev_item(), -- Previous Suggestion
		["<C-p>"] = nvim_cmp.mapping.select_next_item(), -- Next Suggestion
		["<C-b>"] = nvim_cmp.mapping.scroll_docs(-4), -- Scroll Docs Up
		["<C-f>"] = nvim_cmp.mapping.scroll_docs(4), -- Scroll Docs Down
		["<C-Space>"] = nvim_cmp.mapping.complete(), -- Show Completion Suggestions
		["<C-e>"] = nvim_cmp.mapping.abort(), -- Close Completion Window
		["<Tab>"] = nvim_cmp.mapping.confirm({ select = false }),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
	},
	sources = nvim_cmp.config.sources({
		{name = "nvim_lsp"}, --LSP Source
		{name = "lua_snip"}, --Lua Snippets Engine
		{name = "buffer"}, --Current Buffer Source
		{ame = "path"} --Path Source
	})
})
