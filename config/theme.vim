"""""""""""""""""""""""""""
"GUI options
if has('gui_running')
	set guioptions=
"For OS X
if g:uname == "Darwin"
"Begin for OS X
	set guifont=PragmataProMonoLiga\ Nerd\ Font:h16
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
    set background=light
	silent! colorscheme solarized8
else
	"colorscheme Tomorrow-Night-Eighties
	"colorscheme seoul256
    "set background=dark
	silent! colorscheme fogbell_light
endif
"let g:airline_theme='deus'
"let g:airline_theme='nord'
let g:airline_theme='minimalist'
