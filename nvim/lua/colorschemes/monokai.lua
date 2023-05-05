--Ensuring Monokai Is Working
local status, monokai = pcall(require, "monokai")
if not status then
	print("Monokai Is Not Working")
	return
end

--Monokai Setup
monokai.setup({})
