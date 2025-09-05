{ pkgs, ... }:

{
  programs.gpg = {
    enable = true;
  };
  services = {
    gpg-agent = {
      enable = true;
      enableZshIntegration = true;
      pinentry.package = pkgs.pinentry-gnome3;
    };
  };
}
