if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim'))

call dein#add('Shougo/neosnippet.vim') 
call dein#add('davidhalter/jedi-vim')
call dein#add('kevinw/pyflakes-vim')

if dein#check_install()
  call dein#install()
endif

call dein#end()

syntax on
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<

set incsearch
set nohlsearch
set nowrap
set showmatch
set whichwrap=h,l
set noswapfile

set wrapscan
set ignorecase
set smartcase
set clipboard=unnamed

set hidden
set history=2000
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set helplang=en

inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

hi Matchparen ctermfg=green ctermbg=red

"if &compatible
"  set nocompatible
"endif
"set runtimepath+=~/.vim/dein/dein.vim

"call dein#begin(expand('~/.vim'))

"call dein#end()
