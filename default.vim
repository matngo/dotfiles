set nocompatible
set hidden
set t_Co=256
set background=dark
set encoding=utf-8
set fileencodings=utf-8
set incsearch
set splitright
set cursorline
let mapleader="!"
set tags=./tags
set clipboard=unnamedplus
set number
set updatetime=100
let &guifont=&guifont
set tabstop=4
set shiftwidth=4
set expandtab


" Virtual env autocompletion config
let venv_path = $VIRTUAL_ENV
if strlen(venv_path)
    let g:ycm_python_binary_path = $VIRTUAL_ENV . '/bin/python'
else
    let g:ycm_python_binary_path = 'python'
endif


filetype plugin indent on 
syntax enable

autocmd BufNewFile,BufRead *.babelrc set ft=javascript
