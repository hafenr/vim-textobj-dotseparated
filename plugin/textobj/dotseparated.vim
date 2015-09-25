if exists('g:loaded_textobj_dotseparated')
  finish
endif

call textobj#user#plugin('underscore', {
\   'code': {
\     'select-a-function': 'FindUnderscoreA',
\     'select-a': 'a_',
\     'select-i-function': 'FindUnderscoreI',
\     'select-i': 'i_',
\   },
\ })

function! FindUnderscoreA()
    call search('\v(_|\s|^)', 'eb', line('.'))
    let head_pos = getpos('.')
    call search('\v(_|\s|$)', 'e', line('.'))
    let tail_pos = getpos('.')
    return ['v', head_pos, tail_pos]
endfunction

function! FindUnderscoreI()
    call search('\v(_|\s|^)', 'eb', line('.'))
    " If not at the beginning of a line, move right.
    if col('.') != 1
        normal! l
    endif
    let head_pos = getpos('.')
    call search('\v(_|\s|$)', 'e', line('.'))
    " If not at the end of a line, move left.
    if col('.') != col('$') - 1
        normal! h
    endif
    let tail_pos = getpos('.')
    return ['v', head_pos, tail_pos]
endfunction

let g:loaded_textobj_dotseparated = 1
