syntax on
imap jj <Esc>
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set nocompatible
set hlsearch
filetype off

let g:jedi#completions_enabled = 1
let g:ctrlp_map = '<S-f>'
let g:ctrlp_cmd = 'CtrlP'
let g:airline_theme='minimalist'

map <S-n> :NERDTreeToggle<CR>
nmap <S-t> :TagbarToggle<CR>
nnoremap <Tab> <c-w>w

command! -complete=file -nargs=+ SS execute 'SideSearch <args>'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python map <buffer> <C-f> :call flake8#Flake8()<CR>

source /Users/svadali/.vim/side-search.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nvie/vim-flake8'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pydoc.vim'
Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on
