set guioptions-=m
set guioptions-=l
set guioptions-=b
set guioptions-=r

highlight ColorColumn guibg=#080808

highlight LineNr gui=none guibg=Black guifg=#6c6c6c
highlight CursorLineNr gui=bold guifg=#ffd700 guibg=#005faf
highlight Visual gui=none guibg=#6c6c6c

" highlight VertSplit gui=bold guibg=grey

if exists('g:uivonim')
    set laststatus=1
    colorscheme dracula
    highlight Pmenu guibg=black guifg=#afffff
    highlight PmenuSel guibg=#afff00 guifg=black
endif

if exists('g:neovide')
	" set nocursorline
    " set guifont=Fira\ Code:h13:w57
	
	" for working with vs2019
	set guifont=Consolas:h15
    colorscheme delek
	highlight CursorLine guibg=white
	highlight LineNr gui=none guibg=Black guifg=#6c6c6c
	highlight CursorLineNr gui=bold guifg=White guibg=Green
	" for working with vs2019

    highlight Pmenu guibg=black guifg=#afffff
    highlight PmenuSel guibg=#afff00 guifg=black
endif
