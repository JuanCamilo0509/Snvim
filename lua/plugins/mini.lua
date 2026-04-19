vim.pack.add({
  "https://github.com/nvim-mini/mini.pairs",
  "https://github.com/nvim-mini/mini.hipatterns",
  "https://github.com/nvim-mini/mini.indentscope",
  "https://github.com/nvim-mini/mini.icons",
  "https://github.com/nvim-mini/mini.diff",
  "https://github.com/nvim-mini/mini.pick",
})
require('mini.pairs').setup()
require('mini.hipatterns').setup({
  highlighters = {
    -- Highlight standalone 'FIXME', 'BUG', 'TODO', 'NOTE'
    fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
    bug       = { pattern = '%f[%w]()BUG()%f[%W]', group = 'MiniHipatternsHack' },
    todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
    note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

    -- Highlight hex color strings (`#rrggbb`) using that color
    hex_color = require('mini.hipatterns').gen_highlighter.hex_color(),
  },
})
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
