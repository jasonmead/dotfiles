alias showHidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"

# GIT
alias gk="gitk --all &"
alias gac="git add -A; git commit -am $1"
alias pullall="git pull --recurse-submodules; git submodule update --recursive"
alias gs="git status"
alias gb="git branch -a"
alias prune="git remote prune origin"
alias merge="git merge $1 -s recursive -Xignore-all-space"
alias gdb="git branch -D $1"
alias gdbo="git push origin --delete $1"
