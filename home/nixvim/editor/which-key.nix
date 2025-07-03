{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.nixvim.plugins = {

    which-key = {
      enable = true;
      settings.spec = [
        {
          __unkeyed = "<Leader>b";
          name = "Buffer";
        }
        {
          __unkeyed = "<Leader>c";
          name = "Code";
        }
        {
          __unkeyed = "<Leader>f";
          name = "Find/Files";
        }
        {
          __unkeyed = "<Leader>g";
          name = "Git";
        }
        {
          __unkeyed = "<Leader>l";
          name = "LSP";
        }
        {
          __unkeyed = "<Leader>m";
          name = "Minimap";
        }
        {
          __unkeyed = "<Leader>s";
          name = "Search";
        }
        {
          __unkeyed = "<Leader>u";
          name = "UI";
        }
      ];
    };
  };
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>?";
      action = '':lua require("which-key").show({ global = false })<CR>'';
      options.desc = "Buffer Keymaps (which-key)";
    }
    {
      mode = "n";
      key = "<c-w><space>";
      action = '':lua require("which-key").show({ keys = "<c-w>", loop = true })<CR>'';
      options.desc = "Buffer Keymaps (which-key)";
    }
  ];

}
