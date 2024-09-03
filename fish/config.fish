if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

starship init fish | source

alias c="clear"

alias trm="trash-put"
alias rm="rm -i"

alias ls='exa'                                                          # ls
alias l='exa -lbF --git'                                                # list, size, type, git
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhaF --icons --git --color-scale'  # all list
alias lla='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# specialty views
alias lS='exa -1'                                                              # one column, just names
alias lt='exa --tree --level=2'     

# 如果有 nvim 则使用 nvim 否则使用 vim
if test -n "$(command -v nvim)"
    alias vim=nvim
end

abbr --add c clear
abbr --add fsf fastfetch

  
abbr --add ll 'exa -lbGF --git'                                             # long list
abbr --add llm 'exa -lbGd --git --sort=modified'                            # long list, modified date sort
abbr --add la 'exa -lbhaF --icons --git --color-scale'  # all list
abbr --add lla 'exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
abbr --add lx 'exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# specialty views
abbr --add lS 'exa -1'                                                              # one column, just names
abbr --add lt 'exa --tree --level=2'     
