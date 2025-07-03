{ config, pkgs, ... }:
{
  imports = [
    ./zsh.nix
    ./dconf.nix
    ./kitty.nix
    ./alacritty.nix
    ./fzf.nix
    ./git.nix
    ./theme.nix
    ./nixvim
    ./i18n
    ./hypr
    ./niri
    ./waybar
    ./wofi
    ./yazi
    ./mako
    ./rclone
    ./zathura
    ./sioyek
    ./zed.nix
    # ./python.nix
  ];
  home.username = "thecw";
  home.homeDirectory = "/home/thecw";

  home.packages = with pkgs; [
    tree
    fastfetch
  ];

  xdg.mimeApps = {
    enable = true; # 打开写入 ~/.config/mimeapps.list
    defaultApplications = {
      "application/pdf" = [
        "org.pwmt.zathura.desktop"
        "sioyek.desktop"
      ];
      "image/jpeg" = [ "imv.desktop" ];
      "image/png" = [ "imv.desktop" ];
      "image/svg+xml" = [ "org.inkscape.Inkscape.desktop" ];
    };
  };

  home.stateVersion = "25.05";
}
