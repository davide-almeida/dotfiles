{ config, pkgs, ... }:

{
  home.username = "davide";
  home.homeDirectory = "/home/davide";

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    ruby_3_2
    gnumake
    neovim
  ];

  home.file = {

  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "Davide Almeida";
    userEmail = "davide.jhonatan@gmail.com";
  };
}
