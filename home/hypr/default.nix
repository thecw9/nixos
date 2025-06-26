{
  config,
  lib,
  pkgs,
  ...
}:
let
  dotfile = "${config.home.homeDirectory}/nixos/home/hypr/hyprland.conf";
in
{
  home.file.".config/hypr/hyprland.conf".source = config.lib.file.mkOutOfStoreSymlink dotfile;
}
