call plug#begin('~/.config/nvim/plugged')
Plug 'ervandew/supertab' 
Plug 'godlygeek/tabular' 
Plug 'neomake/neomake'
Plug 'eagletmt/ghcmod-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'eagletmt/neco-ghc'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree' 
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi' 
Plug 'tweekmonster/deoplete-clang2'
Plug 'w0rp/vim-polyglot'
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'crusoexia/vim-monokai'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/goyo.vim'
Plug 'alx741/vim-hindent'
Plug 'alx741/vim-stylishask'
call plug#end()
