{
  programs.git = {
    enable = true;
    userName = "Filip Stefański";
    userEmail = "f.stefanski0322@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      github.user = "sazonek";
      pull.rebase = false;
    };

    aliases = {
      s = "status -s";
    };

    signing = {
      key = "3DB420F44B71D00B";
      signByDefault = true;
    };
  };
}
