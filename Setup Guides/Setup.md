Firstly clone  this repo into your `~/.config` using git. Now follow the given steps to configure all the components in this repository.

## Powershell
After installing **powershell** from Microsoft Store, open its config by using following command:-
```shell
notepad $PROFILE.CurrentUserCurrentHost
```
Now inside that file add the following code from [Microsoft.Powershell_Profile.ps1](https://github.com/AxewBoTX/dotfiles-public/blob/main/powershell/Microsoft.Powershell_Profile.ps1) to change the location of powershell config.
```shell
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```
Make sure that the current font in Windows Terminal is set to a [Nerd Font](https://www.nerdfonts.com/) in order to load all the icons and stuff. Now you can install the oh-my-posh using the following command:-
```shell
winget install JanDeDobbeleer.OhMyPosh -s winget
```
Now you can refresh the Windows terminal config by either restarting it or running `.$PROFILE` command.

## Oh-My-Zsh
You can use [LinuxSetup](https://github.com/AxewBoTX/dotfiles-public/blob/main/Setup%20Guides/LinuxSetup.md) to install zsh and oh-my-zsh on Linux. After that follow these steps to configure it:-
- Install [exa](https://github.com/ogham/exa) using the command `sudo apt install exa`
- Install [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) by running the following command:-
```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
- Install [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k) using the following command:-
```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
- Copy the [.zshrc](https://github.com/AxewBoTX/dotfiles-public/blob/main/zsh/.zshrc) from zsh folder into the Home directory or copy the code from it to the one that is already in your home directory.
- After that just run `source ~/.zshrc`
- Now you will be asked to configure powerlevel10 theme and if not then run `p10k configure` to configure it.
- Now configure it according to your need.

## Neovim
You are going to need to install python,gcc and nodejs before configuring Neovim. If you are on Linux then refer to [LinuxSetup](https://github.com/AxewBoTX/dotfiles-public/blob/main/LinuxSetup.md) for help. You need to install [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) before installing Neovim. In order to install packer run the following command:-
<br></br>
On Windows:-
```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```
On Unix,Linux:-
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Now install jdtls using the following command(Unix only):-
```shell
curl https://raw.githubusercontent.com/eruizc-dev/jdtls-launcher/master/install.sh | bash
```
Check out [eruizc-dev/jdtls-launcher](https://github.com/eruizc-dev/jdtls-launcher) for info on how to install jdtls on other OS.
<br></br>
Now install unzip using the following command:-
```shell
sudo apt-get install unzip
```
After installing the required things and the rquired version neovim, follow these steps to setup Neovim:-
- Open Neovim by using nvim command. This will start a process that will install some required things. Let it finish.
- After that is finished you can just use `:PackerInstall` in Neovim to install Neovim plugins.
- After all the plugins are installed, just do `:PackerSync` to make sure all the plugins are up to date.
<br></br>
Now you can just use Neovim as you please.

## Tmux
In order to install tmux you can follow [LinuxSetup](https://github.com/AxewBoTX/dotfiles-public/blob/main/LinuxSetup.md) file. After installing tmux copy the [.tmux.conf](https://github.com/AxewBoTX/dotfiles-public/blob/main/tmux/.tmux.conf) into your Home directory or copy the code from it into the .tmux.conf file in your Home directory. After that just follow the following steps to setup Tmux:-
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
