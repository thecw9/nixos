{
  config,
  lib,
  pkgs,
  ...
}:
let
  dotfile = "${config.home.homeDirectory}/nixos/home/rclone/rclone.conf";
in
{
  home.file.".config/rclone/rclone.conf".source = config.lib.file.mkOutOfStoreSymlink dotfile;

  home.packages = with pkgs; [
    (pkgs.writeScriptBin "mount-nutstore" ''
      #!/bin/sh
      NUTSTORE_DIR=${config.home.homeDirectory}/Nutstore
      if [ ! -d "$NUTSTORE_DIR" ]; then
        mkdir -p "$NUTSTORE_DIR"
        echo "Nutstore directory created"
      else
        echo "Nutstore directory already exists"
      fi
      ${pkgs.rclone}/bin/rclone mount \
        nutstore: "$NUTSTORE_DIR" \
        --vfs-cache-mode full \
        --cache-dir ${config.home.homeDirectory}/.cache/rclone \
        --vfs-cache-max-size 20G \
        --vfs-cache-max-age 240h \
        --daemon
    '')
  ];

}
