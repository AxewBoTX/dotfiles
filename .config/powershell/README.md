# Powershell Config

Powershell is a command line shell for windows which adds a lot of functionality to the terminal.
<br>
It not only makes the terminal interactive and easy to use, it is also highly customisable by using [oh-my-posh](https://ohmyposh.dev/docs/).
<br>
There are many themes and colorschemes that we can choose from for our powershell config.
<br>
The one's that I use are as follows:-

- [Bubblesextra](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/bubblesextra.omp.json)
- [Paradox](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/paradox.omp.json)
- [Stelbent](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/stelbent.minimal.omp.json)
- [WhiteArrow](https://github.com/AxewBoTX/dotfiles/blob/main/powershell/oh-my-posh-theme/white_arrow.omp.json) - This is a custom theme derived from [TonyBaloney](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/tonybaloney.omp.json) theme.

Most of the powershell themes present in this repo are customised to my liking but by following the links you can get the original themes.

## Installation

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
