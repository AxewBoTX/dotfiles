{ config, pkgs, ... }:
let unstable  = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
	imports =
		[
			/etc/nixos/hardware-configuration.nix
    		];

	# boot settings
  	boot.loader.grub.enable = true;
  	boot.loader.grub.device = "/dev/sda";

	# networking setup
  	networking.hostName = "Trash-Box"; 
  	networking.networkmanager.enable = true;
  	networking.firewall.enable = true;

	# locale settings
  	time.timeZone = "Asia/Kolkata";
  	i18n.defaultLocale = "en_IN";
  	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_IN";
		LC_IDENTIFICATION = "en_IN";
		LC_MEASUREMENT = "en_IN";
		LC_MONETARY = "en_IN";
		LC_NAME = "en_IN";
		LC_NUMERIC = "en_IN";
		LC_PAPER = "en_IN";
		LC_TELEPHONE = "en_IN";
		LC_TIME = "en_IN";
	};

	# security setup
	security = {
		rtkit.enable = true;
		polkit.enable = true;
  	};

	# xserver
	services.xserver = {
		xkb.layout = "us";
		xkb.variant = "";
  	};

	# sound settings
	sound.enable = true;
  	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
		jack.enable = true;
  	};

	# programs
  	programs = {
  		zsh = {
			enable = true;
			autosuggestions.enable = true;
			ohMyZsh.enable = true;
		};
		hyprland = {
			enable = true;
			xwayland.enable = true;
		};
  	};

	# xdg setup
	xdg.portal.enable = true;
	xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

	# hardware configuration
	hardware = {
		opengl.enable = true;
	};
	
	# environment variables
	environment.sessionVariables = {
		WLR_NO_HARDWARE_CUSRORS = "1";
		NIXOS_OZONE_WL = "1";
	};

	# user setup
  	users.defaultUserShell=pkgs.zsh;
  	users.users.axew = {
    		isNormalUser = true;
    		description = "AxewBoTX";
    		extraGroups = [ "networkmanager" "wheel" ];
    		packages = with pkgs; [
			(hyprland.override {
				enableXWayland = true;
				legacyRenderer = true;
			})
			dunst
			wl-clipboard
			hyprcursor
			waybar
			rofi-wayland
			alacritty
			wlsunset
			hyprpaper
			inotify-tools
			fastfetch
			cmatrix
			nyancat
			brave
    		];
  	};

	# system packages
  	environment.systemPackages = with pkgs; [
		git
		vim
		eza
		fd
		fzf
		stow
		starship
		curl
		unzip
		ripgrep
		virtualenv
		fontforge
		# developemnt tools
		python3
		ninja
		meson
		gcc
		clang
		gdb
		cmake
		rustc
		cargo
		cargo-info
		cargo-update
		nodejs_20
		nodePackages.live-server
		nodePackages.yarn
		tree-sitter
		go
		bun
		jdk22 # java
		zig
		deno
		# workflow tools
		tmux
		unstable.neovim
		lazygit
		python312Packages.pylatexenc
  	];

  	system.stateVersion = "24.05";
}
