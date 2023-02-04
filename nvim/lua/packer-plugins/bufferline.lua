--Ensuring Bufferline Is Installed 
local status,bufferline = pcall(require,"bufferline")
if (not status) then
	print("Bufferline Is Not Working")
	return
end

--Bufferline Setup

--Tokyonight Setup
local tokyonight_config = {
	separator = {
		fg = '#1a1b26',
		bg = '#16161e'
	},
	separator_selected = {
		fg = '#1a1b26',
		bg = '#0c0c0c'
	},
	background = {
		bg = '#16161e'
	},
	buffer_selected = {
		bg = '#0c0c0c',
		bold = true,
		italic = false
	},
	fill = {
		bg = '#1a1b26'
	},
}

bufferline.setup{
	options = {
		mode = 'tabs',
		separator_style = 'padded_slant',
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = tokyonight_config
}
