{ ... }:

{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    matchBlocks."*" = {
      forwardAgent = false;
      addKeysToAgent = "no";
      compression = false;
      serverAliveInterval = 0;
      serverAliveCountMax = 3;
      hashKnownHosts = false;
      userKnownHostsFile = "~/.ssh/known_hosts";
      controlMaster = "no";
      controlPath = "~/.ssh/master-%r@%n:%p";
      controlPersist = "no";
    };
    extraConfig = "
      Host *
        SetEnv TERM=xterm-256color
      Host router
        HostName router.akademiki.umk.pl
        HostKeyAlgorithms rsa-sha2-512,rsa-sha2-256,ecdsa-sha2-nistp256,ssh-ed25519
        Protocol 2
        TCPKeepAlive yes
        User 318148@stud.umk.pl
      Host mikrus
        HostName frog02.mikr.us
        User frog
        Port 11591
      Host lts
        HostName lts.mat.umk.pl
        User stefanskifilip
      Host aleks-2
        HostName aleks-2.mat.umk.pl
        User stefanskifilip
      Host ultra60
        HostName ultra60.mat.umk.pl
        User stefanskifilip
    ";
  };
}
