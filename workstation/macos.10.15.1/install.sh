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

curl -o ~/.vimrc https://raw.githubusercontent.com/aumbadgah/configs/master/workstation/macos.10.15.1/.vimrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/aumbadgah/configs/master/workstation/macos.10.15.1/.tmux.conf
curl -o ~/.zshrc https://raw.githubusercontent.com/aumbadgah/configs/master/workstation/macos.10.15.1/.zshrc
curl -o /usr/local/bin/configs-reload https://raw.githubusercontent.com/aumbadgah/configs/master/workstation/macos.10.15.1/bin/configs-reload
chmod +x /usr/local/bin/configs-reload
curl -o /usr/local/bin/configs-install https://raw.githubusercontent.com/aumbadgah/configs/master/workstation/macos.10.15.1/bin/configs-install
chmod +x /usr/local/bin/configs-install

