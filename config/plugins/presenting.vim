let g:presenting_mode_is_off = 1

function! TogglePresenting()
    if g:presenting_mode_is_off
        if len(execute("PresentingStart")) == 0
            Goyo
            let g:presenting_mode_is_off = 0
        else
            PresentingStart
        endif
    else
        Goyo!
        q
        let g:presenting_mode_is_off = 1
    endif
endfunction
