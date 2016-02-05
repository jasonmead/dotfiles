#!/bin/bash

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
    true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew prune
brew doctor

source ~/dotfiles/tools/install.sh
source ~/dotfiles/node/install.sh
source ~/dotfiles/atom/install.sh
source ~/dotfiles/iterm/install.sh
source ~/dotfiles/go/install.sh

brew cleanup
