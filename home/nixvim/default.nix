{...}:
{
	programs.nixvim.enable = true;
	imports = [
		./options.nix
		./plugins
	];
}
