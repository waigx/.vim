"""""""""""""""""""""""""
"fzf settings
"fzf installed using Homebrew
if g:uname == "Darwin"
	set rtp+=/opt/homebrew/bin/fzf
endif
"fzf installed using Git under home
set rtp+=~/.fzf

if executable("devicon-lookup")
	let s:pathPipelineSink = " | devicon-lookup"
    let s:fzfFileSection = "{2..-1}"
else
	let s:pathPipelineSink = ""
    let s:fzfFileSection = "{}"
endif

if executable("bat")
	let s:previewPipelineSource = "bat --style=numbers --theme=OneHalfLight --color=always " . s:fzfFileSection
else
	let s:previewPipelineSource = "cat " . s:fzfFileSection
endif

"fzf window size and position
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

function! EditDevIconPath(iconPath)
	if (s:pathPipelineSink) == ""
		let path = a:iconPath
	else
		let firstSpc = stridx(a:iconPath, ' ')
		let path = a:iconPath[firstSpc+1:]
	endif
	execute 'silent e' path
endfunction

"Add function for searching certain word
function! SearchWordInDirectory(word)
	echo 'Searching: ' . a:word
	let @/ = '\c' . a:word
	let word = "'" . a:word . "'"
	call fzf#run(fzf#wrap({
\		'source': 'rg -il ' . word . s:pathPipelineSink,
\		'options': '--preview="' . s:previewPipelineSource . '
\				| rg --ignore-case --color always --colors match:bg:yellow --passthru ' . word . '"',
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
\		'source': 'rg --files' . s:pathPipelineSink,
\		'options': '--preview="' . s:previewPipelineSource . '"',
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

"--------------------------------------------------------------------------------
function! s:fzf_sink(what)
	let p1 = stridx(a:what, '<')
	if p1 >= 0
		let name = strpart(a:what, 0, p1)
		let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
		if name != ''
			exec "AsyncTask ". fnameescape(name)
		endif
	endif
endfunction

function! s:fzf_task()
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	let opts = {
\		'source': source,
\		'sink': function('s:fzf_sink'),
\		'options': '+m --nth 1 --inline-info --tac --preview=""'
\	}
	if exists('g:fzf_layout')
		for key in keys(g:fzf_layout)
			let opts[key] = deepcopy(g:fzf_layout[key])
		endfor
	endif
	call fzf#run(opts)
endfunction

command! -nargs=0 AsyncTaskFzf call s:fzf_task()
