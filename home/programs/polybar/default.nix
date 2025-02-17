{ ... }: {
  home.file.".config/polybar" = {
    source = ./config;
    recursive = true;
  };
}
