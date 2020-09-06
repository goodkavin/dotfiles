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
