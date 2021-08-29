# https://github.com/zdharma/zinit
# https://www.cnblogs.com/hongdada/p/14048612.html
# https://asmcn.icopy.site/awesome/awesome-zsh-plugins/#tutorials
# https://github.com/Aloxaf/dotfiles/blob/master/zsh/.config/zsh/zshrc.zsh

GH_CDN=https://cdn.jsdelivr.net

zinit light-mode depth"1" for \
  romkatv/zsh-defer

zinit wait lucid depth"1" atload"zicompinit; zicdreplay" blockf for \
  zsh-users/zsh-completions

zinit light-mode for \
  OMZL::completion.zsh \
  OMZL::key-bindings.zsh

zinit wait"1" light-mode lucid for \
  OMZP::git \
  OMZP::archlinux \
  OMZP::thefuck

zinit ice lucid wait depth'1' multisrc"shell/{completion,key-bindings}.zsh" id-as"junegunn/fzf_completions" pick"/dev/null"
zinit light junegunn/fzf

# Plugins
zinit wait"1" lucid depth"1" light-mode for \
  arzzen/calc.plugin.zsh \
  torifat/npms \
  brymck/print-alias \
  djui/alias-tips \
  wfxr/forgit \
  Bhupesh-V/ugit

# zinit wait depth'1' lucid atload'eval \
#   "$(lua z.lua --init zsh once enhanced)"' for \
#   skywind3000/z.lua

zinit wait lucid depth'1' for \
  as"program" pick"bin/git-fuzzy" bigH/git-fuzzy \
                                  lukechilds/zsh-nvm \
  atload"zicompinit; zicdreplay"  Aloxaf/fzf-tab \
  atload"_zsh_autosuggest_start"  zsh-users/zsh-autosuggestions \
                                  zdharma/fast-syntax-highlighting

# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k

unset GH_CDN
