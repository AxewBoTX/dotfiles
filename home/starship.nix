{lib,...}:
{
programs.starship = {
	enable = true;
	enableZshIntegration = true;
	settings = {
		add_newline = false;
		format = ''[┌ ](fg:color_text)$username[@](fg:color_red)$hostname$directory$git_branch$git_status$linebreak
[└─](fg:color_text)$character'';
		#format = lib.concatStrings [
			#"[┌ ](fg:color_text)"
			#"$username"
			#"[@](fg:color_red)"
			#"$hostname"
			#"$directory"
			#"$git_branch"
			#"$git_status"
			#"$linebreak"
			#"[└─](fg:color_text)$character"
		#];
		palette = "catppuccin";
		username = {
			show_always = true;
			style_user = "fg:color_text";
			style_root = "fg:color_text";
			format = "[$user]($style)";
		};
		hostname = {
			ssh_only = false;
			style = "fg:color_text";
			format = "[$hostname]($style)";
			disabled = false;
		};

		directory = {
			style = "fg:color_sapphire";
			format = "[ $path ]($style)";
			truncation_length = 1;
		};

		git_branch = {
			symbol = "";
			style = "";
			format = "[[$symbol $branch ](fg:color_green)]($style)";
		};

		git_status = {
			style = "";
			format = "[[(\($all_status$ahead_behind \))](fg:color_yellow)]($style)";
		};

		line_break = { disabled = false; };
		character = {
			disabled = false;
			success_symbol = "[](bold fg:color_green)";
			error_symbol = "[](bold fg:color_red)";
			vimcmd_symbol = "[](bold fg:color_green)";
			vimcmd_replace_one_symbol = "[](bold fg:mauve)";
			vimcmd_replace_symbol = "[](bold fg:mauve)";
			vimcmd_visual_symbol = "[](bold fg:color_yellow)";
		};

		palettes.catppuccin = {
			color_rosewater = "#f5e0dc";
			color_flamingo = "#f2cdcd";
			color_pink = "#f5c2e7";
			color_mauve = "#cba6f7";
			color_red = "#f38ba8";
			color_maroon = "#eba0ac";
			color_peach = "#fab387";
			color_yellow = "#f9e2af";
			color_green = "#a6e3a1";
			color_teal = "#94e2d5";
			color_sky = "#89dceb";
			color_sapphire = "#74c7ec";
			color_blue = "#89b4fa";
			color_lavender = "#b4befe";
			color_text = "#cdd6f4";
			color_subtext0 = "#a6adc8";
			color_subtext1 = "#bac2de";
			color_overlay2 = "#9399b2";
			color_overlay1 = "#7f849c";
			color_overlay0 = "#6c7086";
			color_surface2 = "#585b70";
			color_surface1 = "#45475a";
			color_surface0 = "#313244";
			color_base = "#1e1e2e";
			color_mantle = "#181825";
			color_crust = "#11111b";
			color_white = "#ffffff";
		};
	};
};
}
