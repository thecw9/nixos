{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.nixvim = {
    plugins = {
      lsp-format = {
        enable = true;
      };
    };
  };
}
