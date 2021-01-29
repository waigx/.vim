""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins
call plug#begin('~/.vim/plugged')

Plug 'yuttie/comfortable-motion.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'benmills/vimux'
Plug 'google/vim-searchindex'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'will133/vim-dirdiff', {'on': 'DirDiff'}
Plug 'szw/vim-maximizer', {'on': 'MaximizerToggle'}
Plug 'junegunn/gv.vim', {'on': 'GV'}
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'junegunn/limelight.vim', {'on': 'Limelight'}
Plug 't9md/vim-choosewin'
Plug 'liuchengxu/vim-clap'
Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'

"""""""""""""""""""""""""
"Language supports
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'
Plug 'martinda/Jenkinsfile-vim-syntax', {'for': 'Jenkinsfile'}
Plug 'drmingdrmer/vim-syntax-markdown', {'for': 'markdown'}
Plug 'tpope/vim-markdown'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'avakhov/vim-yaml'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kchmck/vim-coffee-script'
Plug 'jmcantrell/vim-virtualenv'
Plug 'mustache/vim-mustache-handlebars'
Plug 'liuchengxu/vista.vim'

"""""""""""""""""""""""""
"Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/seoul256.vim'
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'
Plug 'yuttie/hydrangea-vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'AlessandroYorba/Despacio'
Plug 'cocopon/iceberg.vim'
Plug 'w0ng/vim-hybrid'
Plug 'nightsense/snow'
Plug 'nightsense/stellarized'
Plug 'arcticicestudio/nord-vim'
Plug 'nightsense/cosmic_latte'
Plug 'arzg/vim-colors-xcode'
Plug 'sotte/presenting.vim'
Plug 'lifepillar/vim-solarized8'

"""""""""""""""""""""""""
"Quick Task management
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

"""""""""""""""""""""""""
"Game and extras
Plug 'johngrib/vim-game-snake'

"""""""""""""""""""""""""
"External configurations
Plug 'waigx/.tmux', { 'dir': $HOME . '/.tmux', 'do': './install.sh' }

"""""""""""""""""""""""""
"Plugin debugging
Plug 'tweekmonster/startuptime.vim'

call plug#end()

"""""""""""""""""""""""""
"Plugin Configurations
source $HOME/.vim/config/plugins/airline.vim
source $HOME/.vim/config/plugins/comfortable-motion.vim
source $HOME/.vim/config/plugins/fzf.vim
source $HOME/.vim/config/plugins/nerdtree.vim
source $HOME/.vim/config/plugins/rainbow_parentheses.vim
source $HOME/.vim/config/plugins/presenting.vim
source $HOME/.vim/config/plugins/vim-choosewin.vim
source $HOME/.vim/config/plugins/vim-clap.vim
source $HOME/.vim/config/plugins/vim-markdown.vim
source $HOME/.vim/config/plugins/vim-prosession.vim
source $HOME/.vim/config/plugins/vim-startify.vim
source $HOME/.vim/config/plugins/vim-floaterm.vim
source $HOME/.vim/config/plugins/asyncrun.vim
source $HOME/.vim/config/plugins/vista.vim
