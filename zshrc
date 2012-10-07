ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/kde/bin:/usr/bin/core_perl:/opt/qt/bin:/home/justin/.gem/ruby/1.9.1/bin
export EDITOR=vim

source ~/.aliases

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

