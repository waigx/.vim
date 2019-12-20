let g:ale_linters = ['eslint']
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'typescript.tsx': ['eslint'],
\}
let g:airline#extensions#ale#enabled = 1
