{ ... }:
{
  programs.nixvim = {
    plugins = {
      nvim-tree = {
        enable = true;
        disableNetrw = true;
        hijackDirectories = {
          enable = false;
          autoOpen = false;
        };
        diagnostics = {
          enable = true;
        };
        git = {
          enable = true;
          ignore = true;
        };
        actions = {
          openFile = {
            quitOnOpen = true;
          };
        };
        onAttach = {
          __raw = ''
            function(bufnr)
            	local api = require("nvim-tree.api")
            	local function opts(desc)
            		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            	end

            	vim.keymap.set("n", "<C-]>", api.tree.change_root_to_node, opts("CD"))
            	vim.keymap.set("n", "<C-k>", api.node.show_info_popup, opts("Info"))
            	vim.keymap.set("n", "<C-t>", api.node.open.tab, opts("Open: New Tab"))
            	vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("Open: Vertical Split"))
            	vim.keymap.set("n", "<C-x>", api.node.open.horizontal, opts("Open: Horizontal Split"))
            	vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
            	vim.keymap.set("n", ".", api.node.run.cmd, opts("Run Command"))
            	vim.keymap.set("n", "-", api.tree.change_root_to_parent, opts("Up"))
            	vim.keymap.set("n", "a", api.fs.create, opts("Create"))
            	vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
            	vim.keymap.set("n", "g?", api.tree.toggle_help, opts("Help"))
            	vim.keymap.set("n", "gy", api.fs.copy.absolute_path, opts("Copy Absolute Path"))
            	vim.keymap.set("n", "H", api.tree.toggle_hidden_filter, opts("Toggle Dotfiles"))
            	vim.keymap.set("n", "I", api.tree.toggle_gitignore_filter, opts("Toggle Git Ignore"))
            	vim.keymap.set("n", "P", api.node.navigate.parent, opts("Parent Directory"))
            	vim.keymap.set("n", "q", api.tree.close, opts("Close"))
            	vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
            	vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
            	vim.keymap.set("n", "y", api.fs.copy.filename, opts("Copy Name"))
            	vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts("Copy Relative Path"))
            end'';
        };
      };
    };
  };
}
