{ config, pkgs, ... }:
{
  imports = [
    ./lsp
    ./cmp.nix
    ./treesitter.nix
    ./editor
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    clipboard.register = "unnamedplus";

    colorschemes.catppuccin.enable = true;
    # colorschemes.vscode.enable = true;

    dependencies = {
      gcc.enable = true;
      yazi.enable = true;
    };

    # 显示诊断信息
    diagnostic.settings = {
      # virtual_lines = {
      #   current_line = true;
      # };
      virtual_text = true;
    };

    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = true;
    };

    opts = {
      updatetime = 100; # Faster completion

      # Line numbers
      relativenumber = false; # Relative line numbers
      number = true; # Display the absolute line number of the current line
      numberwidth = 1; # Width of the line number column
      hidden = true; # Keep closed buffer open in the background
      mouse = "a"; # Enable mouse control
      mousemodel = "extend"; # Mouse right-click extends the current selection
      splitbelow = true; # A new window is put below the current one
      splitright = true; # A new window is put right of the current one

      swapfile = false; # Disable the swap file
      modeline = true; # Tags such as 'vim:ft=sh'
      modelines = 100; # Sets the type of modelines
      undofile = true; # Automatically save and restore undo history
      incsearch = true; # Incremental search: show match for partly typed search command
      inccommand = "split"; # Search and replace: preview changes in quickfix list
      ignorecase = true; # When the search query is lower-case, match both lower and upper-case
      #   patterns
      smartcase = true; # Override the 'ignorecase' option if the search pattern contains upper
      #   case characters
      scrolloff = 8; # Number of screen lines to show around the cursor
      cursorline = true; # Highlight the screen line of the cursor
      cursorcolumn = false; # Highlight the screen column of the cursor
      signcolumn = "yes"; # Whether to show the signcolumn
      laststatus = 3; # When to use a status line for the last window
      fileencoding = "utf-8"; # File-content encoding for the current buffer
      termguicolors = true; # Enables 24-bit RGB color in the |TUI|
      spell = false; # Highlight spelling mistakes (local to window)
      wrap = false; # Prevent text from wrapping

      # Tab options
      tabstop = 2; # Number of spaces a <Tab> in the text stands for (local to buffer)
      shiftwidth = 2; # Number of spaces used for each step of (auto)indent (local to buffer)
      expandtab = true; # Expand <Tab> to spaces in Insert mode (local to buffer)
      autoindent = true; # Do clever autoindenting

      textwidth = 0; # Maximum width of text that is being inserted.  A longer line will be
      #   broken after white space to get this width.

      # Folding
      foldlevel = 300; # Folds with a level higher than this number will be closed
    };

    plugins = {
      sleuth.enable = true; # automatically set shiftwidth and expandtab based on the file
      web-devicons.enable = true; # icons
      # repeat.enable = true;
      # endwise.enable = true;
      lualine = {
        enable = true;
      };
    };
    extraPlugins = with pkgs.vimPlugins; [
      fcitx-vim
    ];
  };
}
