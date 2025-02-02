{lib,pkgs,flake_inputs,...}:
{
	programs.nixvim = {
		plugins = {
			web-devicons.enable = true;
			colorizer.enable = true;
			nvim-autopairs.enable = true;
			# colorbuddy.enable = true;
			# plenary.enable = true;
			nui.enable = true;
			# popup.enable = true;
			dressing.enable = true;
		};
		colorscheme = "mellow";
		extraPlugins = [
			(pkgs.vimUtils.buildVimPlugin{
				name = "mellow";
				src = flake_inputs.mellow-nvim;
			})
		];
	};
	imports = [
		./nvim-tree.nix
	];
} 
