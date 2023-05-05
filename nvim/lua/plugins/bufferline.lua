--Ensuring Bufferline Is Installed
local status, bufferline = pcall(require, "bufferline")
if not status then
	print("Bufferline Is Not Working")
	return
end

--Tokyonight Color Config
local tokyonight_config = {
	separator = { --Deafult Seperator
		fg = "#1a1b26",
		bg = "#16161e",
	},
	separator_selected = { --Separators Of The Buffer That Is Selected
		fg = "#1a1b26",
		bg = "#0c0c0c",
	},
	background = { --Main Color Of The Buffer In Background
		bg = "#16161e",
	},
	buffer_selected = { --Main Config Of Selected Buffer
		bg = "#0c0c0c",
		bold = true,
		italic = false,
	},
	fill = { --Main Fill Of The Bufferline
		bg = "#1a1b26",
	},
}
--Monokai Color Config
local monokai_config = {
	buffer_selected = {
		bold = true,
		italic = false,
	},
}
--Gruvbox Color Config
local gruvbox_config = {
	separator = {
		fg = "NONE",
		bg = "NONE",
	},
	separator_selected = {
		fg = "NONE",
		bg = "NONE",
	},
	background = {
		bg = "NONE",
	},
	buffer_selected = {
		bg = "NONE",
		bold = true,
		italic = false,
	},
	fill = {
		bg = "NONE",
	},
}

--Highlights Config Loader
local highlights_config = function()
	if vim.g.colors_name == "tokyonight" then
		return tokyonight_config
	elseif vim.g.colors_name == "monokai" then
		return monokai_config
	elseif vim.g.colors_name == "gruvbox" then
		return gruvbox_config
	end
end

--Bufferline Setup
bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = "thin",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = highlights_config,
})
