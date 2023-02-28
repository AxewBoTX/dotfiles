--Ensuring Autopairs Is Working
local status,autopairs = pcall(require,"nvim-autopairs")
if (not status) then
	print("Autopairs Is Not Working")
	return
end

--Autopairs Setup
autopairs.setup{
	disable_filetypes = {'TelescopePrompt','vim'}
}
