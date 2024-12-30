return {
	"mistweaverco/kulala.nvim",
	ft = "http",
	config = function()
		require("kulala").setup({
			default_view = "body",
			default_env = "dev",
			debug = true,
		})
	end,
}
