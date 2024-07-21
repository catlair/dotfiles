alias sdoc="sudo systemctl start docker.service"
alias stdoc="sudo systemctl stop docker.service"

alias fsf="fastfetch"

alias c="clear"
alias ra="ranger"
alias .ra=". ranger"

alias eddot="code ~/.dotfiles"

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias j='__zoxide_z'
alias ji='__zoxide_zi'
PRINT_ALIAS_IGNORE_ALIASES+=(j ji)

if builtin command -v nvim > /dev/null 2>&1 ; then
    alias vim="nvim"
fi

alias trm="trash-put"
alias rm="rm -i"

if builtin command -v exa > /dev/null 2>&1 ; then
  ## 需要安装 exa
  # general use
  alias ls='exa'                                                          # ls
  alias l='exa -lbF --git'                                                # list, size, type, git
  alias ll='exa -lbGF --git'                                             # long list
  alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
  alias la='exa -lbhaF --icons --git --color-scale'  # all list
  alias lla='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
  alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

  # specialty views
  alias lS='exa -1'                                                              # one column, just names
  alias lt='exa --tree --level=2'                                         # tree
else
    if ls --color > /dev/null 2>&1 ; then
            alias ls='ls --color -F'
            alias la='ls --color -F -a'
            alias ll='ls --color -F -l'
            alias lla='ls --color -F -a -l'
    else # for BSD version
            alias la='ls -a'
            alias ll='ls -l'
            alias lla='ls -al'
    fi
fi
