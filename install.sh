#!/bin/sh

set -ev

if [ ! brew ]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update || brew update
brew upgrade
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
	zsh-syntax-highlighting
brew cask install iterm2

curl -o ~/.bash_profile https://raw.githubusercontent.com/aumbadgah/configs/master/.bash_profile
curl -o ~/.bashrc https://raw.githubusercontent.com/aumbadgah/configs/master/.bashrc
curl -o ~/.vimrc https://raw.githubusercontent.com/aumbadgah/configs/master/.vimrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/aumbadgah/configs/master/.tmux.conf
curl -o ~/.zshrc https://raw.githubusercontent.com/aumbadgah/configs/master/.zshrc

tmux source-file ~/.tmux.conf

