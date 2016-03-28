"Spacing/Indentation
set smartindent
set tabstop=2
set smarttab
set shiftwidth=2
set expandtab

set noai

syntax on
autocmd FileType make setlocal noexpandtab

set number
set mouse=a

:command Wq wq
:command Trim %s/\s\+$//
map tr :Trim<CR>
