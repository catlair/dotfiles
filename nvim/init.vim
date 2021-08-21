" https://www.ruanyifeng.com/blog/2018/09/vimrc.html

" 高亮当前行
set cursorline
" 显示行号
set number
set relativenumber
" 缩进
set tabstop=2
set expandtab
set showcmd
set autoindent
set shiftwidth=2
set mouse=a
set scrolloff=5
set showmatch

" 使用 vim-plug
call plug#begin('~/.vim/plugged')

" Plug 'vim-scripts/fcitx.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Status line
Plug 'theniceboy/eleline.vim'
Plug 'ojroques/vim-scrollstatus'

" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'

call plug#end()
