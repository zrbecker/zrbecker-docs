" Put vundle plugin commands in this file
if filereadable("~/.vimrc.vundle")
  source ~/.vimrc.vundle
endif

let mapleader="\<Tab>"
inoremap <leader>e <c-c>
vnoremap <leader>e <c-c>
cnoremap <leader>e <c-c>

syntax on

set expandtab " spaces instead of tab
set tabstop=2 " tab width in spaces
set shiftwidth=2 " indent width in spaces
set smarttab " align with tab on next line

highlight ColorColumn ctermbg=2
set colorcolumn=80
set showtabline=2
