syntax on
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set autowriteall
set wildmenu
set showcmd
set hlsearch
set showmatch
set incsearch
set ignorecase
set smartcase
" allows you to use \h to toggle highlight search
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
set ruler
set cursorline
set laststatus=2
