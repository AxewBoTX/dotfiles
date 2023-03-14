--Ensuring Code-Runner Is Working 
local status,cr = pcall(require,"code_runner")
if (not status) then
	print("Code-Runner Is Not Working")
end

--Code-Runner Setup
cr.setup{
	filetype = {
		typescript = "tsc $fileName && node $fileNameWithoutExt.js"
	},
	mode = "float",
	float = {
		close_key = 'q',
		border = 'single',
		blend = 0,
	},
}
