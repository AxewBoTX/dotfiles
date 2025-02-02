{...}:
{
	programs.nixvim.enable = true;
	imports = [
		./options.nix
		./plugins
		./keymaps.nix
		./statusline.nix
	];
}
