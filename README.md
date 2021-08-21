# dotfiles

嘗試用 [dotbot](https://github.com/anishathalye/dotbot) ，克隆倉庫後運行 `./install`

## ZSH

加载方式：在 `~/.zshrc` 最后增加 `source ~/.config/zsh/zshrc`

- `zsh` 插件管理：需要通过 Github 安装 [Zinit](https://github.com/zdharma/zinit)
- `ls` 别名：安装 [exa](https://github.com/ogham/exa)
- `rm` 别名：安装 [trash-put](https://github.com/andreafrancia/trash-cli)
- `vim` 别名：安装 [neovim](https://github.com/neovim/neovim)

### fzf-tab

主要依赖于 [fzf](##FZF)

预览文件时可选依赖 `exa`, `bat` ,`chafa` and `lesspipe`（`lesspipe.sh`）可修改文件 `zsh/.lessfilter.sh` 替换。

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
