python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

syntax on
set wildmenu
set encoding=utf-8
set hidden
"set cmdheight=2
set tabstop=4
set laststatus=2
set updatetime=300
set shortmess+=c

map <S-n> :NERDTreeToggle<CR>
autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=Grey ctermbg=NONE
set fillchars+=vert:\|
let g:NERDTreeWinPos = "right"
nnoremap <Tab> <c-w>w
noremap <S-m> :set invnumber invrelativenumber<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1

imap jj <Esc>
let g:ctrlp_map = '<S-f>'
let g:sneak#label = 1
let g:ctrlp_working_path_mode = 'ra'

set t_Co=256
colorscheme slate
set background=dark

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'justinmk/vim-sneak'

call vundle#end()
filetype plugin indent on
