return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 8,
			open_mapping = [[<c-\>]],
			persist_size = false,
			persist_mode = false,
		})
		function Set_terminal_keymaps()
			local opts = { buffer = 0, noremap = true, silent = true }
			vim.keymap.set("t", "<C-[>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-e>h", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-e>j", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-e>k", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-e>l", [[<Cmd>wincmd l<CR>]], opts)
		end
		vim.cmd("autocmd! TermOpen term://*toggleterm#* lua Set_terminal_keymaps()")
	end,
}
