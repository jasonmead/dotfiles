#!/bin/bash

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
    heading "Installing Homebrew"

    #Skip the "Press enter to continue…" prompt.
    true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew prune
brew doctor

source ~/dotfiles/tools/install.sh
source ~/dotfiles/iterm/install.sh
source ~/dotfiles/go/install.sh
source ~/dotfiles/vscode/install.sh

brew cleanup