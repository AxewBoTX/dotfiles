# Install Guide

Before proceeding to install anything, firstly make sure your system is completely update to it's respective latest version.
<br></br>
Please follow the steps in order and as they are mentioned below. ^\_^

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

7. If you are installing Arch linux that you might also need to setep a user for that, you can check on youtube for how to do that. You can also refer to [this](https://youtu.be/h0Wg_aknGdc) Youtube video for help.

## Git

In order to install git run the following commands if you are on Ubuntu:-

1. `sudo apt remove git`
2. `sudo apt autoremove`
3. `sudo add-apt-repository ppa:git-core/ppa -y`
4. `sudo apt-get update`
5. `sudo apt-get install git -y`

If you are on Arch based ditribution then run `sudo pacman -S git` command.

## Fonts

The font that I use is the beautifull Appel's SF Mono font patched with nerd font patcher. It is called [SF Mono Nerd Font](https://github.com/epk/SF-Mono-Nerd-Font)

## Powershell And Oh-My-Posh

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

- Run `sudo apt install zsh` or `sudo pacman -S zsh` in order to install zsh.
- Run `chsh` and enther the code `/bin/zsh` after entering your password. Now restart your terminal and hit 2 if asked to config.

In order to install oh-my-zsh run the following command:-

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

After doing that follow these steps to configure it:-

- Install [exa](https://github.com/ogham/exa) using the command `sudo apt install exa` or `sudo pacman -S exa`
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

## NodeJs

If you are on windows then you can just go to [NodeJS](https://nodejs.org/en) website and download whichever version you want from there. But if you are on Unix then you need to install [node-version-manager](https://github.com/nvm-sh/nvm) in order to install nodejs. You can install nvm using the following command:-

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

After installing nvm run `source ~/.zshrc` and run the `nvm install latest` to install latest version or nodejs.

## Yarn

Just run the following command to install yarn:-

```shell
npm install --global yarn
```

## C/C++ Full Package

In order to install all the C/C++ related things run the following command:-
<br></br>

- For Debian Based Systems

```shell
sudo apt install gcc g++ clang gdb cmake
```

- For Arch Based Systems

```shell
sudo pacman -S gcc clang gdb cmake
```

## Java

- If you are on windows then just go [Java Oracle](https://www.oracle.com/java/technologies/downloads/) website and download your desired version.
  <br></br>

- If You are on Debian Based System then in order to install java firstly download `x64 Debian Package` from [Java Oracle](https://www.oracle.com/java/technologies/downloads/) website and put it in the home directory. The run the following commands to install it and configure it:-

```shell
sudo apt install ~/jdk-19_linux-x64_bin.deb
```

This command will install Java 19 into your system.

> NOTE:You can change the version according to your need.
> Now run the follownig commands to configure it:-

```shell
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-19/bin/java 1
```

```shell
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-19/bin/javac 1
```

```shell
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-19/bin/jar 1
```

Now run the following commands to update the shell according to Java 19:-

```shell
sudo update-alternatives --config java
```

```shell
sudo update-alternatives --config javac
```

```shell
sudo update-alternatives --config jar
```

- If you are on Arch Based System then run the following command to install java on your system:-

```shell
sudo pacman -S jre-openjdk jdk-openjdk
```

## Neovim

In order to install Neovim run the following commands:-
<br></br>

- Debian Based Systems
  <br></br>
  `sudo add-apt-repository ppa:neovim-ppa/unstable`
  <br></br>
  `sudo apt-get update`
  <br></br>
  `sudo apt-get install neovim`
  <br></br>

- Arch Based Systems

```shell
sudo pacman -S neovim
```

You are going to need to install python,gcc and nodejs before configuring Neovim. In order to install [Neovim](https://neovim.io/) run the following commands:-
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

Now install unzip using `sudo apt install unzip` or `sudo pacman -S unzip`

After installing the required things and the rquired version neovim, follow these steps to setup Neovim:-

- Open Neovim by using nvim command. This will start a process that will install some required things. Let it finish.
- After that is finished you can just use `:PackerInstall` in Neovim to install Neovim plugins.
- After all the plugins are installed, just do `:PackerSync` to make sure all the plugins are up to date.
  <br></br>
  Now you can just use Neovim as you please.

## Tmux

In order to install [Tmux](https://github.com/tmux/tmux/wiki) run `sudo apt-install tmux` or `sudo pacman -S tmux`
<br><br>

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

## Rofi

You can install rofi using the following command based on your OS:-

- Debian Based Systems: `sudo apt install rofi`
- Arch Based Systems: `sudo pacman -S rofi`

## i3WM

i3WM is a [Tiling Window Manager](https://en.wikipedia.org/wiki/Tiling_window_manager) for Linux based operating systems.
<br></br>
You can install it on your respective system by following these simple steps: -
- If you are on a Debian Based System then you can refer to [this](https://youtu.be/j1I63wGcvU4) YouTube video for installing i3WM on your system.
- For Arch Based Systems you can also follow the same video but using Arch based commands.

## Alacritty
[Alacritty](https://github.com/alacritty/alacritty) is a Open Source Terminal for multiple Operating Systems. You can follow the fowlloing steps to install Alacritty on your respecting Systems:-
- For Windows you can go to 
