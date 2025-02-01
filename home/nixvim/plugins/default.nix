{...}:
{
	programs.nixvim = {
		plugins = {
			web-devicons.enable = true;
		};
	};
	imports = [
		./nvim-tree.nix
	];
} 
