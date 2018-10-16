call plug#begin('~/.config/nvim/plugged')

" general
Plug 'ervandew/supertab' " tab completion is cool
Plug 'roxma/nvim-yarp'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree' " :NERDtree
let g:NERDTreeGitStatusNodeColorization = 1

Plug 'scrooloose/syntastic' " syntax checking
Plug 'scrooloose/nerdcommenter' " [VISUAL MODE]<leader>c<space>
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#file#enable_buffer_path=1
let g:deoplete#auto_completion_start_length = 0

Plug 'zchee/deoplete-jedi' " python autocompletion
Plug 'tweekmonster/deoplete-clang2' " C and C++ autocompletion
let g:deoplete#sources#clang#libclang_path="/usr/lib/llvm-6.0/lib/libclang.so.1"
let g:deoplete#sources#clang#clang_header="/usr/bin/clang"
Plug 'sheerun/vim-polyglot'

" make it look cool
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:webdevicons_enable_airline_statusline = 1

Plug 'crusoexia/vim-monokai'
call plug#end()
