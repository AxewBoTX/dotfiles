return {
	"akinsho/bufferline.nvim",
	config = function()
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
		--Highlights Config Loader
		local highlights_config = function()
			if vim.g.colors_name == "tokyonight" then
				return tokyonight_config
			elseif vim.g.colors_name == "monokai" then
				return monokai_config
			end
		end

		--Bufferline Setup
		require("bufferline").setup({
			options = {
				mode = "tabs",
				separator_style = "slant",
				always_show_bufferline = false,
				show_buffer_close_icons = false,
				show_close_icon = false,
				color_icons = true,
			},
			highlights = highlights_config,
		})
	end,
}
