
set background=dark
colorscheme industry 

" Don't try to be vi compatible
set nocompatible


" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on


" Show line numbers
set number

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd


" Search down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" Disaplay all matching files when we tabl complete
set wildmenu


" Disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

