--Ensuring Gitsigns Is Working
local status, gitsigns = pcall(require, "gitsigns")
if not status then
	print("Gitsigns Is Not Working!")
	return
end

--Gitsigns Setup
gitsigns.setup({
	signcolumn = false,
})
