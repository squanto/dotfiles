#!/usr/bin/env bash

echo "Installing zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Setting zsh as default"
chsh -s /bin/zsh

echo "Copying oh-my-zsh config"
[ -e ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.backup
ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc
