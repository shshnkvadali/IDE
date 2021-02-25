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

if has('nvim')
        inoremap <silent><expr> <c-space> coc#refresh()
else
        inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <silent> K :call <SID>show_documentation()<CR>


map <S-n> :NERDTreeToggle<CR>
autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=Grey ctermbg=NONE
set fillchars+=vert:\|
nnoremap <Tab> <c-w>w
noremap <S-l> :set invnumber invrelativenumber<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1
au BufRead,BufNewFile *.sol setfiletype solidity

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
Plugin 'tpope/vim-surround'
Plugin 'neoclide/coc.nvim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'justinmk/vim-sneak'

call vundle#end()
filetype plugin indent on
