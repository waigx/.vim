"""""""""""""""""""""""""""
"GUI options
if has('gui_running')
	set guioptions=
"For OS X
if g:uname == "Darwin"
"Begin for OS X
	set guifont=SFMono\ Nerd\ Font:h13
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
    colorscheme xcodelight
else
	"colorscheme Tomorrow-Night-Eighties
	"colorscheme seoul256
    colorscheme xcodedark
endif
let g:airline_theme='deus'
