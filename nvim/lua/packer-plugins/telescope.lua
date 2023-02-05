--Ensuring Telescope Is Working
local status,telescope = pcall(require,'telescope')
if (not status) then
	print("Telescope Is Not Working")
	return
end

--Telescope Setup
local builtin = require("telescope.builtin")

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup{
	extensions = {
		file_browser = {
			theme = 'dropdown',
			hijack_netrw = true,
			previewer = false,
			mappings = {
				["i"] = { --Insert Mode
					["<C-n>"] = fb_actions.create, --Creating New Files
				},
				["n"] = { --Normal Mode
					["<C-n>"] = fb_actions.create, --Creating New Files
				}
			}
		}
	}
}
--Loading File-Browser Extension
telescope.load_extension("file_browser")

--Telescope Keymaps
vim.keymap.set('n', ';f',
  function()
    builtin.find_files()
  end)
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
  })
end)
