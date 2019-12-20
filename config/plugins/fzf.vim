"""""""""""""""""""""""""
"fzf settings
"fzf installed using Homebrew
if g:uname == "Darwin"
	set rtp+=/usr/local/opt/fzf
endif
"fzf installed using Git under home
set rtp+=~/.fzf

"fzf window size and position
let g:fzf_layout = {'down': '45%'}

function! GetDevIcon(path)
	return WebDevIconsGetFileTypeSymbol(a:path, isdirectory(a:path))
endfunction

function! EditDevIconPath(iconPath)
	let firstSpc = stridx(a:iconPath, ' ')
	let path = a:iconPath[firstSpc+1:]
	execute 'silent e' path
endfunction

"Add function for searching certain word
function! SearchWordInDirectory(word)
	echo 'Searching: ' . a:word
	let @/ =a:word
	let word="'" . a:word . "'"
	call fzf#run(fzf#wrap({
\		'source': map(systemlist('rg -l ' . word), 'GetDevIcon(v:val) . " " . v:val'),
\		'options': '--preview="bat --style=numbers --theme=zenburn --color=always {2..-1}
\				| rg --color always --colors match:bg:yellow --passthru ' . word . '"',
\		'sink': function('EditDevIconPath'),
\	}))
endfunction

"Add function for searching current word
function! SearchCurrentWord()
	let current_word=expand("<cword>")
	call SearchWordInDirectory(current_word)
endfunction

"Add function for searching current word
function! ShowAllBuffers()
	call fzf#run(fzf#wrap({
\		'source': map(range(1, bufnr('$')), 'bufname(v:val)'),
\	}))
endfunction

"FZF with DevIcons
function! ListAllFiles()
	call fzf#run(fzf#wrap({
\		'source': map(systemlist('rg -l ^'), 'GetDevIcon(v:val) . " " . v:val'),
\		'options': '--preview="convert {2..-1} jpg:- 2>/dev/null | jp2a -b --colors - 2>/dev/null
\				|| bat --style=numbers --theme=zenburn --color=always {2..-1}"',
\		'sink': function('EditDevIconPath'),
\	}))
endfunction

"FZF directories with DevIcons
function! ListAllDirs()
	call fzf#run(fzf#wrap({
\		'source': 'find . ! -path "." ! -path "*/\.*" -type d -printf "פּ %P/\n"',
\		'options': '--preview="exa -al --color=always {2..-1}"',
\		'sink': function('EditDevIconPath'),
\	}))
endfunction
