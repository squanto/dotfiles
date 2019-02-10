#!/usr/bin/env bash

if [ "$(uname -s)" == "Darwin" ];
then
  # on mac
	# Install rvm keys
	echo "Installing rvm keys"
	curl -sSL https://rvm.io/mpapis.asc | gpg --import -
	curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

	echo "Installing rvm"
	curl -sSL https://get.rvm.io | bash -s stable --ruby
else
  # on ubuntu
	sudo apt-add-repository -y ppa:rael-gc/rvm
	sudo apt-get update
  sudo apt-get install software-properties-common
	sudo apt-get install rvm
	echo "\n\nTODO: Run command as login shell in profile preferences\n\n"
	echo "\n\nTODO: log out and log back in\n\n"
fi

# link
ln -s ~/.dotfiles/ruby/gemrc.symlink ~/.gemrc
ln -s ~/.dotfiles/ruby/irbrc.symlink ~/.irbrc
ln -s ~/.dotfiles/ruby/rspec.symlink ~/.rspec
