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

"fzf result threshold for adding DevIcons
let g:fzf_ignore_dev_icon_threshold = 1000
let s:fzf_dev_icon_appended = 0

function! GetDevIcon(path)
	return WebDevIconsGetFileTypeSymbol(a:path, isdirectory(a:path))
endfunction

"getting sourceList with or without DevIcons
function! GetSourceListWithDevIcon(...)
	let word = a:0
	if word
		word = "'" . word . "'"
		let sourceList = systemlist('rg -il ' . word)
	else
		let sourceList = systemlist('rg -il ^')
	endif
	if len(sourceList) > g:fzf_ignore_dev_icon_threshold
		s:fzf_dev_icon_appended = 0
		return sourceList
	endif
	s:fzf_dev_icon_appended = 1
	return map(sourceList, 'GetDevIcon(v:val) . " " . v:val')
endfunction

function! EditDevIconPath(iconPath)
	let path = a:iconPath
	if s:fzf_dev_icon_appended
		let firstSpc = stridx(path, ' ')
		path = path[firstSpc+1:]
	endif
	execute 'silent e' path
endfunction

"Add function for searching certain word
function! SearchWordInDirectory(word)
	echo 'Searching: ' . a:word
	let @/ ='\c' . a:word
	call fzf#run(fzf#wrap({
\		'source': GetSourceListWithDevIcon(a:word),
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
\		'source': GetSourceListWithDevIcon(),
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
