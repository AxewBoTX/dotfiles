Follow these steps to configure Ubuntu/WSL according to this repository

## WSL
1. Open **Turn Windows Features on or off**
2. A dialog box will open, turn on **Virtual Machine Platform** and **Windows Subsystem For Linux** and click Ok.
3. Restart your computer.
4. Open Microsoft Store and install Ubuntu.
5. Install [wsl2kernel](https://aka.ms/wsl2kernel)
6. Restart Your Computer
7. Either open **Ubuntu** straight up by searching it or open it through Windows Terminal.
8. Setup your profile and follow the next steps.

## Ubuntu
- Run following commands to update all the packages:-
```shell
sudo apt update; sudo apt upgrade
```
```shell
sudo apt-get update; sudo apt-get upgrade
```
- Run `sudo apt autoremove` to remove unwanted packages.

### Git
In order to install git run the following commands:-
1. `sudo apt remove git`
2. `sudo apt autoremove`
3. `sudo add-apt-repository ppa:git-core/ppa -y`
4. `sudo apt-get update`
5. `sudo apt-get install git -y`

### Oh-My-Zsh
In order to install oh-my-zsh, we need zsh shell installed. Install it using `sudo apt install zsh` command.

### NodeJs
In order to install nodejs firstly install node-version-manager. Install it using the following command
```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```
After installing nvm run `source ~/.zshrc`
