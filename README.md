# dotfiles

嘗試用 [dotbot](https://github.com/anishathalye/dotbot) ，克隆倉庫後運行 `./install`

[`pacman_require.txt`](./pacman_require.txt) 是所涉及到的大部分终端应用程序，基于 arch 的包名，其他发行版可能不一样

```bash
sudo pacman -S $(cat pacman_require.txt)
```

## ZSH

为避免不必要的困扰，请至少阅读 `aliases.zsh` 和 `env.zsh` 中的配置

- `zsh` 插件管理 [Zinit](https://github.com/zdharma/zinit)
- `ls` 别名：安装 [exa](https://github.com/ogham/exa)
- `rm` 别名：安装 [trash-cli](https://github.com/andreafrancia/trash-cli) 用于提供回收站功能
- `vim` 别名：安装 [neovim](https://github.com/neovim/neovim)

### [zoxide](https://github.com/ajeetdsouza/zoxide) 替代 z.lua

使用包管理直接安装  
将 zlua 数据转换为 zoxide

```bash
zoxide import --from z ~/.zlua
```

使用命令 `j` 和 `ji`

### [fzf-tab](https://github.com/Aloxaf/fzf-tab)

主要依赖于 [fzf](##FZF)

预览文件时可选依赖 `exa`, `bat` ,`chafa` and `lesspipe` 可修改文件 `zsh/.lessfilter.sh` 替换。

## ranger

[ranger is a console file manager with VI key bindings.](https://github.com/ranger/ranger)

### 依赖

- `ueberzug` 预览图片时使用，通过包管理安装
