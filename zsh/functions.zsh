# extract 解压
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1   ;;
            *.tar.gz)    tar xvzf $1   ;;
            *.tar.xz)    tar xvJf $1   ;;
            *.bz2)       bunzip2  $1   ;;
            *.rar)       unrar x  $1   ;;
            *.gz)        gunzip   $1   ;;
            *.tar)       tar xvf  $1   ;;
            *.tbz2)      tar xvjf $1   ;;
            *.tgz)       tar xvzf $1   ;;
            *.zip)       unzip    $1   ;;
            *.Z)         uncompress $1 ;;
            *.7z)        7z x     $1   ;;
            *.lzma)      lzma -dv $1   ;;
            *.xz)        xz -dv   $1   ;;
            *)           echo "不知道如何解压 '$1'..." ;;
        esac
    else
        echo "'$1' 不是有效的文件!"
    fi
}

# 按Q退出ranger时记住路径
function ranger {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map Q chain shell echo %d > "$tempfile"; quitall"
    )
    
    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}

function __getnpmpkg() {
  locks=("package-lock.json" "yarn.lock" "pnpm-lock.yaml")
  pkgs=("npm" "yarn" "pnpm")
  pkgcmd=npm
  i=0
  for lock in "${locks[@]}"; do
    i=$((i+1))
    if [ -f "$lock" ]; then
      pkgcmd=${pkgs[$i]}
      break
    fi
  done
  echo $pkgcmd
}

# 使用 fzf 查找 npm run
function npmr() {
  pkgcmd=$(__getnpmpkg)
  if [ ! -f package.json ]; then
    echo "package.json not found" >&2
  elif [ -z "$1" ]; then
    local command=$(jq -r '.scripts | keys[]' package.json | tr -d '"' | 
    fzf --reverse \
      --preview-window=:wrap \
      --preview "jq '.scripts.\"{}\"' package.json -r | tr -d '\"' | sed 's/^[[:blank:]]*//'")

    if [ -n "$command" ]; then
      eval "$pkgcmd run $command"
    fi
  else
    eval "$pkgcmd run $@"
  fi
}

# 使用 node 包管理器安装依赖
function npmi() {
  pkgcmd=$(__getnpmpkg)
  # 如果 $1 为空，则是安装全部依赖
  if [ -z "$1" ]; then
    eval "$pkgcmd install"
  elif [ $1 = '-D' ] && [ -z $2 ]; then
    eval "$pkgcmd install -D"
  else
    # 如果是 yarn 安装依赖 使用 add
    if [ "$pkgcmd" = "yarn" ]; then
      eval "$pkgcmd add $@"
    else
      eval "$pkgcmd install $@"
    fi
  fi
}

alias npmid='npmi -D'

# 使用 node 包管理器卸载依赖
function npmu() {
  pkgcmd=$(__getnpmpkg)
  # 如果 $@ 为空，则使用 fzf 查找依赖
  if [ -z "$@" ]; then
    local command=$(jq -r '{dependencies, devDependencies} | to_entries[] | .value | keys[]' package.json |
    fzf --reverse \
      --preview-window=:wrap \
      -m)
    if [ -n "$command" ]; then
      eval $(echo -n "$pkgcmd remove $command")
    fi
  else
    eval "$pkgcmd remove $@"
  fi
}
