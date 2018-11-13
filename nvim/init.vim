" tab making tabs cool again
set smarttab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" number things
set number

" make searching nice
set showmatch
set incsearch
set nohlsearch

" highlight current line
set ruler
set cursorline

" not sure but it sounded good at the time
set autoread

" not a clue but probably important
set ffs=unix
set shortmess+=c

" highlight .md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" change tab completion for haskell files
autocmd FileType haskell set expandtab
autocmd FileType haskell set tabstop=2
autocmd FileType haskell set shiftwidth=2
autocmd FileType haskell set softtabstop=2

" set syntax highlighting
syntax on 

" idk but plugins need it
filetype plugin indent on

" vim plug file
source /root/.config/nvim/config/init.vimrc

" tabularize 
nnoremap <leader>= :Tabularize /=<LF>                                                                                                                                                                          
nnoremap <leader>- :Tabularize /-><LF> 

" ghcmod-vim
au FileType haskell nmap :t :GhcModType                                                                                                                                                                        
au FileType haskell nmap :tc :GhcModTypeClear

" neomake
call neomake#configure#automake('w')
let g:neomake_open_list = 2

" disable haskell-vim omnifunc                                                                                                                                                                                 
let g:haskellmode_completion_ghc = 0                                                                                                                                                                           

" neco-ghc
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc                                                                                                                                                    
let g:ycm_semantic_triggers = {'haskell' : ['.']}                                                                                                                                                              
let g:necoghc_enable_detailed_browse = 1

" nerdtree
let g:NERDTreeGitStatusNodeColorization = 1                                                                                                                                                                    
map <C-n> :NERDTreeToggle<LF>

" nerd commenter
" [VISUAL MODE]<leader>c<space>
let g:NERDSpaceDelims = 1                                                                                                                                                                                      
let g:NERDDefaultAlign = 'left'                                                                                                                                                                                
let g:NERDCommentEmptyLines = 1                                                                                                                                                                                
let g:NERDTrimTrailingWhitespace = 1                                                                                                                                                                           
let g:NERDToggleCheckAllLines = 1

" deoplete
let g:deoplete#enable_at_startup = 1                                                                                                                                                                           
let g:deoplete#auto_complete_delay = 0                                                                                                                                                                         
let g:deoplete#file#enable_buffer_path=1                                                                                                                                                                       
let g:deoplete#auto_completion_start_length = 0
let g:deoplete#sources#clang#libclang_path="/usr/lib/llvm-6.0/lib/libclang.so.1"                                                                                                                               
let g:deoplete#sources#clang#clang_header="/usr/bin/clang"

" vim-polyglot
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2

" airline
let g:airline_powerline_fonts = 1                                                                                                                                                                              
let g:airline#extensions#tabline#enabled = 1                                                                                                                                                                   
let g:airline_theme='molokai'                                                                                                                                                                                  
let g:airline#extensions#tabline#formatter = 'unique_tail'                                                                                                                                                     
let g:webdevicons_enable_airline_statusline = 1 

" boss ass colour scheme
colorscheme monokai

" fuzzy finder
map <leader>fd :Files<LF>
