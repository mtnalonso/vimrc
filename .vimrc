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

" Search down into subfolder
set path+=**    
set wildmenu

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'               " Fuzzy finder
Plug 'scrooloose/nerdtree'              " Nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'      " Nerdtree git control
Plug 'airblade/vim-gitgutter'           " Git lint
Plug 'rust-lang/rust.vim'               " Rust language syntax
Plug 'cespare/vim-toml'                 " Cargo TOML syntax
Plug 'nelsyeung/twig.vim'               " Twig syntax
call plug#end()


let g:NERDTreeIgnore=['\~$', '.pyc', '__pycache__', 'node_modules', 'bower_components']

nnoremap Ñ :NERDTreeToggle<CR>

function! ToggleRelativeNumber()
    if &relativenumber
        set norelativenumber
    else
        set relativenumber
    endif
endfunction

nmap ñ :call ToggleRelativeNumber()<CR>

