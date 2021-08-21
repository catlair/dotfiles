alias sdoc="sudo systemctl start docker.service"
alias stdoc="sudo systemctl stop docker.service"

alias c="clear"
alias ra="ranger"
alias .ra=". ranger"
alias vim="nvim"
alias rm="trash-put"

alias edzsh="code ~/.config/zsh"
alias edranger="code ~/.config/ranger"

## 需要安装 exa
# general use
alias ls='exa'                                                          # ls
alias l='exa -lbF --git'                                                # list, size, type, git
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# specialty views
alias lS='exa -1'                                                              # one column, just names
alias lt='exa --tree --level=2'                                         # tree
