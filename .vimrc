python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

let &t_ti.="\e[1 q"
let &t_SI.="\e[1 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
set laststatus=2

autocmd vimenter * ++nested colorscheme gruvbox

set bg=dark
let g:gruvbox_termcolors=16

let g:kite_tab_complete=1
let g:kite_supported_languages = ['*']

set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set number relativenumber

imap jj <Esc>
nnoremap <Tab> <c-w>w
map <S-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<S-f>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required
