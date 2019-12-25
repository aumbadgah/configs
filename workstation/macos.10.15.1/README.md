
# macos.10.15.1

### Description

Workspace for macOS

- iterm
- tmux
- zsh
- vim

### Install

```
curl -s -L https://raw.githubusercontent.com/aumbadgah/configs/master/workstation/macos.10.15.1/install.sh | bash
```

### Manual steps

- Install proper powerline font [Source Code Pro + Font Awesome](https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf). You need to select it in `iTerm > Preferences > Profiles > Text > Font`
- Import iTerm color scheme in `iTerm > Preferences > Profiles > Colors > Color Presets... > Import...`

### Short-keys

prefix `C + x`

prefix + `.` split new pane vertically
prefix + `:` split new pane horizontally

prefix + `Arrow key` move to pane

prefix + `i` reinstall configs from repo
prefix + `r` reload `~/.tmux.conf` and `~/.zshrc`
```
