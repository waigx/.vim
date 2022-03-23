let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

exec "source" . s:path . "/config/init.vim"
exec "source" . s:path . "/config/plugins.vim"
exec "source" . s:path . "/config/general.vim"
exec "source" . s:path . "/config/theme.vim"
exec "source" . s:path . "/config/keys.vim"
