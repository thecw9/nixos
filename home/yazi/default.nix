{
  config,
  lib,
  pkgs,
  ...
}:
let
  init = "${config.home.homeDirectory}/nixos/home/yazi/init.lua";
  yazi = "${config.home.homeDirectory}/nixos/home/yazi/yazi.toml";
  keymap = "${config.home.homeDirectory}/nixos/home/yazi/keymap.toml";
  package = "${config.home.homeDirectory}/nixos/home/yazi/package.toml";
  theme = "${config.home.homeDirectory}/nixos/home/yazi/theme.toml";
  plugins = "${config.home.homeDirectory}/nixos/home/yazi/plugins";
  flavors = "${config.home.homeDirectory}/nixos/home/yazi/flavors";
in
{
  programs.yazi.enable = true;
  home.file.".config/yazi/init.lua".source = config.lib.file.mkOutOfStoreSymlink init;
  home.file.".config/yazi/yazi.toml".source = config.lib.file.mkOutOfStoreSymlink yazi;
  home.file.".config/yazi/keymap.toml".source = config.lib.file.mkOutOfStoreSymlink keymap;
  home.file.".config/yazi/package.toml".source = config.lib.file.mkOutOfStoreSymlink package;
  home.file.".config/yazi/theme.toml".source = config.lib.file.mkOutOfStoreSymlink theme;
  home.file.".config/yazi/plugins".source = config.lib.file.mkOutOfStoreSymlink plugins;
  home.file.".config/yazi/flavors".source = config.lib.file.mkOutOfStoreSymlink flavors;
}
