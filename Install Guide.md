# Install Guide

## WSL(System Drive)

1. Open `Turn Windows Features on or off`
2. A dialog box will open, turn on `Virtual Machine Platform` and `Windows Subsystem For Linux` and click Ok.
3. Restart your computer.
4. Install [wsl2kernel](https://aka.ms/wsl2kernel)
5. Restart your computer.

## WSL(Other Drive)

1. Make a folder called `WSL` in whichever directory you want.
2. Make a another folder and name it to the name of distro that you want to install.
3. Go to [this](https://learn.microsoft.com/en-us/windows/wsl/install-manual#downloading-distributions) page and download whichever distro you want. You can also download any other WSL compatible distro than mentioned in this list if you want, all you need is the `.tar.gz` file to install a distro.
4. Exract the contents of the downloaded file untill you see the `.tar.gz`
5. Move that `.tar.gz` file into the base of the distro folder that you created in the `WSL` directory.
6. Run the Following command to install WSL on that drive.

   ```
   wsl --import Name_For_Distro "/location/where/you/want/to/install/it" "path/to/.tar.gz/file"
   ```

7. Run `wsl -d Name_For_Distro` to start your WSL distro.

### Arch WSL

If you are installing Arch linux on WSL then you need to do some additional setup before using it. You can follow the following steps.

1. Now we need to setup a main user for the WSL distro. Run the following command.
   ```sh
   EDITOR=vim visudo
   ```
2. Now uncomment the line `%wheel ALL=(ALL:ALL) NOPASSWD: ALL`
3. Now run following command to add the user to wheel group that we just configured.
   ```sh
   useradd -m -G wheel {user}
   ```
4. Now exit Arch from WSL using `exit` command and enter again via the following command to start WSL with specific user.
   ```sh
   wsl -u {user} -d Name_For_Distro
   ```
5. Now lets setup keyring for Arch linux. Run `sudo pacman-key --init` to initialise the keyring.
6. Run `sudo pacman-key --populate` to append all the necesaary keys to the keyring and after that run `sudo pacman -S archlinux-keyring` to finsih the setup. It can take some while to install the keyring.
7. Now make sure to run `sudo pacman -Syyu` to upgrade the whole system.
   <br>
   Now you can use Arch linux on WSL as you please.

## Linux Shell

Before we do anything, we need to setup our shell.<br/>

> Make sure you have [git](https://git-scm.com/) installed on your system.

1. You can install [zsh](<https://en.wikipedia.org/wiki/Z_shell#:~:text=The%20Z%20shell%20(Zsh)%20is,Z%20shell>) by running following command
   > When you are asked for the shell, just enter `/bin/zsh`
   ```sh
   sudo pacman -S zsh && \
   chsh
   ```
2. Make sure to delete any previous `~/.zshrc` files from your home directory.
3. You can install the needed packages by running the following commands
   ```sh
   sudo pacman -S exa fd fzf stow starship curl unzip ripgrep python-virtualenv
   ```
   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```
   ```sh
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   ```
4. Now you need to clone my dotfiles repo into the home(~) directory of your linux system, cd into that directory and run the following command.
   ```sh
   stow .
   ```
5. Now just run the following command to source everything that we just installed.
   ```sh
   source ~/.zshrc
   ```

## Yay

[yay](https://github.com/Jguer/yay) is an AUR helper for arch linux. It is pretty awesome and has the 2nd largest storage of latest packages after Nix.<br/>
To install it just the following command

```sh
git clone https://aur.archlinux.org/yay-bin && \
cd yay-bin && \
makepkg -si
```

## Get the best Arch Linux mirrors

1. Make sure you have [yay](https://github.com/Jguer/yay) installed on your system
2. Following command installs the [rate-mirrors](https://github.com/westandskif/rate-mirrors) package
   ```sh
   yay -S rate-mirrors-bin
   ```
3. Following command fetches the best servers according to your location and then writes them to `/etc/pacman.d/mirrorlist`
   ```sh
   rate-mirrors arch | sudo tee /etc/pacman.d/mirrorlist
   ```

## Font

It's always good to have a nice nerd font installed on your system. I use [Jet Brains Mono Nerd Font](https://www.nerdfonts.com/font-downloads) custom patched by [nerd font patcher](https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#font-patcher).

1. Install fontforge by using the following command
   ```sh
   yay -S fontforge
   ```
2. Create a folder name `FontPatcher` anywhere you like
3. Go into that folder and run the following command
   ```sh
   curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip && \
   curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
   ```
4. Now run the following the following command to extract these
   ```sh
   mkdir -p JetBrains && \
   unzip FontPatcher.zip && \
   unzip -q JetBrainsMono.zip -d JetBrains
   ```
5. Now that we have all the files we need, just run the following command to patch the font
   > For the name of the font, I personally like to use `JetBrainsMonoNLNerdFontComplete`
   ```sh
   fontforge -script font-patcher -c --name [name-that-you-want-for-font] ./JetBrains/JetBrainsMonoNLNerdFont-Regular.ttf
   ```
6. Now that we have the font ready, you can just run the following command to add it to your system's fonts
   ```sh
   sudo mkdir /usr/local/share/fonts && \
   sudo mv [name-that-you-want-for-font] /usr/loacl/share/fonts
   ```

## Window Manager Setup

You can follow this step according to the window manager that you have. My dotfiles are configured for [Hyprland](https://hyprland.org/) and [i3WM](https://i3wm.org/)

<details>
<summary>Hyprland</summary>

> Make sure you have a `minimal` installation of Arch linux with no other window manager installed

1. Install the dependencies
   ```sh
   yay -S base-devel cmake ninja meson wayland wayland-protocols libx11 libxkbcommon libinput pixman vulkan-icd-loader
   ```
2. Now according to your environment install and setup the needed drivers
   <details>
   <summary>Intel</summary>

   ```sh
   yay -S mesa intel-ucode vulkan-intel libva-intel-driver
   ```

   </details>
   <details>
   <summary>Virtual Box</summary>

   ```sh
   yay -S open-vm-tools xf86-video-vmware mesa virtualbox-guest-utils
   ```

   ```sh
   sudo systemctl enable vmtoolsd.service && \
   sudo systemctl start vmtoolsd.service && \
   sudo systemctl enable vmware-vmblock-fuse.service && \
   sudo systemctl start vmware-vmblock-fuse.service && \
   sudo systemctl enable vboxservice.service && \
   sudo systemctl start vboxservice.service
   ```

   </details>
   <details>
   <summary>Nvidia</summary>

   > You are on your own.

   </details>

3. Install the audio drivers
   ```sh
   yay -S pipewire pipewire-pulse pipewire-alsa wireplumber
   ```
4. Install the required tools for a functional hyprland environment
   ```sh
   yay -S wayland-utils xdg-desktop-portal-hyprland dunst polkit-gnome wl-clipboard wlroots xorg-xwayland hyprcursor hyprutils
   ```
5. Now we are going to install Hyprland itself

   > [!Important]
   > Hyprland moved from [wlroots](https://gitlab.freedesktop.org/wlroots/wlroots) to [aquamarine](https://github.com/hyprwm/aquamarine) recently but for me, aquamarine is not working properly and the hyprland version **0.41.2** is the latest release that uses wlroots instead of aquamarine

   - If you are running a newer device
     > [!Note]
     > If aquamarine is not working for you, then you can follow the next old-device guide and while building hyprland, instead of running `make lagacyrenderer` just run `make all`
     ```sh
     yay -S hyprland-git
     ```
   - If you are running an old device then you need to build the hyprland from source using `legacryrenderer` build flag

     ```sh
     CURL -LO https://github.com/hyprwm/Hyprland/releases/download/v0.41.2/source-v0.41.2.tar.gz
     ```

     ```sh
     tar -xvzf source-v0.41.2.tar.gz
     ```

     ```sh
     cd hyprland-source && \
     make legacyrenderer && \
     sudo cp ./build/Hyprland ./build/hyprctl/hyprctl /usr/bin && \
     sudo cp ./example/hyprland.desktop /usr/share/wayland-sessions
     ```

6. Now just run the following command to install my dotfiles related packages and applications
   ```sh
   yay -S waybar rofi-wayland alacritty wlsunset hyprpaper inotify-tools fastfetch cmatrix nyancat
   ```
7. You are all set, now you can just run the `Hyprland` command to start your Hyprland session and use the `Alt+m` keybind to exit that session whenever you want.

</details>

<details>
<summary>i3WM</summary>

> While installing Arch linux make sure to install `i3WM` window manager along with it.

Just run the following command to install my dotfiles related packages and applications

```sh
yay -S rofi i3-gaps feh picom fastfetch cmatrix polybar alacritty redshift nyancat
```

</details>

## Powershell And Oh-My-Posh

After installing **powershell** from Microsoft Store, open its config by using following command.

```shell
notepad $PROFILE.CurrentUserCurrentHost
```

Now inside that file add the following code from [Microsoft.Powershell_Profile.ps1](https://github.com/AxewBoTX/dotfiles-public/blob/main/powershell/Microsoft.Powershell_Profile.ps1) to change the location of powershell config.

```shell
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```

Make sure that the current font in Windows Terminal is set to a [Nerd Font](https://www.nerdfonts.com/) in order to load all the icons and stuff. Now you can install the oh-my-posh using the following command.

```shell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

Now you can refresh the Windows terminal config by either restarting it or running `.$PROFILE` command.

## Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## C++ Full Package

```sh
yay -S gcc clang gdb cmake
```

## Mise version manager

[mise](https://mise.jdx.dev/) is an amazing way to both install and manage various version of various dev package.<br/>

> You should refer to [mise documentation](https://mise.jdx.dev/getting-started.html) to properly understand how to use it

You can install mise using the following command

```sh
curl https://mise.run | sh && \
```

```sh
source ~/.zshrc
```

Now just run the following command to install all the development tools with their specific versions as defined in my dotfiles

```sh
mise install
```

Now run the following commadn to install [yarn](https://yarnpkg.com/) and [live-server](https://www.npmjs.com/package/live-server)

```sh
npm install -g yarn live-server tree-sitter-cli
```

## Tmux

You can install [tmux](https://github.com/tmux/tmux/wiki) via the command below

```sh
yay -S tmux
```

Then you need the [tmux plugin manager](https://github.com/tmux-plugins/tpm). You can install it using hte following command

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Now just go run tmux and press `CTRl-s` followed by `SHIFT-i` to install the needed tmux packages.

## Rust

You can install rust using the following command

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Run the below command to install various important cargo packages that come in handy.

```sh
cargo install sccache bacon cargo-info cargo-update
```

## Neovim

[Neovim](https://neovim.io/) is an amazing code editor.
You can install it using the following command:-

> You also need to install [lazygit](https://github.com/jesseduffield/lazygit) for [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) plugin to work

```sh
yay -S neovim lazygit python-pylatexenc
```

Now you just need to run neovim and it will install everything automatically.<br/>

> NOTE: It may take some time for it to install things so have some patience.
