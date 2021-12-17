export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export EDITOR=nvim
export ELECTRON_MIRROR="https://cdn.npm.taobao.org/dist/electron/"
export NVM_DIR="$HOME/.nvm"
export JAVA_HOME=/usr/lib/jvm/java-11-jetbrains
export PATH=$JAVA_HOME/bin:$PATH
export BROWSER=/usr/bin/firefox-developer-edition
export GH_CDN=https://cdn.jsdelivr.net/gh

# 插件配置
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="可用别名: "
export PRINT_ALIAS_IGNORE_REDEFINED_COMMANDS=true
export PRINT_ALIAS_IGNORE_ALIASES=(ls ll rm la vim vi ra =)
export NVM_AUTO_USE=true
# export RANGER_ZLUA=$HOME/.zinit/plugins/skywind3000---z.lua/z.lua

## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
[ "$HISTSIZE" -lt 50000 ] && HISTSIZE=50000
[ "$SAVEHIST" -lt 10000 ] && SAVEHIST=10000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# 显示隐藏文件
setopt globdots

# Use vi key bindings in ZSH
setopt vi
