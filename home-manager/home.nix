{ ... }:

{
  imports = [
    ./zsh.nix
    ./dconf.nix
    ./gpg.nix
    ./ssh.nix
    ./git.nix
  ];

  home.username = "sazonek";
  home.homeDirectory = "/home/sazonek";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when receiving upgrades. It's
  # recommended to leave this unchanged and instead bump it periodically.
  #
  # https://nix-community.github.io/home-manager/options.html#opt-home.stateVersion
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
