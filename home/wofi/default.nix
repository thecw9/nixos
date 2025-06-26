{
  config,
  lib,
  pkgs,
  ...
}:
let
  config_dotfile = "${config.home.homeDirectory}/nixos/home/wofi/config";
  style_dotfile = "${config.home.homeDirectory}/nixos/home/wofi/style.css";
in
{
  programs.wofi.enable = true;
  home.file.".config/wofi/config".source = config.lib.file.mkOutOfStoreSymlink config_dotfile;
  home.file.".config/wofi/style.css".source = config.lib.file.mkOutOfStoreSymlink style_dotfile;
}
