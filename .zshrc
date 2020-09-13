# GENERAL
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
PROMPT='%0~%B%F{255}$(parse_git_branch)%f%b> '


# Brew Stuff
alias brewup='brew update && brew upgrade && brew cleanup'

## Go / GoLang Stuff
export GOPATH=$HOME/gospace
export PATH=$PATH:$GOPATH/bin

## Set global editor
#export VISUAL=/usr/local/bin/atom
#export EDITOR=/usr/local/bin/atom

# ALIASES
alias ll='ls -lahG'
alias h='history'

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


