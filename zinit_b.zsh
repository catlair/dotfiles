# program
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
                    pick"zoxide/zoxide" \
                    atload'eval "$(zoxide init --no-aliases zsh)"'
zinit light ajeetdsouza/zoxide

# 应用程序 结束 -----------
