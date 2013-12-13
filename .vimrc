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
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'
Bundle 'groenewege/vim-less'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'

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

"set statusline=\ %<%f%(\ %m%)\ [B%n/%{g:get_buffer_count()}]%(\ %h%w%r%)\ %{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}\ %=%l,%c%V\ %3P\ 

function! g:get_buffer_count()
    let last_buffer_number = bufnr('$')
    let active_buffer_count = 0
    let i = 0 | while i <= last_buffer_number | let i = i + 1
        if bufexists(i) && buflisted(i)
            let active_buffer_count = active_buffer_count + 1
        endif
    endwhile
    return active_buffer_count
endfunction

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

vnoremap k gk
vnoremap j gj
vnoremap gk k
vnoremap gj j

autocmd BufNewFile,BufRead *.coffee setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.xml setlocal ts=1 sts=1 sw=1
autocmd BufNewFile,BufRead *.html setlocal ts=1 sts=1 sw=1

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
