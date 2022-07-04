set nocompatible
filetype off

" Download plug-ins to the ~/.vim/plugged/ directory
call plug#begin()

Plug 'ayu-theme/ayu-vim'
" Uncomment if JS development
"Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'sheerun/vim-polyglot'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Badacadabra/vim-archery'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scheakur/vim-scheakur'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'derekwyatt/vim-fswitch'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cormacrelf/vim-colors-github'
"Plug 'itchyny/lightline.vim' 
"Plug 'ycm-core/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

call plug#end()
filetype plugin indent on

set nu
syntax on
colorscheme gruvbox
" colorscheme github

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set hlsearch
set background=dark
set termguicolors
" Uncomment if not using Neovim.
"set termwinsize=12x0
set splitbelow
set mouse=a

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines']}
let g:ale_linters = {
\  'rust': ['analyzer'],
\}
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

let ayucolor="dark"

nmap <F2> :NERDTreeToggle<CR>

" Settings of lightline.
set laststatus=2
