{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    userName  = "thecw";
    userEmail = "thecw9@gmail.com";
  };
  programs.git-credential-oauth.enable = true;
}
