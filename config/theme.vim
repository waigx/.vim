"""""""""""""""""""""""""""
"GUI options
if has('gui_running')
	set guioptions=
"For OS X
if g:uname == "Darwin"
"Begin for OS X
	set guifont=PragmataProMonoLiga\ Nerd\ Font:h14
	set transparency=1
"End for OS X
endif
endif


"""""""""""""""""""""""""""
"Set Themes

"Use light in GUI model, dark in CLI model
"let g:airline_theme='tomorrow'
if has('gui_running')
	"colorscheme Tomorrow
	"colorscheme Tomorrow-Night-Eighties
	"colorscheme seoul256
	silent! colorscheme xcodewwdc
else
	"colorscheme Tomorrow-Night-Eighties
	"colorscheme seoul256
	silent! colorscheme xcodedark
endif
let g:airline_theme='deus'
