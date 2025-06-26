{
  config,
  lib,
  pkgs,
  ...
}:
let
  dotfile = "${config.home.homeDirectory}/nixos/home/rclone/rclone.conf";
in
{
  home.file.".config/rclone/rclone.conf".source = config.lib.file.mkOutOfStoreSymlink dotfile;
}
