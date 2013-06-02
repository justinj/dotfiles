# modified from the af-magic zsh theme found in oh-my-zsh

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'
eval my_magenta='$fg[magenta]'
eval my_white='$fg[white]'

# primary prompt
PROMPT='$my_orange%n$my_white$my_magenta:\
$COL%~\
$(git_time_since_commit)$COL$(git_prompt_info) \
$FG[105]%(!.#.★)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# # right prompt
# RPROMPT='$my_gray%n@%m%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$COL("
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange ❤%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$COL)%{$reset_color%}"

source ~/.zsh/func
