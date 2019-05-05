# vi mode for navigation
set -o vi

# aliases
unalias -a
alias a='alias'

# give me more bash history
export HISTSIZE=1000

# git aliases
a g='git'
a gco='g checkout'

for i in /usr/local/etc/bash_completion.d/* ; do
    source $i
done

# git prompt
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  export PS1="\n$WHITEBOLD\u $GREEN\A \[\033[00m\]: $CYAN\w\[\033[00m\] $PURPLE\$(__git_ps1) \n$RED\! $WHITEBOLD$\[\033[00m\] "
}

prompt

export JAVA_HOME="$(/usr/libexec/java_home -v 12)"
export RUNTIME_JAVA_HOME="$(/usr/libexec/java_home -v 12)"
