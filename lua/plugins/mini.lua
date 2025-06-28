local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = false })
end
return {
  { 'echasnovski/mini.nvim' },
  {
    'echasnovski/mini.hipatterns',
    config = function()
      local hipatterns = require('mini.hipatterns')
      require('mini.hipatterns').setup({
        highlighters = {
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
        delay = {
          text_change = 200,
          scroll = 50,
        },
      })
    end
  },
  {
    'echasnovski/mini.indentscope',
    config = function()
      require('mini.indentscope').setup()
    end
  },
  {
    'echasnovski/mini.pairs',
    config = function()
      require('mini.pairs').setup()
    end
  },
  {
    'echasnovski/mini.diff',
    config = function()
      require('mini.diff').setup()
    end
  },
  {
    'echasnovski/mini.splitjoin',
    config = function()
      require('mini.splitjoin').setup()
      map('n', "<leader><C-d>", ':lua MiniDiff.toggle_overlay()<CR>')
    end
  }
}
