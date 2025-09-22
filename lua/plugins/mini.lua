vim.pack.add({
  "https://github.com/nvim-mini/mini.pairs",
  "https://github.com/nvim-mini/mini.hipatterns",
  "https://github.com/nvim-mini/mini.indentscope",
  "https://github.com/nvim-mini/mini.icons",
  "https://github.com/nvim-mini/mini.diff",
  "https://github.com/nvim-mini/mini.pick",
})
require('mini.pairs').setup()
require('mini.hipatterns').setup()
require('mini.indentscope').setup()
require('mini.icons').setup()
require('mini.pick').setup({
  mappings = {
    choose = '<C-y>'
  }
})
require('mini.diff').setup({
  view = {
    style = 'number'
  }
})
