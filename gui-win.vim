set guioptions-=m
set guioptions-=l
set guioptions-=b
set guioptions-=r

highlight ColorColumn guibg=#080808

highlight LineNr gui=none guibg=Black guifg=#6c6c6c
highlight CursorLineNr gui=bold guifg=#ffd700 guibg=#005faf
highlight Visual gui=none guibg=#6c6c6c
" highlight Pmenu guibg=black guifg=#afffff
" highlight PmenuSel guibg=#afff00 guifg=black

highlight VertSplit gui=bold guibg=grey

if exists('g:neovide')
    " set guifont=Fira\ Code:h13:w57
    colorscheme onenord
endif
