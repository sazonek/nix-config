# /etc/nixos/home-manager/gpg.nix
{ pkgs, ... }:

{
  programs.gpg = {
    enable = true;
  };
  services = {
      ## Enable gpg-agent with ssh support
      gpg-agent = {
        enable = true;
        enableZshIntegration = true;
        # pinentry is a collection of simple PIN or passphrase dialogs used for
        # password entry
        pinentry.package = pkgs.pinentry-gnome3;
      };
  };
}
