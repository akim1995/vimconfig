"# General
set	tabstop=2 "Number of spaces that a <Tab> in the file counts for.
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set conceallevel=1
let mapleader="," "Leader key is ,
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

let g:javascript_conceal_return               = "⬅"

"# Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" PLUG
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-surround' " currounding with cs
Plug 'ctrlpvim/ctrlp.vim' "Ctrl + p fizzy finder
Plug 'tpope/vim-commentary' "vim gcc comments
Plug 'itchyny/lightline.vim' " vim status line
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'pangloss/vim-javascript'

" Initialize plugin system
call plug#end()
"PlugInstall to install plugins

map <C-n> :NERDTreeToggle<CR>
"colorschemes
colorscheme dracula

set noswapfile
set noshowmode "remove standart status line

