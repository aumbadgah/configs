#!/bin/sh

set -e

curl -o ~/.vimrc https://raw.githubusercontent.com/aumbadgah/configs/master/.vimrc
curl -o ~/.tmux https://raw.githubusercontent.com/aumbadgah/configs/master/.tmux

tmux source-file ~/.tmux.conf

