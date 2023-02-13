Follow these steps to configure Ubuntu/WSL according to this repository

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
1. Make a folder called **WSL** in whichever directory you want.
2. Make a another folder and name it to the name of distro that you want to install.
3. Go to [this](https://learn.microsoft.com/en-us/windows/wsl/install-manual#downloading-distributions) page and download whichever distro you want.
4. Extract the downloaded file. You will see many files, just extract the the file with **x64** in its name into a new folder.
5. Go into the new folder and make sure there is a .exe file in it, if there isnt you messed up somwehere, dont worry try again.
6. If there is a .exe file then cut all the contents of that folder and paste it in the distro folder in WSL directory that you created.
7. Now just click the .exe and wait untill it installs.
8. After its installed just setup your profile and follow the next steps.

## Ubuntu
- Run following commands to update all the packages:-
```shell
sudo apt update; sudo apt upgrade
```
```shell
sudo apt-get update; sudo apt-get upgrade
```
- Run `sudo apt autoremove` to remove unwanted packages.

## Git
In order to install git run the following commands:-
1. `sudo apt remove git`
2. `sudo apt autoremove`
3. `sudo add-apt-repository ppa:git-core/ppa -y`
4. `sudo apt-get update`
5. `sudo apt-get install git -y`

## Oh-My-Zsh
In order to install oh-my-zsh follow the following steps:-
- Run `sudo apt install zsh` in order to install zsh.
- Run `chsh` and enther the code `/bin/zsh` after entering your password. Now restart your terminal and hit 2 if asked to config. 
- Now run the following commmand to install oh-my-zsh
```shel
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## NodeJs
In order to install nodejs firstly install node-version-manager. Install it using the following command:-
```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```
After installing nvm run `source ~/.zshrc`run the `nvm install latest` to install latest version or nodejs.

## C-Compiler
In order to install **gcc** and **g++** run `sudo apt update; sudo apt upgrade` command and then run the following command:-
```shell
sudo apt install gcc g++
```

## Neovim
In order to install Neovim run `sudo apt update; sudo apt upgrade` command then run the followig commands:-
```shell
sudo add-apt-repository ppa:neovim-ppa/untable
```
```shell
sudo apt-get update
```
```shell
sudo apt-get install neovim
```

## Tmux
In order to install Tmux run `sudo apt update; sudo apt upgrade` then run the following commands:-
```shell
sudo apt-get install tmux
```

## Java
In order to install java firstly download `x64 Debian Package` from [Java Oracle](https://www.oracle.com/java/technologies/downloads/) website and put it in the home directory. The run the following commands to install it and configure it:-
```shell
sudo apt install ~/jdk-19_linux-x64_bin.deb
```
This command will install Java 19 into your system.
>NOTE:You can change the version according to your need.
Now run the follownig commands to configure it:-
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
