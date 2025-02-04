{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    package = pkgs.emptyDirectory;
    settings = {
      # general.life_config_reload = true;
      font = {
        size = 13.5;
        normal.family = "JetBrainsMonoNLNerdFontComplete";
      };
      window = {
        opacity = 0.8;
        title = "Terminal";
        dimensions = {
          columns = 92;
          lines = 28;
        };
        padding = {
          x = 3;
          # y = 10;
        };
      };
      colors.primary = {
        background = "0x000000";
        foreground = "0xffffff";
      };
    };
  };
}
