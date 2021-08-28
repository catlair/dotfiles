# dotfiles

嘗試用 [dotbot](https://github.com/anishathalye/dotbot) ，克隆倉庫後運行 `./install`

[`pacman_require.txt`](./pacman_require.txt) 是所涉及到的大部分终端应用程序，基于 arch 的包名，其他发行版可能不一样

```bash
sudo pacman -S $(cat pacman_require.txt)
```

或者

```bash
./dotbot/bin/dotbot -p dotbot-yay/yay.py -c packages.conf.yaml
```

## ZSH

为避免不必要的困扰，请至少阅读 `aliases.zsh` 和 `env.zsh` 中的配置

- `zsh` 插件管理 [Zinit](https://github.com/zdharma/zinit)
- `ls` 别名：安装 [exa](https://github.com/ogham/exa)
- `rm` 别名：安装 [trash-cli](https://github.com/andreafrancia/trash-cli) 用于提供回收站功能
- `vim` 别名：安装 [neovim](https://github.com/neovim/neovim)

### [z.lua](https://github.com/skywind3000/z.lua)

快速路径切换工具（类似 z.sh / autojump / fasd），兼容 Windows 和所有 Posix Shell 以及 Fish Shell，同时包含了众多改进。

需要预先安装 `lua` （必须）， `fzf`（可选）

在 zsh 下使用下面脚本可从历史记录中的路径预热 `~/.zlua`

```bash
fc -ln 0|grep -o "^cd [~/].*"|sed -e "s|cd ||" -e "s|~|$HOME|" -e 's|\\ | |' -e "s|/$||"|sort|uniq|while read -r d; do test -d "$d" && echo "$d|1|0"; done >> ~/.zlua
```

### [fzf-tab](https://github.com/Aloxaf/fzf-tab)

主要依赖于 [fzf](##FZF)

预览文件时可选依赖 `exa`, `bat` ,`chafa` and `lesspipe` 可修改文件 `zsh/.lessfilter.sh` 替换。

## ranger

[ranger is a console file manager with VI key bindings.](https://github.com/ranger/ranger)

### 依赖

- `ueberzug` 预览图片时使用，通过包管理安装

## alacritty

[A fast, cross-platform, OpenGL terminal emulator](https://github.com/alacritty/alacritty)

- 终端字体 [MesloLGS NF](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)

## FZF

[fzf is a general-purpose command-line fuzzy finder.](https://github.com/junegunn/fzf)

- 查找依赖于 `fd` 可以修改为默认的 `find`

## neovim

使用 [vim-plug](https://github.com/junegunn/vim-plug) 管理插件（通过 Github 安装）
