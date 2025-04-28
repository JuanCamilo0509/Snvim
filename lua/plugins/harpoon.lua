return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {"nvim-lua/plenary.nvim"},
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup()
    local function map(lhs, rhs, opts)
      vim.keymap.set("n", lhs, rhs, opts or {})
    end
    map("<c-a>", function() harpoon:list():add() end)
    map("<c-l>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    map("<c-h>", function() harpoon:list():select(1) end)
    map("<c-t>", function() harpoon:list():select(2) end)
    map("<c-n>", function() harpoon:list():select(3) end)
    map("<c-s>", function() harpoon:list():select(4) end)
  end
}
