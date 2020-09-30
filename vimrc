
let mapleader = "\<Space>"

set backspace=indent,eol,start
set number
set title
set showmode
set showcmd
set showmatch
set laststatus=2

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('kovisoft/slimv')
call dein#add('altercation/vim-colors-solarized')
call dein#add('easymotion/vim-easymotion')

call dein#end()

" solarized
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" easymotion
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1

" slimv
let g:slimv_lisp='/usr/bin/ros run'
let g:slimv_impl='sbcl'
let g:slimv_swank_cmd = '! screen -d -m -t REPL-SBCL ros run --load $HOME/.roswell/lisp/slime/2020.07.15/start-swank.lisp'
let g:paredit_electric_return = 0
let g:slimv_repl_split=4
let g:lisp_rainbow=1