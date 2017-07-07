"""""""""""""""""""""""""""""""""""
" Vim Layouts (pure Vim version)  "
"""""""""""""""""""""""""""""""""""
let empty_args = expand("##")
if empty_args != ""
    argdelete *
    bufdo argadd %:p
    let args = split(expand("##"), '\(\\\)\@<!\s')
    let counter = 0
    for i in args 
        if counter % 4 == 0
            if counter == 0
                silent exe "edit" i
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
