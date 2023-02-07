--Ensuring Bufferline Is Installed 
local status,bufferline = pcall(require,"bufferline")
if (not status) then
	print("Bufferline Is Not Working")
	return
end

--Bufferline Setup
bufferline.setup{
	options = {
		mode = 'tabs',
		separator_style = 'padded_slant',
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = {
		--Deafult Seperator 
		separator = {
			fg = '#1a1b26',
			bg = '#16161e'
		},
		--Separators Of The Buffer That Is Selected
		separator_selected = {
			fg = '#1a1b26',
			bg = '#0c0c0c'
		},
		--Main Color Of The Buffer In Background
		background = {
			bg = '#16161e'
		},
		--Main Config Of Selected Buffer
		buffer_selected = {
			bg = '#0c0c0c',
			bold = true,
			italic = false
		},
		--Main Fill Of The Bufferline
		fill = {
			bg = '#1a1b26'
		},
	}
}
