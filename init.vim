
source ~/.config/nvim/config_no_plugins.vim
source ~/.config/nvim/neovim_config_no_plugins.vim

call plug#begin('~/.config/vim-plugins')
" ***************    minimal plugins *************
Plug 'scrooloose/nerdcommenter'
Plug 'NLKNguyen/papercolor-theme'
" ***************    stable plugins **************
Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdtree'
" ***************    test plugins   **************
"Plug 'kassio/neoterm'
Plug 'jalvesaq/vimcmdline'
"Plug 'altercation/solarized'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()

" ************** configuration des plugins
source ~/.config/nvim/minimal_plugins.vim
source ~/.config/nvim/stable_plugins.vim
source ~/.config/nvim/test_plugins.vim

