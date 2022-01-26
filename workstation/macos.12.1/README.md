# macos 12.1

## Description

Basic installations for macOS

- Homebrew
- Oh My Zsh, zsh-autosuggestions, Powerlevel10k
- Node.js, Nvm, Yarn
- iTerm2
- other useful packages

Configs

- .tmux.conf
- .vimrc
- .zprofile
- .zshrc


## Install

```
curl -s -L https://raw.githubusercontent.com/aumbadgah/configs/master/workstation/macos.12.1/install.sh | bash
```


## Manual steps

Import iTerm color scheme in `iTerm > Preferences > Profiles > Colors > Color Presets... > Import...`


## tmux short-keys

prefix `Meta + x`

prefix + `.` split new pane vertically

prefix + `:` split new pane horizontally

prefix + `h/j/k/l` move to pane

prefix + `r` reload `~/.tmux.conf` and `~/.zshrc`

