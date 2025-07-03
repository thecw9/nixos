{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.nixvim.plugins = {
    snacks = {
      enable = true;
      settings = {
        lazygit.enabled = true;
      };
    };
  };
  programs.nixvim.keymaps = [
    # Top Pickers & Explorer
    {
      mode = "n";
      key = "<leader><space>";
      action = ":lua Snacks.picker.smart()<CR>";
      options = {
        desc = "Smart Find Files";
      };
    }
    {
      mode = "n";
      key = "<leader>,";
      action = ":lua Snacks.picker.buffers()<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>/";
      action = ":lua Snacks.picker.grep()<CR>";
      options.desc = "Grep";
    }
    {
      mode = "n";
      key = "<leader>:";
      action = ":lua Snacks.picker.command_history()<CR>";
      options.desc = "Command history";
    }
    {
      mode = "n";
      key = "<leader>n";
      action = ":lua Snacks.picker.notifications()<CR>";
      options.desc = "Notification History";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = ":lua Snacks.explorer()<CR>";
      options.desc = "File explorer";
    }
    # Find
    {
      mode = "n";
      key = "<leader>fb";
      action = ":lua Snacks.picker.buffers()<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = ":lua Snacks.picker.files({ cwd = vim.fn.stdpath(\"config\") })<CR>";
      options.desc = "Find Config File";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = ":lua Snacks.picker.files()<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ":lua Snacks.picker.git_files()<CR>";
      options.desc = "Find Git Files";
    }
    {
      mode = "n";
      key = "<leader>fp";
      action = ":lua Snacks.picker.projects()<CR>";
      options.desc = "Projects";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = ":lua Snacks.picker.recent()<CR>";
      options.desc = "Recent";
    }

    # Git
    {
      mode = "n";
      key = "<leader>gb";
      action = ":lua Snacks.picker.git_branches()<CR>";
      options.desc = "Git Branches";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = ":lua Snacks.picker.git_log()<CR>";
      options.desc = "Git Log";
    }
    {
      mode = "n";
      key = "<leader>gL";
      action = ":lua Snacks.picker.git_log_line()<CR>";
      options.desc = "Git Log Line";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = ":lua Snacks.picker.git_status()<CR>";
      options.desc = "Git Status";
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = ":lua Snacks.picker.git_stash()<CR>";
      options = {
        desc = "Git Stash";
      };
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = ":lua Snacks.picker.git_diff()<CR>";
      options = {
        desc = "Git Diff (Hunks)";
      };
    }
    {
      mode = "n";
      key = "<leader>gf";
      action = ":lua Snacks.picker.git_log_file()<CR>";
      options.desc = "Git Log File";
    }

    # Grep
    {
      mode = "n";
      key = "<leader>sb";
      action = ":lua Snacks.picker.lines()<CR>";
      options.desc = "Buffer Lines";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>sw";
      action = ":lua Snacks.picker.grep_word()<CR>";
      options.desc = "Visual selection or word";
    }
    {
      mode = "n";
      key = "<leader>sB";
      action = ":lua Snacks.picker.grep_buffers()<CR>";
      options.desc = "Grep Open Buffers";
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = ":lua Snacks.picker.grep()<CR>";
      options.desc = "Grep";
    }

    # Search
    {
      mode = "n";
      key = "<leader>s\"";
      action = ":lua Snacks.picker.registers()<CR>";
      options.desc = "Registers";
    }
    {
      mode = "n";
      key = "<leader>s/";
      action = ":lua Snacks.picker.search_history()<CR>";
      options.desc = "Search History";
    }
    {
      mode = "n";
      key = "<leader>sa";
      action = ":lua Snacks.picker.autocmds()<CR>";
      options.desc = "Autocmds";
    }
    {
      mode = "n";
      key = "<leader>sc";
      action = ":lua Snacks.picker.command_history()<CR>";
      options.desc = "Command History";
    }
    {
      mode = "n";
      key = "<leader>sC";
      action = ":lua Snacks.picker.commands()<CR>";
      options.desc = "Commands";
    }
    {
      mode = "n";
      key = "<leader>sd";
      action = ":lua Snacks.picker.diagnostics()<CR>";
      options.desc = "Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>sD";
      action = ":lua Snacks.picker.diagnostics_buffer()<CR>";
      options.desc = "Buffer Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = ":lua Snacks.picker.help()<CR>";
      options.desc = "Help Pages";
    }
    {
      mode = "n";
      key = "<leader>sH";
      action = ":lua Snacks.picker.highlights()<CR>";
      options.desc = "Highlights";
    }
    {
      mode = "n";
      key = "<leader>si";
      action = ":lua Snacks.picker.icons()<CR>";
      options.desc = "Icons";
    }
    {
      mode = "n";
      key = "<leader>sj";
      action = ":lua Snacks.picker.jumps()<CR>";
      options.desc = "Jumps";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = ":lua Snacks.picker.keymaps()<CR>";
      options.desc = "Keymaps";
    }
    {
      mode = "n";
      key = "<leader>sl";
      action = ":lua Snacks.picker.loclist()<CR>";
      options.desc = "Location List";
    }
    {
      mode = "n";
      key = "<leader>sm";
      action = ":lua Snacks.picker.marks()<CR>";
      options.desc = "Marks";
    }
    {
      mode = "n";
      key = "<leader>sM";
      action = ":lua Snacks.picker.man()<CR>";
      options.desc = "Man Pages";
    }
    {
      mode = "n";
      key = "<leader>sp";
      action = ":lua Snacks.picker.lazy()<CR>";
      options.desc = "Search for Plugin Spec";
    }
    {
      mode = "n";
      key = "<leader>sq";
      action = ":lua Snacks.picker.qflist()<CR>";
      options.desc = "Quickfix List";
    }
    {
      mode = "n";
      key = "<leader>sR";
      action = ":lua Snacks.picker.resume()<CR>";
      options.desc = "Resume";
    }
    {
      mode = "n";
      key = "<leader>su";
      action = ":lua Snacks.picker.undo()<CR>";
      options.desc = "Undo History";
    }
    {
      mode = "n";
      key = "<leader>uC";
      action = ":lua Snacks.picker.colorschemes()<CR>";
      options.desc = "Colorschemes";
    }

    # LSP
    {
      mode = "n";
      key = "gd";
      action = ":lua Snacks.picker.lsp_definitions()<CR>";
      options.desc = "Goto Definition";
    }
    {
      mode = "n";
      key = "gD";
      action = ":lua Snacks.picker.lsp_declarations()<CR>";
      options.desc = "Goto Declaration";
    }
    {
      mode = "n";
      key = "gr";
      action = ":lua Snacks.picker.lsp_references()<CR>";
      options = {
        desc = "References";
        nowait = true;
      };
    }
    {
      mode = "n";
      key = "gI";
      action = ":lua Snacks.picker.lsp_implementations()<CR>";
      options.desc = "Goto Implementation";
    }
    {
      mode = "n";
      key = "gy";
      action = ":lua Snacks.picker.lsp_type_definitions()<CR>";
      options.desc = "Goto Type Definition";
    }
    {
      mode = "n";
      key = "<leader>ss";
      action = ":lua Snacks.picker.lsp_symbols()<CR>";
      options.desc = "LSP Symbols";
    }
    {
      mode = "n";
      key = "<leader>sS";
      action = ":lua Snacks.picker.lsp_workspace_symbols()<CR>";
      options.desc = "LSP Workspace Symbols";
    }

    # Other
    {
      mode = "n";
      key = "<leader>z";
      action = ":lua Snacks.zen()<CR>";
      options.desc = "Toggle Zen Mode";
    }
    {
      mode = "n";
      key = "<leader>Z";
      action = ":lua Snacks.zen.zoom()<CR>";
      options.desc = "Toggle Zoom";
    }
    {
      mode = "n";
      key = "<leader>.";
      action = ":lua Snacks.scratch()<CR>";
      options.desc = "Toggle Scratch Buffer";
    }
    {
      mode = "n";
      key = "<leader>S";
      action = ":lua Snacks.scratch.select()<CR>";
      options.desc = "Select Scratch Buffer";
    }
    {
      mode = "n";
      key = "<leader>n";
      action = ":lua Snacks.notifier.show_history()<CR>";
      options.desc = "Notification History";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = ":lua Snacks.bufdelete()<CR>";
      options.desc = "Delete Buffer";
    }
    {
      mode = "n";
      key = "<leader>cR";
      action = ":lua Snacks.rename.rename_file()<CR>";
      options.desc = "Rename File";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>gB";
      action = ":lua Snacks.gitbrowse()<CR>";
      options.desc = "Git Browse";
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = ":lua Snacks.lazygit()<CR>";
      options.desc = "Lazygit";
    }
    {
      mode = "n";
      key = "<leader>un";
      action = ":lua Snacks.notifier.hide()<CR>";
      options.desc = "Dismiss All Notifications";
    }
    {
      mode = "n";
      key = "<c-/>";
      action = ":lua Snacks.terminal()<CR>";
      options.desc = "Toggle Terminal";
    }
    {
      mode = "n";
      key = "<c-_>";
      action = ":lua Snacks.terminal()<CR>";
      options.desc = "which_key_ignore";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "]]";
      action = ":lua Snacks.words.jump(vim.v.count1)<CR>";
      options.desc = "Next Reference";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "[[";
      action = ":lua Snacks.words.jump(-vim.v.count1)<CR>";
      options.desc = "Prev Reference";
    }

  ];

}
