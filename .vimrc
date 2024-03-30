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

function InitLspPlugins()
	call plug#begin('~/vimplugins')

	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'

	call plug#end()
endfunction

" If you want just a simple Vim config with no plugins, just comment the
" following line
call InitLspPlugins()

" By default I want no LSP, sometimes when needed, I can simply call StartLsp
" to start it
function g:StartLsp()
	function! OnLspBufferEnabled() abort
	    setlocal omnifunc=lsp#complete
	    setlocal signcolumn=yes
	    nmap <buffer> gi <plug>(lsp-definition)
	    nmap <buffer> gd <plug>(lsp-declaration)
	    nmap <buffer> gr <plug>(lsp-references)
	    nmap <buffer> gl <plug>(lsp-document-diagnostics)
	    nmap <buffer> <f2> <plug>(lsp-rename)
	    nmap <buffer> <f3> <plug>(lsp-hover)
	endfunction
	
	augroup lsp_install
	  au!
	  autocmd User lsp_buffer_enabled call OnLspBufferEnabled()
	augroup END

endfunction

set spell

set is

set ignorecase
set smartcase

set gp=git\ grep\ -n
set ruler

packadd! matchit
