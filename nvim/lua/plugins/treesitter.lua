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
	textobjects = {
		select = {
			enable = true,
			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["aa"] = "@parameter.outer",
				["ia"] = "@parameter.inner",
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
				["ii"] = "@conditional.inner",
				["ai"] = "@conditional.outer",
				["il"] = "@loop.inner",
				["al"] = "@loop.outer",
				["at"] = "@comment.outer",
			},
		},
	},
})
