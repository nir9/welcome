set number
color desert
syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4

set wildmenu
set wildoptions=pum
set hidden
set wildignore=*.exe,*.dll,*.pdb

set guifont=Cascadia_Mono:h18
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

" Copy current file path
map <F6> :let @+ = fnamemodify(@%, ":p")<CR>
imap <F6> <Esc>:let @+ = fnamemodify(@%, ":p")<CR>

" Go to previous/next quickfix result (for example, useful for going through :grep or
" :vimgrep results)
map <F7> :cp<CR>
imap <F7> <Esc>:cp<CR>
map <F8> :cn<CR>
imap <F8> <Esc>:cn<CR>

map <F12> :term++curwin<CR>
imap <F12> <Esc>:term++curwin<CR>
tmap <F12> <C-W>:term++curwin<CR>
