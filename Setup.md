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

## Neovim
You are going to need to install python,gcc and nodejs before configuring Neovim. If you are on Ubuntu then refer to [UbuntuSetup](https://github.com/AxewBoTX/dotfiles-public/blob/main/UbuntuSetup.md) for help. After installing the required things and the rquired version neovim, follow these steps to setup Neovim:-
- Open Neovim by using nvim command. This will start a process that will install some required things. Let it finish.
- After that is finished you can just use `:PackerInstall` in Neovim to install Neovim plugins.
- After all the plugins are installed, just do `:PackerSync` to make sure all the plugins are up to date.
Now you can just use Neovim as you please.

## Oh-My-Zsh
You can use [UbuntuSetup](https://github.com/AxewBoTX/dotfiles-public/blob/main/UbuntuSetup.md) to install zsh and oh-my-zsh on Ubuntu. After that follow these steps to configure it:-
- Install [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k) using the following command:-
```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
- Copy the [.zshrc](https://github.com/AxewBoTX/dotfiles-public/blob/main/zsh/.zshrc) from zsh folder into the Home directory or copy the code from it to the one that is already in your home directory.
- After that just run `source ~/.zshrc`
- Now you will be asked to configure powerlevel10 theme and if not then run `p10k configure` to configure it.
- Now configure it according to your need.
