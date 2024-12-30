return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
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
				"http",
				"json",
				"hyprlang",
				"latex",
				"nix",
				"just",
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

		-- custom parser configurations
		vim.treesitter.language.register("markdown", "mdx")
	end,
}
