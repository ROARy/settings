# Git Branch Addition
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Brew Stuff
alias brewup='brew update && brew upgrade --all && brew cleanup'

# GENERAL
PS1="\w\[\033[97m\]\$(parse_git_branch)\[\033[00m\]> "

## Go / GoLang Stuff
export GOPATH=$HOME/gospace
export PATH=$PATH:$GOPATH/bin

## Set global editor
export VISUAL=/usr/local/bin/atom
export EDITOR=/usr/local/bin/atom

# ALIASES
alias ll='ls -lahG'
alias h='history'
