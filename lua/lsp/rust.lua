vim.lsp.config('rust_analyser', {
  settings = {
    ['rust_analyser'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
})

vim.lsp.enable('rust_analyser')
