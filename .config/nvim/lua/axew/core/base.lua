vim.cmd("autocmd!")
vim.opt.number = true --Numbers On The Side
vim.opt.relativenumber = true --Numbering Relative To Current Line
vim.opt.hidden = true
vim.opt.autoindent = true
-- vim.opt.iskeyword:append("-")
vim.opt.clipboard:append("unnamedplus") --Clipboard Connection For Copy|Paste
vim.opt.backup = false --Turning Off Creation Of Random Backup Files
vim.opt.showcmd = true --Showing CMD Bar
vim.opt.cmdheight = 1 --CMD Bar Height
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ai = true --Auto Indent
vim.opt.si = true --Smart Indent
vim.opt.wrap = false --Disabling Wrap
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.swapfile = false --Disabling Creation Of SwapFiles
vim.opt.updatetime = 300
vim.opt.writebackup = false
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
