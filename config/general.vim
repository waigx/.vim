""""""""""""""""""""""""""""""""""""""""""""""""""
"General settings

"Platform independent
set number
set ruler
set showcmd
set showmatch
set showtabline=2
set laststatus=2  
set tabstop=4
set shiftwidth=4
set softtabstop=4
syntax on
set smartindent
set noincsearch
"Set search/line/column highlight
set nohlsearch
set nocursorline
set nocursorcolumn
"Set indent guide
set list
set listchars=tab:┊\ ,trail:·
set expandtab

"help window open on right
autocmd FileType help wincmd L


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set customize functions

"Add spell check function
let g:spell_check_opened = 0
function! SpellCheckToggle()
	if g:spell_check_opened
		set nospell
		let g:spell_check_opened = 0
	else
		set spell spelllang=en_us
		let g:spell_check_opened = 1
	endif
endfunction

"Add function for execute current line
function! ExecuteCurrentLine()
	let current_line=getline(".")
	silent put='--------'
	"silent put=''
	"silent call setline(".", "> ".current_line)
	"silent put='----'
	silent execute("r!" . current_line)
	silent put='---- End of Output ----'
	silent put=''
	silent put=''
endfunction
