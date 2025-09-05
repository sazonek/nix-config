{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    package = pkgs.firefox;
    profiles.sazonek = {
      isDefault = true;
      settings = {
        "browser.tabs.loadBookmarksInBackground" = true;
        "browser.tabs.loadDivertedInBackground" = true;
      };
      sync = {
        enable = true;
        username = "f.stefanski0322@gmail.com"; # Replace with your Firefox Sync email
      };
    };
  };
}
