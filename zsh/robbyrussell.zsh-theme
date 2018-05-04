# local host_color="green"
# if [ -n "$SSH_CLIENT" ]; then
#   local host_color="red"
# fi

local PROMPT_PREFIX=''
if [ -n "$SSH_CLIENT" ]; then
  local PROMPT_PREFIX='%{$fg_bold[red]%}%n@%m:'
fi

# function {
#     if [[ -n "$SSH_CLIENT" ]]; then
#         local PROMPT_PREFIX='%{$fg_bold[red]%}%n@%m:'
#     else
#         local PROMPT_PREFIX=''
#     fi
# }



PROMPT='${PROMPT_PREFIX}%{$fg_bold[blue]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
