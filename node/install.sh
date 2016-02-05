#!/bin/bash

brew install nvm

mkdir -p ~/.nvm

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

nvm install node
nvm use node

npm install -g grunt-cli
npm install -g bower
npm install -g yo
npm install -g express-generator
