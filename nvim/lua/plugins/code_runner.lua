--Ensuring Code-Runner Is Working
local status, cr = pcall(require, "code_runner")
if not status then
	print("Code-Runner Is Not Working")
	return
end

--Code-Runner Setup
cr.setup({
	filetype = {
		typescript = "tsc $fileName && node $fileNameWithoutExt.js",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
	},
	mode = "float",
	float = {
		close_key = "q",
		border = "single",
		blend = 0,
	},
})
