source ~/.git-prompt.sh
fpath=(~ $fpath)
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
autoload -Uz compinit && compinit
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '
