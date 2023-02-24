--Ensuring Telescope Is Working
local status,telescope = pcall(require,'telescope')
if (not status) then
	print("Telescope Is Not Working")
	return
end

--Telescope Setup
local builtin = require("telescope.builtin")

telescope.setup{}

--Telescope Keymaps
vim.keymap.set('n', ';f',
  function()
    builtin.find_files()
end)
