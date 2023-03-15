""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set customize shortcuts

"Set leader
let mapleader = " "

"Map toggle for highlight search and cursor
map <leader>h :set hlsearch! cursorcolumn! cursorline!<CR>
"Map tab shortcuts
map <leader>t :tabe<CR>
"Map shortcuts for Maxmize and restore a window
map <leader>m :MaximizerToggle<CR>
"Map 'Check Grammar'
map <leader>ck :SyntasticCheck<CR>
"Map 'Spell Checking'
map <leader>sc :call SpellCheckToggle()<CR>
"Map leader+b to search buffers
nmap <leader>b :Clap buffers<CR>
"Map ctrl+e in insert mode to execute cmd
imap <C-e> <esc>:call ExecuteCurrentLine()<CR>i

"Map shortcuts for NERDTree
map <leader>ff :NERDTreeTabsToggle<CR>
map <leader>f :NERDTreeTabsFind<CR>

"Map shortcuts for distraction free mode
map <leader>d :Goyo<CR>
map <leader>l :Limelight!!<CR>

"Map floaterm
tnoremap <C-W>N <C-\><C-n>
tnoremap <C-W>L <C-\><C-n><C-w>Li
tnoremap <C-W>K <C-\><C-n><C-w>Ki
tnoremap <C-W>H <C-\><C-n><C-w>Hi
tnoremap <C-W>J <C-\><C-n><C-w>Ji

"Map ctrl+b/f in insert mode to navigate
imap <C-b> <Left>
imap <C-f> <Right>

"Map tags/outlines
map <leader>g :SymbolsOutline<CR>

"Map 'Undo Graphic'
let g:gundo_prefer_python3 = 1
map <leader>z :GundoToggle<CR>

"Map ctrl+] for typescript file
"autocmd FileType typescript,typescript.tsx,typescriptreact,javascript,jsx nmap <silent> <C-]> <Plug>(coc-definition)
"Map ctrl+] for python file
"autocmd FileType python nmap <silent> <C-]> <Plug>(coc-definition)
"Map 'JsDoc'
map <leader>j :JsDoc<CR>

"Map '-' for choosewin
nmap  -  <Plug>(choosewin)

"Map F5 to toggle presenting mode
autocmd FileType rst,markdown nnoremap <F5> :call TogglePresenting()<CR>

"Map Run Current Script
map <leader>e :call append(line(0), "#!/usr/bin/env " . &filetype)<CR>
map <leader>x :!chmod a+x "%:p";"%:p"<CR>
map <leader>cr :!chmod a+x "%:p";clear;"%:p"<CR>

"Map capital K to find system manual in a new window
"runtime! ftplugin/man.vim
"nnoremap K :Man 3 <cword><CR>

"Set shortcuts for moving between window
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

"Set cmdline navigation shortcuts
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

"Set shortcut for moving between tab
nnoremap _ :tabp<CR>
nnoremap + :tabn<CR>


""""""""""""""""""""""""""
"Allow saving of files as sudo
cmap w!! w !sudo tee % > /dev/null


""""""""""""""""""""""""""
"FZF related shortcuts
"Map shortcuts for fzf search word
map <leader>* :call SearchCurrentWord()<CR>
"Map ctrl+p to search files
nmap <C-p> :call ListAllFiles()<CR>
"Map leader+p to search directories
nmap <leader>p :call ListAllDirs()<CR>
"Map <leader>+r to search tasks
map <leader>r :AsyncTaskFzf<CR>
"Searching word in workspace
command -nargs=+ S :call SearchWordInDirectory(<q-args>)


""""""""""""""""""""""""""
"Debugging related shortcuts
nmap <F3> :call vimspector#Restart()<CR>
nmap <F4> :call vimspector#Reset()<CR>
nmap <F5> :call vimspector#Continue()<CR>
nmap <F6> :call vimspector#StepInto()<CR>
nmap <F7> :call vimspector#StepOut()<CR>
nmap <F8> :call vimspector#StepOver()<CR>
nmap <F9> :call vimspector#ToggleBreakpoint()<CR>
