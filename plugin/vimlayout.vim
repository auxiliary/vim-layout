"""""""""""""""""""""""""""""""""""
" Vim Layouts (pure Vim version)  "
"""""""""""""""""""""""""""""""""""
let empty_args = expand("##")
if empty_args != ""
    let args = split(expand("##"), '\(\\\)\@<!\s')
    let counter = 0
    argdelete *
    argadd %
    for i in args 
        if counter % 4 == 0
            if counter == 0
                silent bnext
                silent bprev
            else
                silent exe "tabedit" i
            endif
        else
            if counter % 4 == 1
                silent exe "vsplit" i
            else
                if counter % 4 == 3
                    silent exe "normal \<C-w>l"
                endif
                silent exe "split" i
            endif
        endif
        let counter += 1
    endfor
endif
