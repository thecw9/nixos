{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.nixvim.plugins = {

    telescope.enable = true; # fuzzy finder

  };
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<Leader>ff";
      action = ":Telescope fd<CR>";
    }
    {
      mode = "n";
      key = "<Leader>fd";
      action = ":Telescope diagnostics<CR>";
    }
    {
      mode = "n";
      key = "<Leader>fb";
      action = ":Telescope buffers<CR>";
    }
    {
      mode = "n";
      key = "<Leader>fr";
      action = ":Telescope registers<CR>";
    }
  ];
}
