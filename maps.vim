let mapleader=","
inoremap jk <esc>
noremap <C-h> : set hlsearch!<CR>

nnoremap <leader>fo  <Cmd>normal gg=G''<CR>
noremap <leader>/ :Commentary<CR>
nnoremap <leader>nt <Cmd> vsplit . <CR> <Cmd> vertical resize 30 <CR>

" mapping to reload configuration
nnoremap <leader>so <Cmd>source C:\Users\Lenovo\AppData\Local\nvim\init.vim<CR>
nnoremap <leader>es <Cmd>tabnew C:\Users\Lenovo\AppData\Local\nvim\init.vim<CR>

" change between tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt

" move line easy
" change line of block lines position
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

