"   ____              _____             ____            
"  / ___|__ _  ___   |_   _|_ _ _ __   |  _ \ _   _  ___ 
" | |   / _` |/ _ \    | |/ _` | '_ \  | | | | | | |/ __|
" | |__| (_| | (_) |   | | (_| | | | | | |_| | |_| | (__ 
"  \____\__,_|\___/    |_|\__,_|_| |_| |____/ \__,_|\___|
                                                       

set exrc
runtime ./plug.vim
runtime ./maps.vim
runtime ./gui-win.vim

filetype plugin indent on
if has('vim_starting')
    set encoding=utf-8
endif
scriptencoding utf-8

if &compatible
    set nocompatible
endif


" set backspace=indent,eol,start			" not error when typing 
set clipboard=unnamed					" global clipboard
set noerrorbells belloff=all
set noswapfile hidden
set showcmd noshowmode
set path=.,**
set notimeout nottimeout
set encoding=UTF-8
set mouse=a


" set listchars=eol:↓,tab:→,trail:~,extends:≫,precedes:≪,space:•
set listchars=eol:↓,tab:→.,trail:~,space:•
nnoremap <C-F1> <Cmd>set list!<CR>

syntax on
set number relativenumber
set smarttab
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smartindent nowrap
set scrolloff=8
set signcolumn=auto
set cursorline
set laststatus=2

" auto detecth file change and update that file
set autoread | au CursorHold * checktime | call feedkeys("lh")


" auto change working directory
set autochdir
autocmd bufenter * silent! lcd %:p:h

" colorcolumn for word in place > 80
highlight ColorColumn ctermbg=232
call matchadd('ColorColumn', '\%81v', 100)

set incsearch nohlsearch


highlight LineNr cterm=none ctermbg=black ctermfg=242 
highlight CursorLineNr cterm=bold ctermfg=220 ctermbg=black
autocmd InsertEnter,InsertLeave * set cursorline!

highlight Visual cterm=none ctermbg=242

highlight Pmenu ctermbg=black ctermfg=159
highlight PmenuSel ctermbg=154 ctermfg=black

" let g:netrw_banner=0
" let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
" autocmd FileType netrw set nolist

autocmd FileType html,typescript : setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab smartindent nowrap

" 
" " python for plugin , require 2.7 or 3.6
" set pythonthreehome=C:\python-3.6\
" set pythonthreedll=C:\python-3.6\python36.dll
