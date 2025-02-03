{ ... }:
{
  programs.nixvim.plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        mode = "tabs";
        always_show_bufferline = false;
        show_close_icon = false;
        show_buffer_close_icons = false;
        color_icons = true;
      };
    };
  };
}
