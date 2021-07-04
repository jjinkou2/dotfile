function! myspacevim#before() abort
  map <F5> :call SpaceVim#plugins#runner#open()  <CR>

  let g:theme = "light"
  map <F9> :call myspacevim#switchTheme() <CR>

  let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.light': {
  \       'transparent_background': 1,
  \       'override' : {
  \         'color05' : ['', '249']
  \       }
  \     }
  \   }
  \ }

  let g:dracula_colorterm = 0

  let g:NERDTreeGitStatusPorcelainVersion = 1

  " for vue
  autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css 

endfunction

function! myspacevim#switchTheme() abort
  :if g:theme == "light"
    colorscheme dracula
    set background=dark
    let g:theme = "dark"
  :else 
    "colorscheme PaperColor
    colorscheme onehalflight
    set background=light
    let g:theme = "light"
  :endif 

  syn off
  syn on
endfunction

function! myspacevim#after() abort
  highlight Comment cterm=italic gui=italic
  let g:indentLine_char = '▏' 
 "  set ttymouse=xterm2

endfunction
