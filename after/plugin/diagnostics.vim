lua << EOF

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

function PrintDiagnostics(bufnr)
  bufnr = bufnr or 0
  local count_warn = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.WARN })
  local count_error = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.ERROR })
  local diagnostic_message = string.format("%d: %d:", count_error, count_warn)
  vim.api.nvim_echo({{diagnostic_message}}, false, {})
end

vim.cmd [[ 
	augroup Show_diagnostics
	autocmd! 
	autocmd InsertLeave * lua PrintDiagnostics() 
	autocmd InsertEnter * lua PrintDiagnostics()
	augroup end
]]

EOF
" local function lspSymbol(name, icon)
" vim.fn.sign_define(
" ‘DiagnosticSign’ .. name,
" { text = icon, numhl = ‘DiagnosticDefault’ .. name }
" )
" end
" lspSymbol(‘Error’, ‘’)
" lspSymbol(‘Information’, ‘’)
" lspSymbol(‘Hint’, ‘’)
" lspSymbol(‘Info’, ‘’)
" lspSymbol(‘Warning’, ‘’)
" local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

