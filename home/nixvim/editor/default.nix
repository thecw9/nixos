{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./snacks.nix
    ./which-key.nix
    ./yazi.nix
    ./telescope.nix
    ./persistence.nix
  ];

  programs.nixvim.plugins = {

    lastplace.enable = true; # automatically opens files at your last edit position.
    markdown-preview.enable = true; # markdown preview
    render-markdown = {
      enable = true;
      settings.file_types = [
        "markdown"
        "codecompanion"
      ];
    };
    nvim-autopairs.enable = true; # Insert and delete brackets, parens, quotes in pair automatically.
    nvim-surround.enable = true; # Surround text with pairs of characters.
    todo-comments.enable = true;

  };

  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    codewindow-nvim
  ];
  programs.nixvim.extraConfigLua =
    # lua
    ''
      local codewindow = require("codewindow")
      codewindow.setup()
      codewindow.apply_default_keybinds()
    '';
}
