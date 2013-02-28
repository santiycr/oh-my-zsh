if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] || [ -n "$SSH_CONNECTION" ]; then
  SEP="☁ "
else
  SEP="•"
fi
PROMPT='%{$fg_no_bold[cyan]%}%n %{$fg_no_bold[yellow]%}%3~%{$reset_color%} %{$fg_no_bold[magenta]%}$SEP %{$reset_color%}'
RPROMPT='$(vi_mode_prompt_info) $(git_prompt_info) %{$reset_color%}[%*]'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_no_bold[green]%} ✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_no_bold[red]%} ✗%{$reset_color%}"
