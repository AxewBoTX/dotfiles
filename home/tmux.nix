{flake_inputs,...}:
{
  programs.tmux = {
    enable = true;
    plugins = [
      {
        plugin = flake_inputs.minimal-tmux.packages.x86_64-linux.default;
        extraConfig = ''
          			set -g @minimal-tmux-bg "#c9c7cd"
          			set -g @minimal-tmux-status-right "#(whoami) "
          			set -g @minimal-tmux-justify "left"
          			set -g @minimal-tmux-indicator false
          			'';
      }
    ];
    extraConfig = ''
      	set -g default-terminal "screen-256color"
      	set -g mouse off
      	set -s escape-time 0
      	set -g repeat-time 0

      	set -g mode-style "fg=#eee8d5,bg=#073642"
      	set -g message-style "fg=#eee8d5,bg=#073642"
      	set -g message-command-style "fg=#eee8d5,bg=#073642"
      	set -g pane-border-style "fg=#073642"
      	set -g pane-active-border-style "fg=#eee8d5"
      	set -g status-style "fg=#586e75,bg=#073642"
      	set -g status-bg "#002b36"
      	set -g status-left-length "50"
      	set -g status-right-length "100"
      	set -g status-left-style NONE
      	set -g status-right-style NONE
      	setw -g window-status-activity-style "underscore,fg=#839496,bg=#002b36"
      	setw -g window-status-separator ""

      	# status-bar settings
      	set-option -g status-justify "left"
      	set -g status-interval 1
      	set-option -g status-position bottom
      	set-option -g automatic-rename off
      	set -g prefix C-s
      	unbind C-b
      	bind-key C-s send-prefix

      	# Basic PopUp Window Keybinds
      	bind -r g display-popup 

      	#Horizontal Splitting
      	unbind %
      	bind | split-window -h 

      	#Vertical Splitting
      	unbind '"'
      	bind - split-window -v

      	#Keymap for Reloading Tmux Config
      	unbind r
      	bind r source-file ~/.config/tmux/tmux.conf \; display-message "Config Successfully Reloaded!"

      	#Toggle Maximize Pane
      	bind -r m resize-pane -Z

      	#Enabeling Vim Type Keymapping
      	bind -r C-k resize-pane -U 2
      	bind -r C-j resize-pane -D 2
      	bind -r C-h resize-pane -L 2
      	bind -r C-l resize-pane -R 2

      	bind -r k select-pane -U 
      	bind -r j select-pane -D 
      	bind -r h select-pane -L 
      	bind -r l select-pane -R 
      	unbind Up     
      	unbind Down   
      	unbind Left   
      	unbind Right  
      	unbind C-Up   
      	unbind C-Down 
      	unbind C-Left 
      	unbind C-Right
      	'';
  };
}
