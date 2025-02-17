{ pkgs, flake_inputs, ... }:
let
  username = "axew";
in
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
    rustc
    rustfmt
    cargo
    clippy
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
    # xclip
  ];

  home.stateVersion = "24.11";
}
