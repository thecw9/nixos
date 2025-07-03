{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.nixvim.plugins.persistence.enable = true; # automated session management.

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>qs";
      action = '':lua require("persistence").load()<cr>'';
      options.desc = "Restore session";
    }
    {
      mode = "n";
      key = "<leader>qS";
      action = '':lua require("persistence").select()<cr>'';
      options.desc = "Select session";
    }
    {
      mode = "n";
      key = "<leader>ql";
      action = '':lua require("persistence").load({ last = true })<cr>'';
      options.desc = "Restore last session";
    }
    {
      mode = "n";
      key = "<leader>qd";
      action = '':lua require("persistence").stop()<CR>'';
      options.desc = "Don't save current session";
    }
  ];
}
