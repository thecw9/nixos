{
  config,
  lib,
  pkgs,
  ...
}:
let
  dotfile = "${config.home.homeDirectory}/nixos/home/i18n/classicui.conf";
in
{
  home.file.".config/fcitx5/conf/classicui.conf".source = config.lib.file.mkOutOfStoreSymlink dotfile;
}
