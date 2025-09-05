{ config, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "eza -g --icons";
      ll = "eza -l -g --icons";
      la = "eza -la -g --icons";
      nfu = "sudo nix flake update ~/.Dotfiles";
      nrs = "sudo nixos-rebuild switch --flake ~/.Dotfiles";
      zed = "zeditor";
      aka = "( gpg -d -q ~/.ssh/.ssh_password.gpg | sshpass ssh -tt router ) > /dev/null 2>&1 & disown";
    };

    history = {
      size = 10000;
      path = "${config.home.homeDirectory}/.zsh_history";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
      ];
      theme = "af-magic";
    };
  };
}
