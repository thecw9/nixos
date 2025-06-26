{
  config,
  lib,
  pkgs,
  ...
}:
let
  dotfile = "${config.home.homeDirectory}/nixos/home/zathura/zathurarc";
in
{
  home.file.".config/zathura/zathurarc".source = config.lib.file.mkOutOfStoreSymlink dotfile;
}
