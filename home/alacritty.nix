{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.alacritty = {
    enable = true;
    # 自定义配置
    settings = {
      general.live_config_reload = true;
      # env.TERM = "xterm-256color";
      window.opacity = 0.85;
      font = {
        normal = {
          family = "FiraCode Nerd Font";
          style = "Regular";
          size = 12;
        };
        bold = {
          family = "FiraCode Nerd Font";
          style = "Bold";
          size = 12;
        };
        italic = {
          family = "FiraCode Nerd Font";
          style = "Italic";
          size = 12;
        };
        bold_italic = {
          family = "FiraCode Nerd Font";
          style = "Bold Italic";
          size = 12;
        };
        size = 12;
        draw_bold_text_with_bright_colors = true;
      };
      # scrolling.multiplier = 5;
      # selection.save_to_clipboard = true;
    };
  };
}
