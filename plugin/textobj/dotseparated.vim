if exists('g:loaded_textobj_dotseparated')
  finish
endif


call textobj#user#plugin('dotsep', {
\   '-': {
\     'select-a-function': 'FindDotA',
\     'select-a': 'a.',
\     'select-i-function': 'FindDotI',
\     'select-i': 'i.',
\   },
\ })


function! FindDotA()
    call search('\v(\.|\s|^)', 'eb', line('.'))
    let head_pos = getpos('.')
    call search('\v(\.|\s|$)', 'e', line('.'))
    let tail_pos = getpos('.')
    return ['v', head_pos, tail_pos]
endfunction


function! FindDotI()
    call search('\v(\.|\s|^)', 'eb', line('.'))
    " If not at the beginning of a line, move right.
    if col('.') != 1
        normal! l
    endif
    let head_pos = getpos('.')
    call search('\v(\.|\s|$)', 'e', line('.'))
    " If not at the end of a line, move left.
    if col('.') != col('$') - 1
        normal! h
    endif
    let tail_pos = getpos('.')
    return ['v', head_pos, tail_pos]
endfunction


let g:loaded_textobj_dotseparated = 1
