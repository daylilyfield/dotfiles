set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'anyakichi/vim-surround'
Bundle 'vim-jp/vimdoc-ja'
Bundle 'Shougo/neocomplcache'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/Align'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'daylilyfield/sexyscroll.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'daylilyfield/vim-colors-wombat'
Bundle 'morhetz/gruvbox'
Bundle 'altercation/vim-colors-solarized'
Bundle 'w0ng/vim-hybrid'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'
Bundle 'groenewege/vim-less'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'wavded/vim-stylus'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'digitaltoad/vim-jade'
Bundle 'majutsushi/tagbar'
Bundle 'marijnh/tern_for_vim'
Bundle 'Shougo/neomru.vim'
Bundle 'vim-scripts/DirDiff.vim.git'

filetype plugin indent on

set encoding=UTF-8
set autoread
set hlsearch
set ignorecase
set smartcase
set wrapscan
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set backspace=indent,eol,start
set wildmenu
set formatoptions+=mM
set infercase
set fileformat=unix
set fileformats=unix,mac,dos
set ambiwidth=double
set clipboard+=unnamed
set showmatch
set cpoptions-=m
set matchtime=3
set matchpairs+=<:>
set showmode
set modeline
set hidden
set number
set ruler
set nolist
set wrap
set laststatus=2
set cmdheight=2
set showcmd
set title
set cursorline
set guioptions=erL
set foldenable
set foldmethod=marker
set shortmess=aTI
set history=100
set nowritebackup
set nobackup

set swapfile

if !isdirectory(expand('~/.vimswap'))
    call mkdir(expand('~/.vimswap'))
endif

set directory=~/.vimswap

set undofile

if !isdirectory(expand('~/.vimundo'))
    call mkdir(expand('~/.vimundo'))
endif

set undodir=~/.vimundo

syntax on

set autoindent
set smartindent

inoremap "" ""<LEFT>
inoremap '' ''<LEFT>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nnoremap <C-j> 5j
nnoremap <C-h> 5h
nnoremap <C-k> 5k
nnoremap <C-l> 5l

vnoremap <C-j> 5j
vnoremap <C-h> 5h
vnoremap <C-k> 5k
vnoremap <C-l> 5l

nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

nnoremap gb :bn<CR>
nnoremap gB :bp<CR>

vnoremap k gk
vnoremap j gj
vnoremap gk k
vnoremap gj j

autocmd BufNewFile,BufRead *.js setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.json setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.coffee setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.cson setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.styl setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.xml setlocal ts=1 sts=1 sw=1
autocmd BufNewFile,BufRead *.html setlocal ts=1 sts=1 sw=1
autocmd BufNewFile,BufRead *.jade setlocal ts=1 sts=1 sw=1
autocmd BufNewFile,BufRead *.go setlocal ts=2 sts=2 sw=2 noexpandtab

command! -nargs=0 CopyFilePath call s:copy_file_path()
command! -nargs=0 CopyFileName call s:copy_file_name()

  function! s:copy_file_path()
    let l:p = expand('%:p')
    let @* = l:p
    let @" = l:p
    echo l:p
  endf
  
  function! s:copy_file_name()
    let l:n = expand('%:t')
    let @* = l:n
    let @" = l:n
    echo l:n
  endf

let g:plugin_dicwin_disable=1

" neocomplcache settings
let g:neocomplcache_enable_at_startup=1
imap <expr><C-Space> neocomplcache#start_manual_complete() 

" unite settings
nnoremap <Space>ub :<C-u>Unite buffer<CR>
nnoremap <Space>ur :<C-u>Unite file_mru<CR>

" align settings
let g:Align_xstrlen=3

" airline
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#readonly#enabled = 1

" markdown vim mode
let g:vim_markdown_folding_disabled=1

" indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
