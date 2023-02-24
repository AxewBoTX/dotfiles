--Ensuring NvimTree Is Working
local status,nvim_tree = pcall(require,"nvim-tree")
if (not status) then
	print("NvimTree Is Not Working")
	return
end

--NvimTree Setup
nvim_tree.setup({
	disable_netrw = true,
	hijack_netrw = true,
	view = {
		mappings = {
			list = {
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
vim.keymap.set("n","sf",":NvimTreeFindFileToggle <Return>",{silent = true})
