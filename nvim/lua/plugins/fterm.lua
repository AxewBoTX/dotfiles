--Ensuring FTerm Is Installed
local status, fterm = pcall(require, "FTerm")
if not status then
	print("FTerm Is Not Installed")
	return
end

-- FTerm Setup
fterm.setup({})

--Keymaps
vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
