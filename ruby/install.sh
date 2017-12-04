#!/usr/bin/env bash

if [ "$(uname -s)" == "Darwin" ];
then
  # on mac
	# Install rvm keys
	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
	curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -

	# install rvm with latest ruby
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
