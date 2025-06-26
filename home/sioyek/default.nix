{
  config,
  lib,
  pkgs,
  ...
}:
let
  dotfile = "${config.home.homeDirectory}/nixos/home/sioyek/prefs_user.config";
in
{
  home.file.".config/sioyek/prefs_user.config".source = config.lib.file.mkOutOfStoreSymlink dotfile;
}
