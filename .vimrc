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
call plug#end()


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

