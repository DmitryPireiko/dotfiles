call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
"Colorschemes
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

"Mappings"
let g:mapleader = ','
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Swithing between the windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"map <Leader> <Plug>(easymotion-prefix)

"Color Theme
colorscheme PaperColor

"Airline
let g:airline_powerline_fonts = 1 
let g:airline#extensions#keymap#enabled = 0 
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode' 
let g:airline#extensions#xkblayout#enabled = 0 

"Tabulations
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Search
set hlsearch
set incsearch

"Indentations
"set foldcolumn=2

"Numerations
set number

"Syntax
syntax on

"Sound Off
set noerrorbells
set novisualbell

"Mouse
set mouse=a
