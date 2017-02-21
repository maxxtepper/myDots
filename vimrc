" my .vimrc
" created: 2017-02-20
" features vim-plug for add-ons
"
"
"

"########~~~~~~~~ Vim-Plug ~~~~~~~~########"
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'godlygeek/tabular'

call plug#end()

set guifont=Monospace\ 12

"########~~~~~~~~ Gruvbox ~~~~~~~~########"
colo gruvbox
set bg=dark
let g:gruvbox_contrast_dark="dark"

"########~~~~~~~~ Tabularize ~~~~~~~~########"
nmap <Leader>=  : Tabularize/=<CR>
nmap <Leader>,  : Tabularize/,/l0r1<CR>
nmap <Leader>;} : Tabularize/;}<CR>

"########~~~~~~~~ Makefiles ~~~~~~~~########"
let _curlfile = expand("%:t")
if _curlfile =~ "Makefile" || _curlfile =~ "makefile" || _curlfile =~ ".*\.mk"
	set noexpandtab
else
	set tabstop=2
	set shiftwidth=2
endif
