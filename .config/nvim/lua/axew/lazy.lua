--Integrating Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

--Lazy Setup
require("lazy").setup({ { import = "axew.plugins" }, { import = "axew.plugins.lsp" } }, {
	install = {
		-- colorscheme = { "oxocarbon" },
	},
	checker = {
		enable = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
