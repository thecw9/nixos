{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.nixvim = {
    plugins = {

      lsp = {
        enable = true;
        inlayHints = true;

        servers = {
          ruff.enable = true;
          pyright.enable = true;
          lua_ls.enable = true;
          bashls.enable = true;
          nixd.enable = true;
          nil_ls = {
            enable = true;
            rootMarkers = [
              ".git"
              "flake.nix"
            ];
          };
        };

        keymaps = {
          silent = true;
          lspBuf = {
            # gd = {
            #   action = "definition";
            #   desc = "Goto Definition";
            # };
            gr = {
              action = "references";
              desc = "Goto References";
            };
            gD = {
              action = "declaration";
              desc = "Goto Declaration";
            };
            gI = {
              action = "implementation";
              desc = "Goto Implementation";
            };
            # gT = {
            #   action = "type_definition";
            #   desc = "Type Definition";
            # };
            # K = {
            #   action = "hover";
            #   desc = "Hover";
            # };
            "<leader>cw" = {
              action = "workspace_symbol";
              desc = "Workspace Symbol";
            };
            # "<leader>cr" = {
            #   action = "rename";
            #   desc = "Rename";
            # };
            "<leader>ca" = {
              action = "code_action";
              desc = "Code Action";
            };
            "gK" = {
              action = "signature_help";
              desc = "Signature Help";
            };
            "<c-k>" = {
              action = "signature_help";
              desc = "Signature Help";
            };
          };
          diagnostic = {
            # "<leader>cd" = {
            #   action = "open_float";
            #   desc = "Line Diagnostics";
            # };
            "[d" = {
              action = "goto_next";
              desc = "Next Diagnostic";
            };
            "]d" = {
              action = "goto_prev";
              desc = "Previous Diagnostic";
            };
          };
        };
      };
    };
  };
}
