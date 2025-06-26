{ config, pkgs, ... }:
{
  imports = [
    ./zsh.nix
    ./dconf.nix
    ./kitty.nix
    ./alacritty.nix
    ./fzf.nix
    ./git.nix
    ./theme.nix
    ./nixvim.nix
    ./hypr
    ./niri
    ./waybar
    ./wofi
    ./yazi
    ./mako
    ./rclone
    ./zathura
    ./sioyek
    ./zed.nix
  ];
  home.username = "thecw";
  home.homeDirectory = "/home/thecw";

  home.packages = with pkgs; [
    tree
    (pkgs.writeScriptBin "mount-nutstore" ''
      #!/bin/sh
      if [ ! -d ${config.home.homeDirectory}/Nutstore ]; then
        mkdir ${config.home.homeDirectory}/Nutstore
      fi
      ${pkgs.rclone}/bin/rclone mount \
        nutstore: ${config.home.homeDirectory}/Nutstore \
        --vfs-cache-mode full \
        --cache-dir ${config.home.homeDirectory}/.cache/rclone \
        --vfs-cache-max-size 20G \
        --vfs-cache-max-age 240h \
        --daemon
    '')
  ];
  

  home.stateVersion = "25.05";
}
