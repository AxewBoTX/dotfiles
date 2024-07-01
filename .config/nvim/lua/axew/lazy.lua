-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- lazy Setup
require("lazy").setup({ { import = "axew.plugins" }, { import = "axew.plugins.lsp" } }, {
	install = {},
	checker = {
		enable = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
