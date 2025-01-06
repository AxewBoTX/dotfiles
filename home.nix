{ pkgs, flake_inputs, ... }:
let
  username = "axew";
in
{
  home.username = username;
  home.homeDirectory = "/home/${username}";
  news.display = "silent";

  home.packages = with pkgs; [
    zsh
    which
    eza
    fd
    fzf
    starship
    curl
    unzip
    ripgrep
    virtualenv
    openssh
    fontforge
    clang
    gdb
    cmake
    nodejs
    go
    bun
    deno
    live-server
    zig
    jdk
    rustc
    rustfmt
    cargo
    clippy
    cargo-binstall
    sccache
    bacon
    cargo-update
    cargo-info
    tmux
    python312
    python312Packages.pylatexenc
    nerd-font-patcher
    neovim
    lazygit
    tree-sitter
    fastfetch
    cmatrix
    nyancat
  ];

  # zsh
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    shellAliases = {
      ls = "exa -all --icons";
      tmux = "tmux -u";
      open = "explorer.exe";
    };
    initExtra = ''
      	export MESA_GLSL_VERSION_OVERRIDE=330
      	export MESA_GL_VERSION_OVERRIDE=3.3
      	export PODMAN_IGNORE_CGROUPSV1_WARNING=true
      	bindkey '^l' autosuggest-accept
      	bindkey '^K' clear-screen
      	if [ -e /home/axew/.nix-profile/etc/profile.d/nix.sh ]; then . /home/axew/.nix-profile/etc/profile.d/nix.sh; fi
      	'';
  };

  # starship
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
  home.file.".config/starship.toml".source = ./.config/starship/config.toml;

  # tmux
  programs.tmux = {
    enable = true;
    plugins = [
      {
        plugin = flake_inputs.minimal-tmux.packages.x86_64-linux.default;
        extraConfig = ''
          			set -g @minimal-tmux-bg "#c9c7cd"
          			set -g @minimal-tmux-status-right "#(whoami) "
          			set -g @minimal-tmux-justify "left"
          			set -g @minimal-tmux-indicator false
          			'';
      }
    ];
    extraConfig = ''
      	set -g default-terminal "screen-256color"
      	set -g mouse off
      	set -s escape-time 0
      	set -g repeat-time 0

      	set -g mode-style "fg=#eee8d5,bg=#073642"
      	set -g message-style "fg=#eee8d5,bg=#073642"
      	set -g message-command-style "fg=#eee8d5,bg=#073642"
      	set -g pane-border-style "fg=#073642"
      	set -g pane-active-border-style "fg=#eee8d5"
      	set -g status-style "fg=#586e75,bg=#073642"
      	set -g status-bg "#002b36"
      	set -g status-left-length "50"
      	set -g status-right-length "100"
      	set -g status-left-style NONE
      	set -g status-right-style NONE
      	setw -g window-status-activity-style "underscore,fg=#839496,bg=#002b36"
      	setw -g window-status-separator ""

      	# status-bar settings
      	set-option -g status-justify "left"
      	set -g status-interval 1
      	set-option -g status-position bottom
      	set-option -g automatic-rename off
      	set -g prefix C-s
      	unbind C-b
      	bind-key C-s send-prefix

      	# Basic PopUp Window Keybinds
      	bind -r g display-popup 

      	#Horizontal Splitting
      	unbind %
      	bind | split-window -h 

      	#Vertical Splitting
      	unbind '"'
      	bind - split-window -v

      	#Keymap for Reloading Tmux Config
      	unbind r
      	bind r source-file ~/.config/tmux/tmux.conf \; display-message "Config Successfully Reloaded!"

      	#Toggle Maximize Pane
      	bind -r m resize-pane -Z

      	#Enabeling Vim Type Keymapping
      	bind -r C-k resize-pane -U 2
      	bind -r C-j resize-pane -D 2
      	bind -r C-h resize-pane -L 2
      	bind -r C-l resize-pane -R 2

      	bind -r k select-pane -U 
      	bind -r j select-pane -D 
      	bind -r h select-pane -L 
      	bind -r l select-pane -R 
      	unbind Up     
      	unbind Down   
      	unbind Left   
      	unbind Right  
      	unbind C-Up   
      	unbind C-Down 
      	unbind C-Left 
      	unbind C-Right
      	'';
  };

  home.file.".config/alacritty" = {
    source = ./.config/alacritty;
    recursive = true;
  };
  home.file.".config/fastfetch" = {
    source = ./.config/fastfetch;
    recursive = true;
  };
  home.file.".config/hypr" = {
    source = ./.config/hypr;
    recursive = true;
  };
  home.file.".config/i3" = {
    source = ./.config/i3;
    recursive = true;
  };
  home.file.".config/lazygit" = {
    source = ./.config/lazygit;
    recursive = true;
  };
  home.file.".config/mise" = {
    source = ./.config/mise;
    recursive = true;
  };
  home.file.".config/nvim" = {
    source = ./.config/nvim;
    recursive = true;
  };
  home.file.".config/picom" = {
    source = ./.config/picom;
    recursive = true;
  };
  home.file.".config/polybar" = {
    source = ./.config/polybar;
    recursive = true;
  };
  home.file.".config/powershell" = {
    source = ./.config/powershell;
    recursive = true;
  };
  home.file.".config/rofi" = {
    source = ./.config/rofi;
    recursive = true;
  };
  home.file.".config/waybar" = {
    source = ./.config/waybar;
    recursive = true;
  };
  home.file.".gitconfig".source = ./.gitconfig;

  home.stateVersion = "24.11";
}
