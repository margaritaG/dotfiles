local PROMPT_PREFIX=""
local PROMPT_PATH="%c"
if [ -n "$SSH_CLIENT" ]; then
  local PROMPT_PREFIX="%{$fg_bold[green]%}%n@%m:"
  local PROMPT_PATH="%~"
fi

PROMPT='${PROMPT_PREFIX}%{$fg_bold[blue]%}${PROMPT_PATH}%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
