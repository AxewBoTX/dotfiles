return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		-- Set filetype to templ when entering .templ file
		vim.cmd([[
			augroup _templ 
			autocmd!
			autocmd BufRead,BufEnter *.templ set filetype=templ
			augroup end
		]])
		require("nvim-treesitter.configs").setup({
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
				"zig",
				"prisma",
				"go",
				"yaml",
				"sql",
				"astro",
				"templ",
				"toml",
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
	end,
}
