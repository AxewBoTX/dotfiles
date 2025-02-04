{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./zsh.nix
    ./tmux.nix
    ./starship.nix
    ./nixvim
  ];

  programs = {
    git = {
      enable = true;
      package = pkgs.emptyDirectory;
      extraConfig = {
        user = {
          name = "AxewBoTX";
          email = "lovedeepbrar54155@gmail.com";
        };
        init.defaultBranch = "main";
        core.editor = "nvim";
      };
    };
    fastfetch = {
      enable = true;
      settings = {
	  	"$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
        logo.type = "small";
        modules = [ 
		"title" 
		"seprator" 
		"os" 
		"host" 
		"shell" 
		"wm" 
		"terminal" 
		];
      };
    };
    lazygit = {
      enable = true;
      settings = {
        os = {
          edit = "nvim {{filename}}";
          editInTerminal = true;
        };
      };
    };
  };
}
