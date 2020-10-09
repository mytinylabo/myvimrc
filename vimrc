set encoding=UTF-8

inoremap <silent> jj <ESC>
let mapleader = "\<Space>"

set backspace=
set number
set relativenumber
set title
set noshowmode
set showcmd
set showmatch
set laststatus=2
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set updatetime=2000

set hls
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap <leader><leader>q :qa<CR>

nnoremap <Home> ^
nnoremap <leader><CR> i<CR><Esc>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <silent> <leader>bp :bprevious<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>bb :b#<CR>
nnoremap <silent> <leader>bm :bm<CR>
nnoremap <silent> <leader>bd :bdelete<CR>

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('preservim/nerdtree')
  call dein#add('kovisoft/slimv')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('ctrlpvim/ctrlp.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

" if dein#check_install()
"  call dein#install()
" endif

" NERDTree
autocmd VimEnter * NERDTree | wincmd p

" solarized
let g:solarized_termcolors = 256
syntax enable
set background=dark
colorscheme solarized

let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=black

" easymotion
map <Leader> <Plug>(easymotion-prefix)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1

" slimv
let g:slimv_lisp = '/usr/bin/ros run'
let g:slimv_impl = 'sbcl'
let g:slimv_swank_cmd = '! screen -d -m -t REPL-SBCL ros run --load $HOME/.roswell/lisp/slime/2020.07.15/start-swank.lisp'
let g:paredit_electric_return = 0
let g:slimv_repl_split = 4
let g:lisp_rainbow = 1

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'wombat'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
" let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
" let g:airline#extensions#ale#error_symbol = ' '
" let g:airline#extensions#ale#warning_symbol = ' '
" let g:airline#extensions#default#section_truncate_width = {}
" let g:airline#extensions#whitespace#enabled = 1

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty = '  '
let g:airline_symbols.notexists = '  '
