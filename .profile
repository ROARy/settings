
# git stuff
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\w\[\033[97m\]\$(parse_git_branch)\[\033[00m\]> "

## Terminal Stuff
export EDITOR=/usr/local/bin/atom

export PATH="/usr/share:$PATH"

# Brew Stuff
alias brewup='brew update && brew upgrade && brew cleanup'

## JAVA STUFF
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

## MAVEN STUFF
export MAVEN_OPTS="-Dorg.slf4j.simpleLogger.dateTimeFormat=HH:mm:ss,SSS \
                   -Dorg.slf4j.simpleLogger.showDateTime=true"

# ALIASES
alias ll='ls -lahG'

# update PATH to include personal bin if it exists
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

## Last setup required
eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Ruby
export GEM_HOME="$HOME/.gem"
eval "$(rbenv init -)"
