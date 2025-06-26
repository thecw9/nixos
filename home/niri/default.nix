{
  config,
  lib,
  pkgs,
  ...
}:
let
  dotfile = "${config.home.homeDirectory}/nixos/home/niri/config.kdl";
in
{
  home.file.".config/niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink dotfile;
}
