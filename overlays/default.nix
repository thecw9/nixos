# ./overlays/default.nix
{
  config,
  pkgs,
  lib,
  ...
}:

{
  nixpkgs.overlays = [
    # overlayer1 - 参数名用 self 与 super，表达继承关系
    (self: super: {
      google-chrome = super.google-chrome.override {
        commandLineArgs = "--ozone-platform-hint=auto";
      };
    })

    (self: super: {
      microsoft-edge = super.microsoft-edge.override {
        commandLineArgs = "--ozone-platform-hint=auto";
      };
    })

  ];
}
