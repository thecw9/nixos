{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.kitty = {
    enable = true;
    settings = {
      # 字体
      font_family = "FiraCode Nerd Font Bold";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      font_size = 13;

      # 中文符号映射
      # symbol_map = "U+4E00-U+9FFF Microsoft YaHei";

      # 颜色 & 透明度
      foreground = "#dddddd";
      background = "#111111";
      background_opacity = 0.7;
      background_blur = 0;
    };
  };
}
