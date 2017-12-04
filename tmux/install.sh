#!/usr/bin/env bash

if [ "$(uname -s)" != "Darwin" ]; then
	sudo apt-get install tmux
fi

ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
