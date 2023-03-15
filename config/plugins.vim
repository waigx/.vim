""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins
call plug#begin('~/.vim/.plugged')

Plug 'yuttie/comfortable-motion.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'benmills/vimux'
Plug 'google/vim-searchindex'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'will133/vim-dirdiff', {'on': 'DirDiff'}
Plug 'szw/vim-maximizer', {'on': 'MaximizerToggle'}
Plug 'junegunn/gv.vim', {'on': 'GV'}
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim', {'on': 'Limelight'}
Plug 't9md/vim-choosewin'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'


"""""""""""""""""""""""""
"Window Management
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
"TERM
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}


"""""""""""""""""""""""""
"UI enhancement
Plug 'MunifTanjim/nui.nvim'
"Notifications
Plug 'rcarriga/nvim-notify'


"""""""""""""""""""""""""
"Language supports
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
"Auto completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind.nvim'
"Linting
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jay-babu/mason-null-ls.nvim'
"Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'jay-babu/mason-nvim-dap.nvim'
"Misc
Plug 'tpope/vim-markdown'
Plug 'heavenshell/vim-jsdoc', {
    \ 'for': ['javascript', 'javascript.jsx','typescript'],
    \ 'do': 'make install'
\}
Plug 'jmcantrell/vim-virtualenv'
Plug 'mustache/vim-mustache-handlebars'


"""""""""""""""""""""""""
"Themes
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'junegunn/seoul256.vim'
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'AlessandroYorba/Despacio'
Plug 'cocopon/iceberg.vim'
Plug 'w0ng/vim-hybrid'
Plug 'arcticicestudio/nord-vim'
Plug 'arzg/vim-colors-xcode'
Plug 'sotte/presenting.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'jaredgorski/fogbell.vim'
Plug 'robertmeta/nofrils'
Plug 'owickstrom/vim-colors-paramount'
Plug 'axvr/photon.vim'

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
source $HOME/.vim/config/plugins/comfortable-motion.vim
source $HOME/.vim/config/plugins/fzf.vim
source $HOME/.vim/config/plugins/nerdtree.vim
source $HOME/.vim/config/plugins/rainbow_parentheses.vim
source $HOME/.vim/config/plugins/presenting.vim
source $HOME/.vim/config/plugins/vim-choosewin.vim
source $HOME/.vim/config/plugins/vim-markdown.vim
source $HOME/.vim/config/plugins/vim-prosession.vim
source $HOME/.vim/config/plugins/vim-startify.vim
source $HOME/.vim/config/plugins/asyncrun.vim
source $HOME/.vim/config/plugins/vimspector.vim
"Lua configs
source $HOME/.vim/config/plugins/mason.lua
source $HOME/.vim/config/plugins/nvim-cmp.lua
source $HOME/.vim/config/plugins/lualine.lua
source $HOME/.vim/config/plugins/toggleterm.lua
