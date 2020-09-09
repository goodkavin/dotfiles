set nocompatible

" Enhance command-line completion
set wildmenu

" Highlight searches
set hlsearch

" Don’t add empty newlines at the end of files
set binary
set noeol

syntax on

inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
filetype plugin indent on
runtime macros/matchit.vim

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set incsearch                  " Incremental search, hit <CR> to stop.
set ruler                      " Shows the current line number at the bottom.
set tabstop=4
set shiftwidth=4
set noexpandtab
set visualbell                 " Disable beep

" Change mapleader
let mapleader=","

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
