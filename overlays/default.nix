# ./overlays/default.nix
{
  config,
  pkgs,
  pkgs-stable,
  lib,
  ...
}:

{
  nixpkgs.overlays = [
    # (self: super: {
    #   google-chrome = super.google-chrome.override {
    #     commandLineArgs = "--ozone-platform-hint=auto";
    #   };
    # })

    # (self: super: {
    #   microsoft-edge = super.microsoft-edge.override {
    #     commandLineArgs = "--ozone-platform-hint=auto";
    #   };
    # })

    (self: super: {
      qq = pkgs-stable.qq;
      clash-verge-rev = pkgs-stable.clash-verge-rev;
      # gimp3 = pkgs-stable.gimp3;
    })
  ];
}
