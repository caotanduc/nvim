set exrc
runtime ./plug.vim
runtime ./maps.vim
runtime ./gui-win.vim


set backspace=indent,eol,start			" not error when typing 
set clipboard=unnamed					" global clipboard
set noerrorbells belloff=all
set noswapfile hidden
set showcmd noshowmode
set path=.,**
set notimeout nottimeout


syntax on
set number relativenumber
set smarttab
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smartindent nowrap
set scrolloff=8
set signcolumn=auto
set cursorline
set laststatus=2
set noshowmode

" auto change working directory
set autochdir
autocmd BufEnter * silent! lcd %:p:h

" colorcolumn for word in place > 80
highlight ColorColumn ctermbg=232
call matchadd('ColorColumn', '\%81v', 100)

set incsearch nohlsearch


highlight LineNr cterm=none ctermbg=black ctermfg=242 
highlight CursorLineNr cterm=bold ctermfg=220 ctermbg=25
autocmd InsertEnter,InsertLeave * set cursorline!

highlight Visual cterm=none ctermbg=242

highlight Pmenu ctermbg=black ctermfg=159
highlight PmenuSel ctermbg=154 ctermfg=black

