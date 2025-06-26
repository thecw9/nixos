{
  config,
  lib,
  pkgs,
  ...
}:
let
  config_dotfile = "${config.home.homeDirectory}/nixos/home/waybar/config.json";
  style_dotfile = "${config.home.homeDirectory}/nixos/home/waybar/style.css";
  start_script = "${config.home.homeDirectory}/nixos/home/waybar/start_waybar.sh";
in
{
  programs.waybar.enable = true;
  home.file.".config/waybar/config.json".source = config.lib.file.mkOutOfStoreSymlink config_dotfile;
  home.file.".config/waybar/style.css".source = config.lib.file.mkOutOfStoreSymlink style_dotfile;
  home.file.".config/waybar/start_waybar.sh".source = config.lib.file.mkOutOfStoreSymlink start_script;
}
