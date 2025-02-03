{ ... }:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    shellAliases = {
      ls = "exa -all --icons";
      tmux = "tmux -u";
      open = "explorer.exe";
    };
    initExtra = # sh
      ''
        	export MESA_GLSL_VERSION_OVERRIDE=330
        	export MESA_GL_VERSION_OVERRIDE=3.3
        	export PODMAN_IGNORE_CGROUPSV1_WARNING=true
        	bindkey '^l' autosuggest-accept
        	bindkey '^K' clear-screen
        	if [ -e /home/axew/.nix-profile/etc/profile.d/nix.sh ]; then . /home/axew/.nix-profile/etc/profile.d/nix.sh; fi
        	'';
  };
}
