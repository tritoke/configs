"                            vim:foldmethod=marker

" General Options {{{
set signcolumn=yes
" set updatetime=750
set encoding=utf-8
set foldlevel=99
set foldmethod=indent
set laststatus=0 ruler

" Tab Configuration
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=0
autocmd Filetype java setlocal ts=4 sw=4 sts=0

" Automatically switch between line numbering modes
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" search settings
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase

" highlight current line
set ruler
set cursorline

" plugins need it?
filetype plugin indent on

" splitting pane defaults
set splitbelow splitright

" highlight .md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" }}}

" Keyboard Shortcuts and remaps {{{
" fold and unfold with space
nnoremap <space> za

" switch buffers
" next
nnoremap b :tabn<CR>
" previous
nnoremap B :tabp<CR> 

" jump to the first ALE linter error
nnoremap ,, :ALEFirst<CR>

" switches to hexmode
nnoremap <Leader>x :Hexmode <CR>

" Toggle the NERDTree sidebar
map <F6> :NERDTreeToggle<CR>

" Copy text to the clipboard directly
vmap <C-c> "+yi
vmap <C-x> "+c
" Paste text from the clipboard directly
vmap <C-v> <ESC>"+p
imap <C-v> <ESC>"+pa

" Map the Esc key to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" awesome line to toggle highlighting after a search but only until the next
" one so each consecutive search will be highlighted but only the current
" search can be toggled
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" enable Rmarkdown compilation with a shortcut
autocmd FileType rmd map <leader>r :!echo<space>"rmarkdown::render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter><enter>

" make pane navigation great again
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l

" }}}

" Plugins {{{
call plug#begin('~/.config/nvim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ } " Language server protocol support

Plug 'fidian/hexmode' " Switch to hex mode

Plug 'w0rp/ale' " Asynchronous linting engine
Plug 'ncm2/ncm2' " Auto completion manager

Plug 'godlygeek/tabular' " lines up tabs 
Plug 'alx741/vim-hindent' " haskell indentation
Plug 'alx741/vim-stylishask' " haskell style

Plug 'ervandew/supertab' " Tab completion
Plug 'jiangmiao/auto-pairs' " Auto-insert closing pairs
Plug 'scrooloose/nerdtree' " File directory exporer
Plug 'scrooloose/nerdcommenter' " uber cool commenting out multiple lines
Plug 'zchee/deoplete-jedi' " Deoplete jedi source
Plug 'tweekmonster/deoplete-clang2' " Deoplete clang source
Plug 'eagletmt/ghcmod-vim' " type info in Haskell
Plug 'eagletmt/neco-ghc' " Deoplete haskell source
Plug 'w0rp/vim-polyglot' " b i g language pack

Plug 'roxma/nvim-yarp' " Required for ncm2 and (optionally) deoplete
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} " Neovim completion
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' } " TabNine integration

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder aka best thing ever
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep' " recursive faster case insensitive grep

Plug 'mhinz/vim-startify' " fancy vim start screen
Plug 'chrisbra/Colorizer' " Highlight hex codes with correct colours
Plug 'airblade/vim-gitgutter' " Git diff line status and git functionality
Plug 'majutsushi/tagbar' " View and browse ctags of a file
Plug 'tmhedberg/SimpylFold' " Simple code folding
Plug 'wakatime/vim-wakatime' " Wakatime integration
Plug 'tpope/vim-fugitive' " MORE Git functionality

" Colour schemes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'crusoexia/vim-monokai'

call plug#end()
" }}}

" Appearance {{{
syntax on
colorscheme monokai

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:webdevicons_enable_airline_statusline = 1
" }}}

" Plugin Configuration {{{
" Enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" Define the Python interpreters to use to speed up startup
" and to aide with working in virtual environments
" git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
" the above command adds virtualenv plugin
" pyenv install 3.7.2
" pyenv install 2.7.15
" pyenv virtualenv 3.6.5 py3nvim
" pyenv virtualenv 2.7.15 py2nvim
" pyenv activate py3nvim
" pip install pynvim neovim
" pyenv deactivate 
" repeat for python2
let g:python_host_prog  = $PYENV_ROOT.'/versions/py2nvim/bin/python'	  " Python 2
let g:python3_host_prog = $PYENV_ROOT.'/versions/py3nvim/bin/python'	  " Python 3

" tabularize
nnoremap <leader>= :Tabularize /=<LF>
nnoremap <leader>- :Tabularize /-><LF>

" ghcmod-vim
au FileType haskell nmap :t :GhcModType
au FileType haskell nmap :tc :GhcModTypeClear

" disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0

" neco-ghc
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:necoghc_enable_detailed_browse = 1

" nerdtree
let g:NERDTreeGitStatusNodeColorization = 1
map <C-n> :NERDTreeToggle<LF>

" ALE options
map <leader>g :ALEGoToDefinition<LF>
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" auto-pairs options
let g:AutoPairsMultilineClose = 0

" nerd commenter
" [VISUAL MODE]<leader>c<space>
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

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

" deoplete
let g:deoplete#enable_at_startup = 1
let g:auto_complete = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_completion_start_length = 0
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-6.0/lib/libclang-6.0.so.1"
let g:deoplete#sources#clang#clang_header = "/usr/bin/clang"

" linters only run manually because they can mess stuff up badly
let g:hindent_on_save = 0
au FileType haskell nnoremap <silent> <leader>ph :Hindent<LF>
let g:stylishask_on_save = 0
au FileType haskell nnoremap <silent> <leader>ps :Stylishask<LF>

" fuzzy finder
map <leader>fd :Files<LF>
" }}}

" Behaviour Settings {{{
try
  " Allow persistent undo 
  set undodir=/tmp/tritoke/vim_undo
  set undofile
catch
endtry

" Jump to last location when file is opened
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" }}}
