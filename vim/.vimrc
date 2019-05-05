set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

set nocompatible              " be iMproved, required
filetype off                  " required

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin 'valloric/youcompleteme'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'shawncplus/phpcomplete.vim'

" more Plugin commands
" ...
call vundle#end()            " required
filetype plugin indent on    " required

"" Visual Setting
set number

"" Tabs, May be overwritten by autocmd rules
set shiftwidth=4
set softtabstop=0
set tabstop=4
set expandtab