ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg_bold[red]%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg_bold[red]%}deleted"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg_bold[yellow]%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg_bold[yellow]%}modified"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg_bold[cyan]%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg_bold[cyan]%}untracked"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[red]%}➔"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[white]%}[%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg[white]%}]"   

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo "%{$fg[green]%}$%{$reset_color%}"; fi
}

# get the name of the branch we are on
function custom_git_prompt_info() {
  if [[ "$(git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$(git_prompt_ahead)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%})
%{$fg_bold[magenta]%}%n%{$reset_color%}@%{$fg_bold[green]%}%m%{$reset_color%}:%{$fg_bold[blue]%}%~%{$reset_color%}$(custom_git_prompt_info)%{$reset_color%}
%_$(prompt_char) '

RPROMPT='$(git_prompt_short_sha)$(git_prompt_status) %{$reset_color%}%{$fg[green]%}[%*]%{$reset_color%}'
