
call plug#begin('C:\Users\Lenovo\AppData\Local\nvim\autoload\plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

if has("nvim")
    Plug 'neovim/nvim-lspconfig'
    Plug 'voldikss/vim-floaterm'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'hrsh7th/cmp-nvim-lsp'
    " Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
endif

call plug#end()
