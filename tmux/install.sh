#!/usr/bin/env bash

# install tmux on linux
if [ "$(uname -s)" != "Darwin" ]; then
	sudo apt-get install tmux
fi

# link
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
