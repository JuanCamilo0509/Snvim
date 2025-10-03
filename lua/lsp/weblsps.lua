local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('jsonls', {
  capabilities = capabilities
})

vim.lsp.config('cssls', {
  capabilities = capabilities
})

vim.lsp.config('superhtml', {
  filetypes = { 'html' }
})

vim.lsp.enable({
  "emmet_language_server",
  "superhtml",
  "svelte",
  "cssls",
  "jsonls",
  "ts_ls"
})
