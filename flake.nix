{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      user = "sazonek";

      homeManagerModule = {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.users.${user} = import ./home-manager/home.nix;
        home-manager.extraSpecialArgs = { inherit inputs self; };
      };

      commonModules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        homeManagerModule
      ];
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs self; };
        modules = commonModules ++ [ ./nixos/hosts/nixos/default.nix ];
      };

      nixosConfigurations.probook = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs self; };
        modules = commonModules ++ [ ./nixos/hosts/probook/default.nix ];
      };
    };
}
