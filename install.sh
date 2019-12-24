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

curl -o ~/.vimrc https://raw.githubusercontent.com/aumbadgah/configs/master/.vimrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/aumbadgah/configs/master/.tmux.conf
curl -o ~/.zshrc https://raw.githubusercontent.com/aumbadgah/configs/master/.zshrc
curl -o /usr/local/bin/reload-config-files https://raw.githubusercontent.com/aumbadgah/configs/master/bin/reload-config-files
chmod +x /usr/local/bin/reload-config-files

