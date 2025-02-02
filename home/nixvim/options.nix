{ ... }:
{
  programs.nixvim = {
    globals = {
      loaded_netrwPlugin = 1;
      loaded_netrw = 1;
    };
    opts = {
      number = true;
      relativenumber = true;
      hidden = true;
      autoindent = true;
      wrap = false;
      backup = false;
      showcmd = true;
      cmdheight = 1;
      smarttab = true;
      shiftwidth = 4;
      tabstop = 4;
      ai = true;
      # si = true;
      smartcase = true;
      ignorecase = true;
      swapfile = false;
      updatetime = 300;
      writebackup = false;
      termguicolors = true;
      background = "dark";
      winblend = 0;
      laststatus = 2;
    };
    clipboard = {
      # providers = {
      # 	xclip.enable = true;
      # };
      register = "unnamedplus";
    };
  };
}
