#!/bin/bash

command_exists () {
  command -v "$1" &> /dev/null ;
}

brew_install () {
  if ! command_exists "$1" ; then
    echo "Installing $1"
    brew install "$1"
  else
    echo "Upgrading $1"
    brew upgrade "$1"
  fi
}

brew_cask_install() {
  if ! command_exists "$1" ; then
    echo "Installing $1"
    brew cask install "$1"
  fi
}

if ! command_exists brew ; then
    true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating brew formulae"
brew update
brew prune
brew doctor

source ~/dotfiles/tools/install.sh
source ~/dotfiles/node/install.sh
source ~/dotfiles/atom/install.sh
source ~/dotfiles/iterm/install.sh
source ~/dotfiles/go/install.sh
source ~/dotfiles/spotify/install.sh

brew cask cleanup
brew cleanup

source ~/.zshrc
