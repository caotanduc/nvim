if !exists('g:lspconfig')
    finish
endif

command! Format execute 'lua vim.lsp.buf.formatting()'
lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)


--    if client.resolved_capabilities.document_formatting then
--        vim.api.nvim_command [[augroup Format]]
--        vim.api.nvim_command [[autocmd! * <buffer>]]
--        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
--        vim.api.nvim_command [[augroup END]]
--    end

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

local servers = { 'vimls', 'pyright', 'clangd', 'tsserver', 'cssls', 'html' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF
