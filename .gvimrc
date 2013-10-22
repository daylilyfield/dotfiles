colorscheme wombat

set guifont=Inconsolata\ for\ Powerline:h14

source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

" remember window position {{{
let s:vimpos_file = '~/.vim/.vimpos'

function! s:SaveWindowPosition(file_name)
    redir => pos
    exec 'winpos'
    redir END
    let pos = matchstr(pos, 'X[-0-9 ]\+,\s*Y[-0-9 ]\+$')
    let file = expand(a:file_name)
    let str = []
    let cmd = 'winpos '.substitute(pos, '[^-0-9 ]', '', 'g')
    cal add(str, cmd)
    let l = &lines
    let c = &columns
    cal add(str, 'set lines='. l.' columns='. c)
    silent!
    let ostr = readfile(file)
    if str != ostr
        call writefile(str, file)
    endif
endfunction

augroup SaveWindowPosition
    autocmd!
    execute 'autocmd SaveWindowPosition VimLeave * call s:SaveWindowPosition("' . s:vimpos_file . '")'
augroup END

if (filereadable(expand(s:vimpos_file)))
    execute 'source ' . s:vimpos_file
endif

unlet s:vimpos_file
" }}} 
