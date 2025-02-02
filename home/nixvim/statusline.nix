{...}:
{
  programs.nixvim.extraConfigLua = ''
function GetGitBranch() -- git repo status
	local in_git_repo = vim.fn.system("git rev-parse --is-inside-work-tree 2>/dev/null") == "true\n"
	if in_git_repo then
		local branch = vim.fn.systemlist("git branch --show-current")[1]
		return branch ~= nil and " " .. branch or ""
	else
		return ""
	end
end

vim.o.statusline = [[ %t %{v:lua.GetGitBranch()} %m %= [%l,%c] ]] -- Statusline string
'';
}
