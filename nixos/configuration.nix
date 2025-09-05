{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system.nix
    ./services.nix
    ./packages.nix
    ./users.nix
  ];
}
