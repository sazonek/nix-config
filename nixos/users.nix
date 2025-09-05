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
  };
}
