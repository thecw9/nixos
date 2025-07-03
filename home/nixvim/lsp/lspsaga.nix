{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.nixvim = {
    plugins = {
      lspsaga = {
        enable = true;
        lightbulb.virtualText = true;
        lightbulb.sign = false;
      };
    };
  };
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "gd";
      action = ":Lspsaga goto_definition<CR>";
    }
    {
      mode = "n";
      key = "gT";
      action = ":Lspsaga goto_type_definition<CR>";
    }
    {
      mode = "n";
      key = "K";
      action = ":Lspsaga hover_doc<CR>";
    }
    {
      mode = "n";
      key = "<Leader>lo";
      action = ":Lspsaga outline<CR>";
    }
    {
      mode = "n";
      key = "<leader>cr";
      action = ":Lspsaga rename<CR>";
    }
    {
      mode = "n";
      key = "<Leader>ca";
      action = ":Lspsaga code_action<CR>";
    }
    {
      mode = "n";
      key = "<Leader>lf";
      action = ":Lspsaga finder<CR>";
    }
    {
      mode = "n";
      key = "<Leader>cd";
      action = ":Lspsaga show_line_diagnostics<CR>";
    }
  ];
}
