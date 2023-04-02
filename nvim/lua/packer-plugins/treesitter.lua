--Ensuring Treesitter Is Working 
local status,ts = pcall(require,'nvim-treesitter.configs')
if (not status) then
	print("Treesitter Is Not Working")
end

--Treesitter Setup
ts.setup{
	ensure_installed = {
		"lua","help","c","vim","html",
		"css","javascript","python",
		"java","markdown","markdown_inline","gdscript"
	},
	highlight = {
		enable = true
	}
}
