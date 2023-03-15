--Ensuring Colorizer Is Working
local status,colorizer = pcall(require,"colorizer")
if (not status) then
	print("Colorizer Is Not Working!")
	return
end

--Colorizer Setup
colorizer.setup({
	'*',
	java = {
		names = false;
	},
	lua = {
		names = false;
	},
	javascript = {
		names = false,
	},
	python = {
		names = false
	}
})
