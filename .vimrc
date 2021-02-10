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

set t_Co=256
colorscheme slate
set background=dark

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'neoclide/coc.nvim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on
