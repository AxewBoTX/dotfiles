--Ensuring Prettier Is Working
local status, prettier = pcall(require, "prettier")
if not status then
	print("Prettier Is Not Working")
	return
end

--Prettier etup
prettier.setup({
	bin = "prettierd",
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
		"svelte",
	},
})
