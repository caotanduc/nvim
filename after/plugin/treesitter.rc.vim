lua << EOF
require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "cpp", "vim" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    disable = {},
    additional_vim_regex_highlighting = false,
  },
}
EOF
