{ pkgs, ... }:

{
  users.users.sazonek = {
    isNormalUser = true;
    description = "Filip Stefański";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINf8FaqwTEbaOBY74GzhJ211KsY7cn2z5xEh1TkhfNSB sazonek@nixos"
    ];
  };
}
