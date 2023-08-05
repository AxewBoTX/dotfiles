# Zsh Config

Zsh is a mordern shell that includes many features which makes it super easy and user friendly to work with the Terminal.
<br>
You can install zsh on your system by following the [Install Guide](https://github.com/AxewBoTX/dotfiles/blob/main/Install%20Guide.md) in this repo. First copy [.zshrc](https://github.com/AxewBoTX/dotfiles/blob/main/zsh/.zshrc) file from this repo into your home directory then follow the given steps in this guide.
<br></br>
Zsh can be integrated with a variaty of plugins that are super helpfull. I use the following plugin in my zsh config:-

1. [oh-my-zsh](https://ohmyz.sh/#install) - Oh My Zsh is a delightful framework for managing your Zsh configuration.
2. [powerline10k](https://github.com/romkatv/powerlevel10k) - Its a super cool and aesthetic powerline theme for oh-my-zsh.
3. [zsh-auto-suggestions](https://github.com/zsh-users/zsh-autosuggestions) - This plugin adds very helpfull and user friendly auto completion for your zsh commands. It can be very helping if you easily forget the commands.
4. [web-search](https://github.com/Yabanahano/web-search) - It is a basic plugin that helps you search on google without exiting your Terminal. Because why would you wanna exit your terminal. ^\_^

## Installation

- oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- powerline10k

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

After installing just run `p10k configure` to configure powerline10k according to your need.

- zsh-auto-suggestions

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- google-search
  <br></br>
  It comes alreaday installed.
