#!/bin/bash

npm_install () {
  if ! command_exists "$1" ; then
    echo "Installing $1"
    npm install -g "$1"
  else
    echo "Updating $1"
    npm update -g "$1"
  fi
}

if ! command_exists nvm ; then
  brew install nvm

  mkdir -p ~/.nvm

  export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh
fi

nvm install node

npm_install grunt-cli
npm_install bower
npm_install yo
npm_install express-generator
