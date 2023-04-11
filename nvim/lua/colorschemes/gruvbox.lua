--Ensuring Gruvbox Is Working
local status,n = pcall(require,"gruvbox")
if (not status) then
	print("Gruvbox Is Not Working")
	return
end

--Gruvbox Setup
n.setup({
	transparent_mode = false,
})
