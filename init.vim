let maplocalleader=","
let mapleader=" "

call plug#begin('~/.vim/plugged')
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'gaalcaras/ncm-R'
Plug 'jalvesaq/nvim-r'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kien/ctrlp.vim'
Plug 'neovimhaskell/haskell-vim'
call plug#end()

set termguicolors
set background=dark
let g:gruvbox_contrast_light='hard'
colo gruvbox

" autocomplete
augroup r
  autocmd!

  " enable completion
  autocmd FileType r,rmd call ncm2#enable_for_buffer()

  " assignment and pipe operators
  autocmd FileType r,rmd inoremap '; <space><esc>gelcw<space><-<space>
  autocmd FileType r,rmd inoremap ;' <space><esc>gelcw<space>%>%<space>

  " run current line
  autocmd FileType r,rmd inoremap <C-r> <esc>:call SendLineToR("stay")<CR>a

augroup end

" editing and navigation
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-c> :close<CR>
nnoremap <leader>s :set spell!<enter>
inoremap <C-n> <C-x><C-o>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

set splitbelow splitright
set number relativenumber
set cursorline

set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=80
set expandtab
let g:indent_guides_guide_size = 1
let g:pear_tree_map_special_keys = 1
let g:pear_tree_repeatable_expand = 0
let g:ctrlp_working_path_mode = '0'

" misc bindings
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>td :vsp F:\thebigtodo.rmd<CR>
nnoremap <leader>tb :sp<CR>:terminal<CR>
nnoremap <leader>tr :vsp<CR>:terminal<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>ig :IndentGuidesToggle<CR>
nnoremap <leader>ve :vsp $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>

" R stuff
autocmd FileType r nnoremap <LocalLeader>fh /#.*----<CR>
nnoremap <localleader>> :?^><CR>
set completeopt=noinsert,menuone,noselect
let R_complete=2
let r_indent_align_args=0
let R_assign=2

" for haskell plugin
syntax on
filetype plugin indent on
let g:haskell_enable_quantification = 1   " highlighting `forall`
let g:haskell_enable_recursivedo = 1      " highlighting `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " highlighting `proc`
let g:haskell_enable_pattern_synonyms = 1 " highlighting `pattern`
let g:haskell_enable_typeroles = 1        " highlighting type roles
let g:haskell_enable_static_pointers = 1  " highlighting `static`
let g:haskell_backpack = 1                " highlighting backpack keywords

cd F:\
