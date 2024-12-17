local M = {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
  },
}
M.config = function()
  local cmp = require("cmp")
  vim.opt.completeopt = { "menu", "menuone" }

  cmp.setup({
    window = {
      documentation = {
        border = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
        winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',

      },
      completion = {
        border = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
        winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
      }
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
    }
    ),
  })
end

return M
