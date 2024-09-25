set number
color desert
syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4

set wildmenu
set hidden
set wildignore=*.exe,*.dll,*.pdb

set guifont=Cascadia_Mono:h24
set guioptions-=m
set guioptions-=T
set guioptions-=r

set cursorline
set spell
set is
set ignorecase
set smartcase
set ruler
set gp=git\ grep\ -n
set backupcopy=yes

packadd! matchit

map <F2> :bp<CR>
imap <F2> <Esc>:bp<CR>
tmap <F2> <C-W>:bp<CR>

map <F3> :bn<CR>
imap <F3> <Esc>:bn<CR>
tmap <F3> <C-W>:bn<CR>

map <F4> :bd<CR>
imap <F4> <Esc>:bd<CR>

map <F5> :ls<CR>
imap <F5> <Esc>:ls<CR>
tmap <F5> <C-W>:ls<CR>

map <F12> :term++curwin<CR>
imap <F12> <Esc>:term++curwin<CR>
tmap <F12> <C-W>:term++curwin<CR>
