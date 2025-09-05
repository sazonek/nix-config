{ ... }:

{
  services.xserver.enable = true;

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  services.xserver.xkb = {
    layout = "pl";
    variant = "";
  };

  services.openssh = {
    enable = true;
    # ports = [ 2222 ];
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };
}
