#!/usr/bin/env bash

# janus(vim distro) install
curl -L https://bit.ly/janus-bootstrap | bash
ln -s ~/.dotfiles/vimrc.symlink ~/.vimrc.after
