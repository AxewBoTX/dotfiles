# Install Guide

## WSL(System Drive)

1. Open **Turn Windows Features on or off**
2. A dialog box will open, turn on **Virtual Machine Platform** and **Windows Subsystem For Linux** and click Ok.
3. Restart your computer.
4. Open Microsoft Store and install Ubuntu.
5. Install [wsl2kernel](https://aka.ms/wsl2kernel)
6. Restart Your Computer
7. Either open **Ubuntu** straight up by searching it or open it through Windows Terminal.
8. Setup your profile and follow the next steps.

## WSL(Other Drive)

> NOTE: Only Use This Method If You Havnt Already Installed Any WSL Distro On Your System

1. Make a folder called **WSL** in whichever directory you want.
2. Make a another folder and name it to the name of distro that you want to install.
3. Go to [this](https://learn.microsoft.com/en-us/windows/wsl/install-manual#downloading-distributions) page and download whichever distro you want.
4. Extract the downloaded file. You will see many files, just extract the the file with **x64** in its name into a new folder.
5. Make sure there is a .tar.gz file in that folder.
6. Run the Following command to install WSL on that drive:-

```
wsl --import Name_For_Distro "/location/where/you/want/to/install/it" "path/to/.tar.gz/file"
```

7. If you are installing Arch linux that you might also need to setep a user for that, you can check on youtube for how to do that.

## Fonts
The font that I use is the beautifull Appel's SF Mono font patched with nerd font patcher. It is called [SF Mono Nerd Font](https://github.com/epk/SF-Mono-Nerd-Font)

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
