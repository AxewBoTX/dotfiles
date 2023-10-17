return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
			filetype = {
				typescript = "tsc $fileName && node $fileNameWithoutExt.js",
				rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
				go = "go run $fileName",
			},
			mode = "float",
			float = {
				close_key = "q",
				border = "rounded",
				blend = 0,
			},
		})
	end,
}
