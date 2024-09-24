# vim


#.bashrc setting

export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (rougify {}  || highlight -O ansi -l {} || coderay {} || cat {}) 2> /dev/null | head -500"'
export FZF_COMPLETION_TRIGGER='**'

GIT_PS1_SHOWDIRTYSTATE=false
GIT_PS1_SHOWCOLORHINTS=false
# PROMPT_COMMAND='__git_ps1 "[\u@\h:\w]" "\\\$ "'
# 定义不同颜色的代码
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
RESET="\[\e[0m\]"
EMPTY_STR="/"
# PROMPT_COMMAND='__git_ps1 "[\u@\h:\w]" "\\\$ "'
PROMPT_COMMAND=' __git_ps1 "${RED}$(basename ${VIRTUAL_ENV}${EMPTY_STR})${RESET} [${YELLOW}\u@\h${RESET}:${BLUE}\w${RESET}]" "\\\$ "'
#PROMPT_COMMAND=' __git_ps1 "${RED}$(basename ${VIRTUAL_ENV})${RESET} [${YELLOW}\u@\h${RESET}:${BLUE}\w${RESET}]" "\\\$ "'


