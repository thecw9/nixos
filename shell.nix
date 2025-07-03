{
  pkgs ? import <nixpkgs> { },
  ...
}:
pkgs.mkShell {
  packages = with pkgs; [
    python3
  ];

  env.LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    pkgs.stdenv.cc.cc.lib
    pkgs.libz
  ];
}
