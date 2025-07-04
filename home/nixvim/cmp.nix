{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;

        settings = {
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

          mapping = {
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.close()";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };

          sources = [
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
            {
              name = "buffer";
              # Words from other open buffers can also be suggested.
              option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            }
            { name = "path"; }
            { name = "spell"; }
            { name = "emoji"; }
            { name = "neorg"; }
          ];

          # window.completion.border = [
          #   "╭"
          #   "─"
          #   "╮"
          #   "│"
          #   "╯"
          #   "─"
          #   "╰"
          #   "│"
          # ];
        };
      };
      cmp-buffer.enable = true;
      cmp-path.enable = true;
      cmp-spell.enable = true;
      cmp-emoji.enable = true;
      cmp-nvim-lsp.enable = true;
    };
  };
}
