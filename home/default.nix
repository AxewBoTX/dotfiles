{ pkgs, flake_inputs,username, ... }:
{
  home.username = username;
  home.homeDirectory = "/home/${username}";
  news.display = "silent";

  imports = [
    flake_inputs.nixvim.homeManagerModules.nixvim
    ./programs
  ];

  home.packages = with pkgs; [
    which
    eza
    fd
    fzf
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
	rust-bin.stable."1.82.0".default
    cargo-binstall
    sccache
    bacon
    cargo-update
    cargo-info
    python312
    python312Packages.pylatexenc
    nerd-font-patcher
    tree-sitter
    cmatrix
    nyancat
  ];

  home.stateVersion = "24.11";
}
