set nocompatible
set number
set ruler
syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set pastetoggle=<F6>

set foldmethod=indent
set foldlevelstart=10
set hlsearch
set modeline

" Search down into subfolder
set path+=**    
set wildmenu


" Install vimplug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'                   " Fuzzy finder
Plug 'scrooloose/nerdtree'              " Nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'      " Nerdtree git control
Plug 'airblade/vim-gitgutter'           " Git lint
Plug 'flazz/vim-colorschemes'           " Colorschemes
Plug 'vim-python/python-syntax'         " Python syntax
Plug 'sheerun/vim-polyglot'             " Syntax highlight
call plug#end()

" Git Gutter"
set updatetime=250
let g:gitgutter_max_signs = 500
" No mapping
let g:gitgutter_map_keys = 0
" Colors
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" Python syntax
let g:python_highlight_all = 1
let g:python_highlight_indent_errors = 0
let g:python_highlight_space_errors = 0
let g:python_highlight_func_calls = 0

let g:NERDTreeIgnore=['\~$', '.pyc', '__pycache__']

let g:ctrlp_custom_ignore = {
    \ 'dir': '\v(\.git|__pycache__)$',
    \ 'file': '\v\.(swp|swo|pyc)$',
    \ 'link': '',
    \}

nnoremap Ñ :NERDTreeToggle<CR>
nnoremap tt :syntax sync fromstart<CR>

function! ToggleRelativeNumber()
    if &relativenumber
        set norelativenumber
    else
        set relativenumber
    endif
endfunction

nmap ñ :call ToggleRelativeNumber()<CR>

