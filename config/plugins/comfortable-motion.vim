""""""""""""""""""""""""""
"comfortable-motion.vim configuration
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_friction = 5000
let g:comfortable_motion_air_drag = 5.0
nnoremap <silent> <C-d> :call comfortable_motion#flick(800)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-800)<CR>
