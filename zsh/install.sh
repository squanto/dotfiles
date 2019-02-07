#!/usr/bin/env bash

if [ -n "$ZSH_VERSION" ]; then
	echo "Zsh installed"
elif [ -n "$BASH_VERSION" ]; then
	echo "Installing zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	echo "Setting zsh as default"
	chsh -s /bin/zsh
fi
