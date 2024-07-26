return {
	"MeanderingProgrammer/markdown.nvim",
	name = "render-markdown",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("render-markdown").setup({
			pipe_table = {
				enabled = false,
			},
			latex = {
				enabled = false,
			},
		})
	end,
}
