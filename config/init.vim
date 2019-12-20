""""""""""""""""""""""""""""""""""""""""""""""""""
"Set VIM default encoding
set encoding=utf-8

"""""""""""""""""""""""""
"Get platfrom info.
if has("unix")
	let g:uname = substitute(system('uname -s'), "\n", "", "")
endif
