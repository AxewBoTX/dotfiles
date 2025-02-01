{ pkgs, flake_inputs, ... }:
let
  username = "axew";
in
{
  home.username = username;
  home.homeDirectory = "/home/${username}";
  news.display = "silent";

  imports = [
	./home/starship.nix
	./home/tmux.nix
	./home/zsh.nix
	flake_inputs.nixvim.homeManagerModules.nixvim
	./home/nixvim
  ];

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
    lazygit
    tree-sitter
    fastfetch
    cmatrix
    nyancat
    # xclip
  ];

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
  # home.file.".config/nvim" = {
  #   source = ./.config/nvim;
  #   recursive = true;
  # };
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
