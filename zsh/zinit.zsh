# https://github.com/zdharma-continuum/zinit
# https://www.cnblogs.com/hongdada/p/14048612.html
# https://asmcn.icopy.site/awesome/awesome-zsh-plugins/#tutorials
# https://github.com/Aloxaf/dotfiles/blob/master/zsh/.config/zsh/zshrc.zsh

# zinit light-mode depth"1" for \
#   romkatv/zsh-defer

zinit light-mode for \
 OMZL::completion.zsh \
 OMZL::key-bindings.zsh

zinit wait"1" light-mode lucid for \
 OMZP::git \
 OMZP::sudo

zinit ice lucid wait depth'1' multisrc"shell/{completion,key-bindings}.zsh" id-as"junegunn/fzf_completions" pick"/dev/null"
zinit light junegunn/fzf

# https://zsh-abbr.olets.dev/
zinit ice wait lucid depth'1' multisrc"zsh-abbr.zsh"
zinit light olets/zsh-abbr

# Plugins
zinit wait"1" lucid depth"1" light-mode for \
  arzzen/calc.plugin.zsh \
  torifat/npms \
  brymck/print-alias \
  djui/alias-tips \
  wfxr/forgit \
  Bhupesh-V/ugit

zinit wait lucid depth'1' for \
  as"program" pick"bin/git-fuzzy" bigH/git-fuzzy \
  atload"zicompinit; zicdreplay"  Aloxaf/fzf-tab

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zinit ice atclone"./zplug.zsh" atpull"%atclone"
zinit light g-plane/pnpm-shell-completion

# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k

# 应用程序
zinit ice lucid wait"2" from"gh-r" as"program" mv"delta* -> delta" pick"delta/delta"
zinit light dandavison/delta

zinit ice lucid wait from"gh-r" as"program" \
                    pick"zoxide/zoxide" \
                    atload'eval "$(zoxide init --cmd j zsh)"'
zinit light ajeetdsouza/zoxide
