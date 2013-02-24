ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /etc/profile
export PATH=$PATH/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/kde/bin:/usr/bin/core_perl:/opt/qt/bin:/home/justin/.gem/ruby/1.9.1/bin
export EDITOR=vim

source ~/.aliases
if [ -f ~/.localaliases ]; then
  source ~/.localaliases
fi
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
