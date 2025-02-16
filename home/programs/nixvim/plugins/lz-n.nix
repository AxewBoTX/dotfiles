{ ... }:
{
  programs.nixvim = {
    plugins.lz-n = {
      enable = true;
      plugins = [
        {
          __unkeyed-1 = "nvim-gomove";
          enabled = ''
            				function()
            					return true
            				end
            				'';
          after = ''
            				function()
            					require("gomove").setup({
            						map_defaults = false,
            						reindent = true,
            						undojoin = false,
            						move_past_end_col = false
            					});
            				end
            				'';
          event = [ "BufReadPre" ];
        }
      ];
    };
  };
}
