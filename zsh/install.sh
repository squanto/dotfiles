#!/usr/bin/env bash

if [ -n "$ZSH_VERSION" ]; then
	echo "Zsh installed"
elif [ -n "$BASH_VERSION" ]; then
	echo "Installing zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
echo "run: \n\n\t chsh -s $(which zsh) \n\n to set zsh as default shell"
