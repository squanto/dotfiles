#!/usr/bin/env bash

# back up stuff
if [ -f ~/.gitconfig ]; then
	mv ~/.gitconfig ~/.gitconfig.backup
fi
if [ -f ~/.gitignore ]; then
	mv ~/.gitignore ~/.gitignore.backup
fi

# link goodies
ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore.symlink ~/.gitignore

# set git ignore file with username (that changes)
USERNAME=$(whoami) git config --global core.excludefile /Users/$USERNAME/.gitignore
