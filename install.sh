#!/bin/sh

set -ev

curl -o ~/.vimrc https://raw.githubusercontent.com/aumbadgah/configs/master/.vimrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/aumbadgah/configs/master/.tmux.conf
curl -o ~/.zshrc https://raw.githubusercontent.com/aumbadgah/configs/master/.zshrc

tmux source-file ~/.tmux.conf

