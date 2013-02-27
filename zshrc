ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /etc/profile
export PATH=$PATH/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/kde/bin:/usr/bin/core_perl:/opt/qt/bin:/home/justin/.gem/ruby/1.9.1/bin
export EDITOR=vim

# Use ^X^E to edit the current command line in Vim
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

source ~/.aliases
if [ -f ~/.localaliases ]; then
  source ~/.localaliases
fi
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
