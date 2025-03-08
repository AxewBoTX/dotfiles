{
  description = "home-manager configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/d49da4c08359e3c39c4e27c74ac7ac9b70085966";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
	rust-overlay.url = "github:oxalica/rust-overlay";
	nixvim = {
	  url = "github:nix-community/nixvim";
	  inputs.nixpkgs.follows = "nixpkgs";
	};
	mellow-nvim = {
	  url = "github:mellow-theme/mellow.nvim";
	  flake = false;
	};
	helpview-nvim = {
	  url = "github:OXY2DEV/helpview.nvim";
	  flake = false;
	};
	nvim-gomove = {
	  url = "github:booperlv/nvim-gomove";
	  flake = false;
	};
    minimal-tmux = {
      url = "github:niksingh710/minimal-tmux-status";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, home-manager,rust-overlay, flake-utils, ... }@inputs:
		let
			system = "x86_64-linux";
			overlays = [(import rust-overlay)];
			  pkgs = import nixpkgs { inherit system overlays; };
			  username = "axew";
		in
		{
		formatter.${system} = pkgs.nixpkgs-fmt;
		  homeConfigurations = {
			${username} = home-manager.lib.homeManagerConfiguration {
			  inherit pkgs;
			  modules = [./home];
			  extraSpecialArgs = {
				flake_inputs = inputs;
				inherit username;
			  };
			};
		  };
		};
}
