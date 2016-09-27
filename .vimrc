" if my pricery folder exists, set the runtime path 
" so this works from root
if isdirectory("/home/pricery/.vim")
  set runtimepath=/home/pricery/.vim,$VIMRUNTIME
  set nocompatible
endif 

" enable pathogen
execute pathogen#infect()

" set indents to two spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" set line numbers to hybrid by enabling both
set number
set relativenumber

" Associate Drupal files with php syntax
au BufNewFile,BufRead *.module setf php

" Map some shortcuts. "\" is used as a utility prefix
" as recommended here http://statico.github.io/vim.html
:nmap \l :setlocal number!<CR>
:nmap \p :set paste!<CR>

" Move by row on screen, not line numbers on document
:nmap <Up> gk
:nmap <Down> gj

" CtrlP mappings
:nmap ; :CtrlPBuffer<CR>
:nmap \f :CtrlP<CR>

" Open NerdTree. 'e' for Explore!
:nmap \e :NERDTreeToggle<CR>

" Removes all trailing whitespace
:nmap \whitespace :%s/\s\+$//<CR>

" Recognize 256 color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" Set the default color scheme, except for JSON files
" because we want to use vim-json for that
autocmd BufEnter * :colorscheme desert
autocmd BufEnter *.json :colorscheme default
