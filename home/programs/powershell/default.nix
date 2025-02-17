{ ... }:
{
  home.file.".config/powershell" = {
    source = ./config;
    recursive = true;
  };
}
