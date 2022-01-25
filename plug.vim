
call plug#begin('C:\Users\Lenovo\AppData\Local\nvim\autoload\plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'


if has("nvim")
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'shaunsingh/nord.nvim'
    Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
    Plug 'dracula/vim'
    Plug 'voldikss/vim-floaterm'
    " Plug 'dense-analysis/ale'
    " Plug 'maximbaz/lightline-ale'

    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-treesitter/playground'

    " only need three of this buts sometime has a little bugs (option 1)
    " Plug 'hrsh7th/cmp-nvim-lsp'
    " Plug 'hrsh7th/cmp-buffer'
    " Plug 'hrsh7th/nvim-cmp'

    " full use (option 2)
    Plug 'neovim/nvim-lspconfig'

    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'


    " " For vsnip users.
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    " end option 2

    " telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end()


