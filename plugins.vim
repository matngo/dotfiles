set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
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
Plugin 'easymotion/vim-easymotion'
Plugin 'Integralist/vim-mypy'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-syntastic/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'google/vim-jsonnet'
Plugin 'tpope/vim-unimpaired'
Plugin 'alfredodeza/pytest.vim'

call vundle#end()


" Colorscheme
colorscheme gruvbox

" Ale Config
let g:ale_linters = {
\   'python': ['mypy', 'flake8', 'pylint'],
\   'json':['jsonlint'],
\   'javascript':['eslint'],
\   'html':['tidy']
\}
let g:ale_fixers = {
\   'python': ['add_blank_lines_for_python_control_statements', 'isort', 'trim_whitespace'],
\   'json':['prettier', 'fixjson'],
\   'javascript': ['eslint'],
\   'vue': ['eslint'],
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
" autocmd BufWritePre *.py silent! execute ':Black'

" JS config
autocmd BufWritePre *.js execute ':ALEFix'
autocmd BufWritePre *.vue execute ':ALEFix'


" Latex Config
let g:latex_to_unicode_auto = 1


" Vue config
autocmd BufNewFile,BufRead *.vue set ft=vue

"jsonvim
autocmd Filetype json let g:indentLine_setConceal = 0


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

imap ,, <C-y>,

" Syntastic checkers
let g:syntastic_python_checkers = ["mypy"]

" Jedi config
set completeopt-=preview


" Fugitive
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gw :Gwrite<CR>
noremap <Leader>gr :Gread<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gc :Gcommit<CR>

" Unimpaired
nmap ( [
nmap ) ]
omap ( [
omap ) ]
xmap ( [
xmap ) ]

" Pytest
noremap <Leader>pt :Pytest project verbose<CR>
