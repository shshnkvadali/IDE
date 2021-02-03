python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

syntax on
set wildmenu
set tabstop=4
set laststatus=2
set laststatus=2

highlight LineNr ctermfg=white
highlight VertSplit cterm=NONE
nnoremap <Tab> <c-w>w
map <S-n> :NERDTreeToggle<CR>
noremap <S-l> :set invnumber invrelativenumber<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
au BufRead,BufNewFile *.sol setfiletype solidity

imap jj <Esc>
let g:ctrlp_map = '<S-f>'
let g:ctrlp_working_path_mode = 'ra'

let g:airline_theme='murmur'
set t_Co=256
colorscheme slate
set background=dark
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'neoclide/coc.nvim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'TovarishFin/vim-solidity'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
