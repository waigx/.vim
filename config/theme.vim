"""""""""""""""""""""""""""
"GUI options
if has('gui_running')
	set guioptions=
"For OS X
if g:uname == "Darwin"
"Begin for OS X
	set guifont=FuraCode\ Nerd\ Font:h13
	set guioptions=
	set transparency=1
endif
"End for OS X
endif


"""""""""""""""""""""""""""
"Set Themes

"Use light in GUI model, dark in CLI model
"let g:airline_theme='tomorrow'
if has('gui_running')
	"colorscheme Tomorrow
	"colorscheme Tomorrow-Night-Eighties
	colorscheme seoul256
else
	"colorscheme Tomorrow-Night-Eighties
	colorscheme seoul256
endif
let g:airline_theme='bubblegum'
