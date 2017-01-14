if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

"python3 support"
let g:python3_host_prog = expand('~/.pyenv/shims/python3')

""let $PATH = "~/.pyenv/shims:".$PATH

let s:dein_dir = expand('~/.vim')

let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml      = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,   {'lazy': 0})
  call dein#load_toml(s:lazy_toml,   {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif


if dein#check_install()
  call dein#install()
endif

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
set wildmenu
set wildmode=list:full
set backspace=indent,eol,start
set cursorline

set hidden
set history=2000
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set helplang=en

"  key mapping
map <Space> $
nnoremap t <C-a>

"  python setting

inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>

let g:python_highlight_all = 1

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

hi Matchparen ctermfg=green ctermbg=red

