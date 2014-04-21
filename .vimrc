" show line numbers
set nu

" show what you are typing as a command
set showcmd

" set indents to two spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Associate Drupal files with php syntax
au BufNewFile,BufRead *.module setf php

" Set the default color scheme and turn on syntac highlighting
:colorscheme desert
:syntax on

