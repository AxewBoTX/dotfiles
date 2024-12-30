default:
	just -l

shit:
	git add flake.nix flake.lock home.nix
update:
	home-manager switch --flake .#axew

clean:
	nix-collect-garbage -d
