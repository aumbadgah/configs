#!/bin/sh

set -ev

if [ ! brew ]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install \
	curl \
	git \
	jq \
	libpng \
	node \
	nvm \
	openssl \
	pyenv \
	telnet \
	tig \
	tmux \
	yarn \
	zlib \
	zsh \
	zsh-syntax-highlighting | true

brew cask install iterm | true

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

curl -o ~/.vimrc https://raw.githubusercontent.com/aumbadgah/configs/master/.vimrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/aumbadgah/configs/master/.tmux.conf
curl -o ~/.zshrc https://raw.githubusercontent.com/aumbadgah/configs/master/.zshrc

tmux source-file ~/.tmux.conf

