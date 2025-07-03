{
  config,
  lib,
  pkgs,
  ...
}:
{
  i18n = {
    inputMethod = {
      enable = true;
      type = "fcitx5";
      fcitx5 = {
        addons = with pkgs; [
          fcitx5-chinese-addons
          fcitx5-rime
          # fcitx5-pinyin-moegirl
          fcitx5-pinyin-zhwiki
          fcitx5-configtool
          fcitx5-gtk
          fcitx5-nord
          fcitx5-material-color
        ];
        waylandFrontend = true;
      };
    };
  };
}
