set nu rnu
set expandtab
set autoindent
set hls
set tw=100 ts=4 sts=4 sw=4 ai
set list


" f5 run

filetype plugin on

func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb %<"
endfunc

func! CompileRunGcc()
    exec "w"
    if &filetype == 'python'
        exec "!python %"
    endif
endfunc

map <F5> :call CompileRunGcc()<CR>
map <F8> :call Rungdb()<CR>
