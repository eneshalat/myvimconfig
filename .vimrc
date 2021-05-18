set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

set nu
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set hlsearch
set background=dark

set termwinsize=12x0
set splitbelow
set mouse=a

Plugin 'sheerun/vim-polyglot'
Plugin 'cocopon/iceberg.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'Badacadabra/vim-archery'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'scheakur/vim-scheakur'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'derekwyatt/vim-fswitch'
"Plugin 'ycm-core/youcompleteme'

"Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

let g:AutoPairsShortcutToggle = '<C-P>'

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = 'left'     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns



nmap <F2> :NERDTreeToggle<CR>
