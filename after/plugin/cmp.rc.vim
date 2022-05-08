set omnifunc=
set completeopt=menu,menuone,noselect shortmess+=c
set pumheight=5


lua <<EOF
   local has_words_before = function()
     local line, col = unpack(vim.api.nvim_win_get_cursor(0))
     return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
   end
 
   local feedkey = function(key, mode)
     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
   end
   -- Setup nvim-cmp.
   local cmp = require'cmp'
 
   cmp.setup({
     snippet = {
       -- REQUIRED - you must specify a snippet engine
       expand = function(args)
         vim.fn["vsnip#anonymous"](arg.body) -- For `vsnip` users.
       end,
     },
     mapping = {
       ['<C-space>'] = cmp.mapping.complete(),
       ['<C-e>'] = cmp.mapping.close(),
       ["<Tab>"] = cmp.mapping(function(fallback)
         if cmp.visible() then
           cmp.select_next_item()
         elseif vim.fn["vsnip#available"](1) == 1 then
           feedkey("<Plug>(vsnip-expand-or-jump)", "")
         elseif has_words_before() then
           cmp.complete()
         else
           fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
         end
       end, { "i", "s" }),
 
       ["<S-Tab>"] = cmp.mapping(function()
         if cmp.visible() then
           cmp.select_prev_item()
         elseif vim.fn["vsnip#jumpable"](-1) == 1 then
           feedkey("<Plug>(vsnip-jump-prev)", "")
         end
       end, { "i", "s" }),
       ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
     },
     sources = cmp.config.sources({
       { name = 'nvim_lsp' },
       { name = 'vsnip' }, -- For vsnip users.
     }, {
       { name = 'buffer' },
     })
   })
 
   -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
   cmp.setup.cmdline('/', {
     sources = {
       { name = 'buffer' }
     }
   })
 
   -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
   cmp.setup.cmdline(':', {
     sources = cmp.config.sources({
       { name = 'path' }
     }, {
       { name = 'cmdline' }
     })
   })
 
   -- Setup lspconfig.
   local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
   local servers = {'clangd', 'pyright', 'tsserver'}
   for _, lsp in ipairs(servers) do
       require('lspconfig')[lsp].setup {
           capabilities = capabilities
       }
   end
EOF

