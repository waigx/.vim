"""""""""""""""""""""""""""
"For OS X
if g:uname == "Darwin"
"Begin for OS X
if has('gui_running')
	set guifont=FuraCode\ Nerd\ Font\ Regular:h12
	set transparency=0
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
