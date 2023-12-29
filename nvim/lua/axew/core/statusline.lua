-- Custom Statusline
--
function GetGitBranch()
	local branch = vim.fn.systemlist("git branch --show-current")[1]
	return branch ~= nil and " " .. branch or ""
end

vim.o.statusline = [[ %t %{v:lua.GetGitBranch()} %m %= [%l,%c] ]] --Statusline string
