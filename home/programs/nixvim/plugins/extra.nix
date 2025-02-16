{ pkgs, flake_inputs, ... }:
{
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "mellow";
        src = flake_inputs.mellow-nvim;
      })
      (pkgs.vimUtils.buildVimPlugin {
        name = "helpview";
        src = flake_inputs.helpview-nvim;
      })
      (pkgs.vimUtils.buildVimPlugin {
        name = "nvim-gomove";
        src = flake_inputs.nvim-gomove;
      })
    ];
  };
}
