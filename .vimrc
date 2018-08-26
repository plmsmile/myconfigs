" basic settings
set nu rnu
set listchars=tab:>-,trail:-,eol:$,extends:>,precedes:<,nbsp:.
set list
set expandtab
set tw =100 ts=4 sts=4 sw=4 ai
set enc=utf8 fenc=utf8 ff=unix
set fencs=utf8,cp936,cp18030,big5,latin1
set ls=2
set hls
"set t_Co=256
set et
highlight cursorline ctermbg=gray ctermfg=white
filetype plugin indent on
syntax enable
hi Search cterm=NONE ctermfg=grey ctermbg=blue
set autoindent

" F5 run

func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb %<"
endfunc

func! CompileRunGcc()
    exec "w"
    if &filetype == 'python'
        exec "!python %"
    elseif &filetype == 'cpp'
        exec '!g++ -std=c++0x % -o %<.out'
        exec '!time ./%<.out'
    elseif &filetype == 'sh'
        :! sh %
    elseif &filetype == 'go'
        exec '!go run %'
    endif
endfunc

map <F5> :call CompileRunGcc()<CR>
map <F8> :call Rungdb()<CR>

let g:today = strftime("%Y-%m-%d (%A)")
let g:me = "plm"
let g:tpl_dir = "~/.vim/templates/"

func MySubstitute(pat, expr, flags)
    exec '%s/'.a:pat.'/'.a:expr.'/'.a:flags
endfunc

func InsertTemplate(tpl_name)
    exec '0r '.g:tpl_dir.a:tpl_name
endfunc

" templates
func OnNewPython()
    call InsertTemplate('py.tpl')
    call MySubstitute('<AUTHOR>', g:me, 'g')
    call MySubstitute('<TODAY>', g:today, 'g')
    noremap <leader>e python %
endfunc

au BufNewFile *.py call OnNewPython()

"colorscheme pink-moon
"set background=dark
" set termguicolors
"colorscheme monokai_pro
"colorscheme subtle_dark
"colorscheme material-monokai

