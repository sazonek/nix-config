{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh
    git
    gh
    neovim
    zed-editor
    ghostty
    gnupg
    pinentry-gnome3
    nixd
    package-version-server
    nil

    clang_17
    gdb
    cmake
    qt6.full
    qtcreator
    rustup
    dotnet-sdk_8
    python3

    wget
    curl
    htop
    btop
    ripgrep
    fd
    fastfetch
    eza

    discord
    signal-desktop
    spotify

    openssh
  ];
}
