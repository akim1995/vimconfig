" Put this line in terminal to install plug plugin manager
" and dont forget to install curl first
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"Help
"to get value of set options hlsearch?
"# General
set	tabstop=2 " for tab characters that apper 2 spaces-wide
set shiftwidth=0	" Number of auto-indent spaces 0 == copy tabstop 
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set hlsearch	"Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set autoindent	" Auto-indent new lines
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
filetype indent plugin on
"set conceallevel=1
let mapleader="," "Leader key is ,
"map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
"let g:javascript_conceal_return               = "⬅"

"# Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" PLUG
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Badacadabra/vim-archery'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-surround' " currounding with cs
Plug 'ctrlpvim/ctrlp.vim' "Ctrl + p fizzy finder
Plug 'tpope/vim-commentary' "vim gcc comments
Plug 'itchyny/lightline.vim' " vim status line
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
"Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate', { 'for': ['javascript', 'php'] }
Plug 'sheerun/vim-polyglot'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'itchyny/vim-gitbranch'
" Initialize plugin system
call plug#end()
"PlugInstall to install plugins

map <C-n> :NERDTreeToggle<CR>
"colorschemes
"colorscheme dracula

"=== ARCHERY COLORSCEME =======
colorscheme archery
let g:lightline = {
		\ 'colorscheme': 'archery',
		\'active': {
		\   'left': [ [ 'mode', 'paste' ],
		\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
		\ },
		\ 'component_function': {
		\   'gitbranch': 'fugitive#head'
		\ },
    \ }
"===============================

set termguicolors

set noswapfile
set noshowmode "remove standart status line
autocmd FileType * setlocal formatoptions-=o "remove continuation of comment lines on o

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"In normal mode or in insert mode, press Alt-j to move the current line down, or press Alt-k to move
"the current line up.
"
"After visually selecting a block of lines (for example, by pressing V then moving the cursor down),
"press Alt-j to move the whole block down, or press Alt-k to move the block up.

" cd for folder of currently openned file (only for this window or tab)
" in cmd mode % means filename %:p = absolute file path and :h removes filename from path

nnoremap <leader>cd :lcd %:p:h<CR>

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

iabbrev @@ akim.khalitov.ya@gmail.com

hi Normal guibg=NONE ctermbg=NONE
