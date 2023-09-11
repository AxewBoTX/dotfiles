--Ensuring Treesitter Is Working
local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	print("Treesitter Is Not Working")
end

--Treesitter Setup
ts.setup({
	ensure_installed = {
		"lua",
		"c",
		"vim",
		"html",
		"svelte",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"python",
		"java",
		"markdown",
		"markdown_inline",
		"gdscript",
		"cpp",
		"rust",
	},
	highlight = {
		enable = true,
	},
})
