--Ensuring OneMonokai Is Working
local status, n = pcall(require, "one_monokai")
if not status then
	print("OneMonokai Is Not Working")
	return
end

--OneMonokai Setup
n.setup({
	transparent = true,
})
