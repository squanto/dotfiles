#!/usr/bin/env bash

echo "Installing janus for vim"
curl -L https://bit.ly/janus-bootstrap | bash

# link
ln -s ~/.dotfiles/vimrc.after.symlink ~/.vimrc.after
