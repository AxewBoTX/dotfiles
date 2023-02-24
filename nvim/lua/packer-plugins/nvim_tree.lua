--Ensuring NvimTree Is Working
local status,nvim_tree = pcall(require,"nvim-tree")
if (not status) then
	print("NvimTree Is Not Working")
	return
end

--NvimTree Setup
nvim_tree.setup({
	disable_netrw = true,
	hijack_netrw = false,
	view = {
		mappings = {
			list = {
				{key = "J",action = "first_sibling"},
				{key = "K",action = "last_sibling"},
				{key = "<Tab>",action = "edit"},
			}
		},
	},
	hijack_directories = {
		enable = false,
		auto_open = false,
	},
	diagnostics = {
		enable = true
	},
	git = {
		enable = true,
		ignore = true
	},
	actions = {
		open_file = {
			quit_on_open = true
		}
	}
})
vim.keymap.set("n","sf",":NvimTreeToggle <Return>",{silent = true})
