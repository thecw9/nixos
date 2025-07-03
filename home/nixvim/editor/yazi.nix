{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.nixvim.plugins = {
    yazi.enable = true; # open yazi in a floating window in Neovim.

  };
  programs.nixvim.keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>fy";
      action = "<cmd>Yazi<cr>";
      options.desc = "Open yazi at the current file";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>fw";
      action = "<cmd>Yazi cwd<cr>";
      options.desc = "Open the file manager in nvim's working directory";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<c-up>";
      action = "<cmd>Yazi toggle<cr>";
      options.desc = "Resume the last yazi session";
    }
  ];

}
