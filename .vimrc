set nocompatible
filetype off

" Use the Vundle package manager. All plugins are declared
" between the Vundle begin() and end() calls.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Townk/vim-autoclose'
Plugin 'wincent/command-t'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'einars/js-beautify'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

" Set up the Base16 Tomorrow Dark theme
let base16colorspace=256
colorscheme base16-tomorrow
set background=dark

" Other codey settings
syntax on
set number
set ts=4
set noswapfile
" Search settings
set incsearch hlsearch

" Map F6 to toggle Tagbar
nmap <F8> :TagbarToggle<cr>

" The almighty leader key
let mapleader=";"

" NERDTree configuration and key mappings
map <C-n> :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
" Allow quit command to exit Vim if the NERDTree window is the last open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1

set laststatus=2
let g:airline_powerline_fonts = 1 
let g:airline_theme='base16'
set guifont=Inconsolata\ for\ Powerline
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

set foldmethod=syntax   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use"

set clipboard=unnamed

" TODO:
" Set up buffer key mappings: http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" Configure Airline status / tabline: https://github.com/bling/vim-airline
