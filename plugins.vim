set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'storyn26383/vim-vue'
Plugin 'othree/html5.vim'
Plugin 'alvan/vim-closetag'
Plugin 'ambv/black'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/ZoomWin'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'tpope/vim-repeat'
Plugin 'google/vim-searchindex'
call vundle#end()


" Colorscheme
colorscheme gruvbox

" Ale Config
let g:ale_linters = {
\   'python': ['autopep8', 'flake8', 'isort', 'yapf'],
\   'json':['jsonlint'],
\   'javascript':['eslint'],
\   'html':['tidy']
\}
let g:ale_fixers = {
\   'python': ['add_blank_lines_for_python_control_statements', 'isort', 'trim_whitespace'],
\   'json':['prettier', 'fixjson'],
\   'javascript': ['eslint'],
\   'html':['tidy']
\}
let g:ale_json_fixjson_options = "-i 2"
" let g:ale_echo_cursor = 0
nmap <F8> <Plug>(ale_fix)

" Airline Config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Ctrl-P config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules'

" Black config
let g:black_linelength = 100
autocmd BufWritePre *.py execute ':Black'

" Latex Config
let g:latex_to_unicode_auto = 1


" Vue config
autocmd BufNewFile,BufRead *.vue set ft=vue
au BufRead,BufNewFile *.vue set filetype=html

"jsonvim
let g:indentLine_setConceal=0
