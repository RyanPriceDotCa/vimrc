" enable pathogen
execute pathogen#infect()

" set indents to two spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" Associate Drupal files with php syntax
au BufNewFile,BufRead *.module setf php

" Set the default color scheme
:colorscheme desert

