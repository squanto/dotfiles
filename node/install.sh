#!/usr/bin/env bash

echo "installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# reload
source ~/.zshrc

# grab latest node version
nvm install node
