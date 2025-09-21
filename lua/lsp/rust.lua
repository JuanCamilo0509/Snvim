vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust_analyzer'] = {
      diagnostics = {
        enable = true;
      }
    }
  }
})
vim.lsp.enable('rust_analyzer')
