{ self, ... }:

{
  dconf.enable = true;

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      accent-color = "red";
    };

    "org/gnome/desktop/background" = {
      picture-uri = "file://${self}/wallpaper.jpg";
      picture-uri-dark = "file://${self}/wallpaper.jpg";
    };

    "/org/gnome/desktop/wm/preferences" = {
      resize-with-right-button = true;
    };
  };
}
