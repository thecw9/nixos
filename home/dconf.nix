{
  config,
  lib,
  pkgs,
  ...
}:
{
  dconf.settings = {
    # 窗口管理快捷键
    "org/gnome/desktop/wm/keybindings" = {
      close = [
        "<Alt>F4"
        "<Super>q"
      ];
      switch-to-workspace-left = [
        "<Super>Page_Up"
        "<Super><Alt>Left"
        "<Control><Alt>Left"
        "<Super>a"
      ];
      switch-to-workspace-right = [
        "<Super>Page_Down"
        "<Super><Alt>Right"
        "<Control><Alt>Right"
        "<Super>d"
      ];
      toggle-maximized = [
        "<Alt>F10"
        "<Super>f"
      ];
    };

    # 界面设置
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      text-scaling-factor = 1.2;
      enable-hot-corners = false;
    };

    # 应用切换器、窗口切换器：仅当前工作区
    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };
    "org/gnome/shell/window-switcher" = {
      current-workspace-only = true;
    };
  };
}
