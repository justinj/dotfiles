# Aliases

alias k=kubectl
alias vim=nvim
alias ..="cd .."

# zsh settings

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Prompt
## Copied from https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33

# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='%2/ $(git_branch_name) > '
