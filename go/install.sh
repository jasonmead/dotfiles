#!/bin/sh
brew install go
go get -u github.com/golang/lint/golint

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

source ~/.gvm/scripts/gvm

gvm install go1.4
gvm use go1.4
gvm install go1.5
gvm use go1.5

brew install gpm # Go package mananger: https://github.com/pote/gvp
brew install gvp # Go versioning packager: https://github.com/pote/gvp