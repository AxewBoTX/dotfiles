# Tmux Config

Tmux is a pretty good session manager for Linux or Mac systems. It is the reason why I use WSL on Windows instead of coding on native stuff.
<br>
You can install tmux on your system by following the [Install Guide](https://github.com/AxewBoTX/dotfiles/blob/main/Install%20Guide.md) in this repo.
<br>
I use [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) for plugins but I don't even use any plugins in my tmux configuration. It is just basic settings for functionality, keybinds and appearance.
<br>
In order to install [Tmux](https://github.com/tmux/tmux/wiki) run `sudo apt-install tmux` or `sudo pacman -S tmux`
<br>

After installing tmux copy the [.tmux.conf](https://github.com/AxewBoTX/dotfiles-public/blob/main/tmux/.tmux.conf) into your Home directory or copy the code from it into the .tmux.conf file in your Home directory. After that just follow the following steps to setup Tmux:-

- Launch tmux using `tmux` command.
- Run `tmux source-file ~/.tmux.conf` command.
- Install [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm) using following command:-

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

- Run `tmux source-file ~/.tmux.conf` command.
- Exit tmux using `exit` command and enter it again using `tmux command`
- Press `<Ctrl-s>` then `<Shift-i>` keys to install the plugins, this can take some time and nothing will show up on your screen for some time, you must wait atleast 2 mins for it install plugins. If it takes alot of time then exit tmux then repeat the process.
- Now exit tmux and restart your Terminal.
