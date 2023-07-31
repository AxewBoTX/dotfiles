--Ensuring VSCode-Theme Is Working
local status, vscode = pcall(require, "vscode")
if not status then
	print("VSCode-Theme Is Not Working")
	return
end

--VSCode-Theme Setup
vscode.setup({})
