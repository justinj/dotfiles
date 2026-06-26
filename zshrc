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

setopt prompt_subst

function jj_info() {
  jj root &>/dev/null || return

  local prefix full rest change_display bookmark
  prefix=$(jj log -r @ --no-graph -T 'change_id.shortest().prefix()' 2>/dev/null) || return
  [[ -z "$prefix" ]] && return
  full=$(jj log -r @ --no-graph -T 'change_id.short(8)' 2>/dev/null)
  rest="${full:${#prefix}}"
  change_display="%F{cyan}${prefix}%F{yellow}${rest}"

  bookmark=$(jj log -r @ --no-graph -T 'local_bookmarks.join(", ")' 2>/dev/null)

  if [[ -z "$bookmark" ]]; then
    bookmark=$(jj log -r 'latest(ancestors(@) & bookmarks())' --no-graph -T 'local_bookmarks.join(", ")' 2>/dev/null)
    [[ -n "$bookmark" ]] && bookmark="~${bookmark}"
  fi

  if [[ -n "$bookmark" ]]; then
    echo " %F{yellow}(${change_display}|${bookmark})%f"
  else
    echo " %F{yellow}(${change_display})%f"
  fi
}

prompt='%F{cyan}%2/%f$(jj_info) %F{blue}>%f '
