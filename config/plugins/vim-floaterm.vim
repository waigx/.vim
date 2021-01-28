let g:floaterm_shell = g:preferedTerm
let g:floaterm_position = 'bottomright'
let g:floaterm_autoclose = 1

let s:is_floaterm_opened = 0

function! ToggleFloatTerm()
	if s:is_floaterm_opened == 0
		:FloatermNew
		let s:is_floaterm_opened = 1
	else
		:FloatermToggle
	endif
endfunction
