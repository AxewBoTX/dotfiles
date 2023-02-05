--Ensuring Code-Runner Is Working 
local status,cr = pcall(require,"code_runner")
if (not status) then
	print("Code-Runner Is Not Working")
end

--Code-Runner Setup
cr.setup{
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
	},
	mode = "float",
	float = {
		close_key = 'q',
		border = 'single',
		blend = 1,
	},
}
