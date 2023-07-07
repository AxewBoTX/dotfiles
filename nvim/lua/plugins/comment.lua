--Ensuring Comment.nvim Is Installed
local status, comment = pcall(require, "Comment")
if not status then
	print("Comment.nvim Is Not Installed")
	return
end

--Comment Setup
comment.setup()
