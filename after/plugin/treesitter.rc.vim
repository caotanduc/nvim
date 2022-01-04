if !exists('g:loaded_nvim_treesitter')
    finish
endif

lua << EOF
require 'nvim-treesitter.install'.compilers = { "clang" }
require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    indent = {
        enable = false,
    },
    ensure_installed = {
        "javascript",
        "cpp",
        "python",
        "vim",
        "lua",
    }
}
EOF
