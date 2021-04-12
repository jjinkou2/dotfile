function! myspacevim#before() abort
  map <F5> :call SpaceVim#plugins#runner#open()  <CR>
endfunction
function! myspacevim#after() abort
  highlight Comment cterm=italic gui=italic
  set ttymouse=xterm2
endfunction
