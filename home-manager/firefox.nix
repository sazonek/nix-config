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
    };
  };
}
