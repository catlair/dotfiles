# https://github.com/zdharma/zinit
# https://www.cnblogs.com/hongdada/p/14048612.html
# https://asmcn.icopy.site/awesome/awesome-zsh-plugins/#tutorials
# https://github.com/Aloxaf/dotfiles/blob/master/zsh/.config/zsh/zshrc.zsh

zinit light-mode depth"1" for \
  romkatv/zsh-defer

zinit wait lucid atload"zicompinit; zicdreplay" blockf for \
  zsh-users/zsh-completions

# # 异步加载
# zinit wait lucid for \
#   ~/.config/zsh/async/nvm.zsh \
#   ~/.config/zsh/async/fuck.zsh

# Completions
zinit as"completion" for \
  OMZP::docker/_docker \
  OMZP::fd/_fd

zinit light-mode for \
  OMZL::completion.zsh \
  OMZL::key-bindings.zsh

zinit wait"1" light-mode lucid for \
  OMZP::fzf \
  OMZP::archlinux \
  OMZP::autojump \
  OMZP::thefuck

# Plugins
zinit wait"1" lucid depth"1" light-mode for \
  arzzen/calc.plugin.zsh \
  torifat/npms \
  brymck/print-alias \
  djui/alias-tips \
  wfxr/forgit

# 在 fzf-tab 之前使用
# zpcompinit; zpcdreplay
zinit wait lucid depth"1" atload"zicompinit; zicdreplay" for \
  Aloxaf/fzf-tab

zinit wait lucid depth"1" for \
  atload"_zsh_autosuggest_start" zsh-users/zsh-autosuggestions \
  zdharma/fast-syntax-highlighting

# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k

export ZSH_PLUGINS_ALIAS_TIPS_TEXT="可用别名: "
export PRINT_ALIAS_IGNORE_REDEFINED_COMMANDS=true
export PRINT_ALIAS_IGNORE_ALIASES=(ls ll rm la vim ra = )
