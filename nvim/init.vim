set expandtab
set smarttab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set number
set autowrite

set showcmd
set showmatch
set incsearch
set nohlsearch

set ruler
set cursorline

set autoread
set autowrite

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
set ffs=unix,dos,mac

set shortmess+=c
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

source $HOME/.config/nvim/config/init.vimrc

syntax on 
colorscheme monokai

