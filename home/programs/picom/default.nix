{ ... }: {
  home.file.".config/picom/picom.conf" = {
    source = ./config/picom.conf;
  };
}
