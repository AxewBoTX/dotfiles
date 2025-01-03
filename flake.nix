{
  description = "home-manager configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/d49da4c08359e3c39c4e27c74ac7ac9b70085966";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    minimal-tmux = {
	    url = "github:niksingh710/minimal-tmux-status";
	    inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, home-manager, flake-utils, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      formatter.${system} = pkgs.nixpkgs-fmt;
      homeConfigurations = {
        axew = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
	  extraSpecialArgs = {
	  	flake_inputs = inputs;
	  };
          modules = [ 
	  ./home.nix 
	  ];
        };
      };
    };
}
