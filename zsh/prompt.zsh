# right: branch  HH:MM   (muted)
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b  '
zstyle ':vcs_info:*' enable git
autoload -Uz add-zsh-hook
add-zsh-hook precmd vcs_info
setopt PROMPT_SUBST

PROMPT='%(?.%F{5}.%F{1})➜%f %F{default}%1~%f '
RPROMPT='%F{8}${vcs_info_msg_0_}%D{%H:%M}%f'
