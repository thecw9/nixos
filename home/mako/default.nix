{
  config,
  lib,
  pkgs,
  ...
}:
let
  config_dotfile = "${config.home.homeDirectory}/nixos/home/mako/config";
in
{
  services.mako.enable = true;
  home.file.".config/mako/config".source = config.lib.file.mkOutOfStoreSymlink config_dotfile;
}
