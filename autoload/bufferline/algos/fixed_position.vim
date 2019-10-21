" pins the active buffer to a specific index in the list
function! bufferline#algos#fixed_position#modify(names)
  let current = bufnr('%')
  if abs(g:bufferline_fixed_index) >= len(a:names)
    if g:bufferline_fixed_index < 0
      let l:bufferline_fixed_index = 0
    else
      let l:bufferline_fixed_index = -1
    endif
  else
    let l:bufferline_fixed_index = g:bufferline_fixed_index
  endif
  while a:names[l:bufferline_fixed_index][0] != current
    let first = remove(a:names, 0)
    call add(a:names, first)
  endwhile
endfunction

