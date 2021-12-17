# https://github.com/zdharma-continuum/zinit
# https://www.cnblogs.com/hongdada/p/14048612.html
# https://asmcn.icopy.site/awesome/awesome-zsh-plugins/#tutorials
# https://github.com/Aloxaf/dotfiles/blob/master/zsh/.config/zsh/zshrc.zsh

zinit light-mode depth"1" for \
  romkatv/zsh-defer

zinit wait lucid depth"1" atload"zicompinit; zicdreplay" blockf for \
  zsh-users/zsh-completions

zinit light-mode for \
 OMZL::completion.zsh \
 OMZL::key-bindings.zsh

zinit wait"1" light-mode lucid for \
 OMZP::git \
 OMZP::sudo

zinit ice lucid wait depth'1' multisrc"shell/{completion,key-bindings}.zsh" id-as"junegunn/fzf_completions" pick"/dev/null"
zinit light junegunn/fzf

##program
# https://github.com/rinx/dotfiles/blob/main/zshrc

# 应用程序 开始 -----------
zinit ice wait lucid from"gh-r" as"program"
zinit light junegunn/fzf

zinit ice lucid wait from"gh-r" \
        as"program" \
        mv"fd* -> fd" \
        pick"fd/fd" \
        nocompletions
zinit light sharkdp/fd

zinit ice wait lucid from"gh-r" as"program" pick"bin/exa"
zinit light ogham/exa

zinit ice lucid wait from"gh-r" as"program" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit ice lucid wait from"gh-r" \
        as"program" \
        mv"ripgrep* -> rg" \
        pick"rg/rg" \
        nocompletions
zinit light BurntSushi/ripgrep

zinit ice depth'1' as'program' pick'ranger.py' atload'alias ranger=ranger.py'
zinit light ranger/ranger

## 按Q退出ranger时记住路径
## 用于兼容 zinit 安装的 ranger.py
function ranger.py {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger.py
        --cmd="map Q chain shell echo %d > "$tempfile"; quitall"
    )
    
    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}

if builtin command -v ranger.py > /dev/null 2>&1 ; then
    unset -f ranger
else
    unset -f ranger.py
fi

zinit ice lucid wait"2" from"gh-r" as"program" mv"delta* -> delta" pick"delta/delta"
zinit light dandavison/delta

zinit ice lucid wait"1" lucid from"gh-r" as"program" mv"jq-* -> jq" pick"jq"
zinit light stedolan/jq

zinit ice lucid wait"1" from"gh-r" ver"nightly" as"program" \
                    mv"nvim-* -> nvim" \
                    bpick"*linux*" \
                    pick"nvim/bin/nvim"
zinit light neovim/neovim

zinit ice lucid wait from"gh-r" as"program" \
                    mv"zoxide-* -> zoxide" \
                    pick"zoxide/zoxide" \
                    atload'eval "$(zoxide init --no-aliases zsh)"'
zinit light ajeetdsouza/zoxide

# 应用程序 结束 -----------

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
                                  zdharma-continuum/fast-syntax-highlighting

# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k
