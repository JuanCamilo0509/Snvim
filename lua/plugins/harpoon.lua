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
    map("ma", function() harpoon:list():add() end)
    map("md", function() harpoon:list():remove() end)
    map("mo", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    map("mh", function() harpoon:list():select(1) end)
    map("mt", function() harpoon:list():select(2) end)
    map("mn", function() harpoon:list():select(3) end)
    map("ms", function() harpoon:list():select(4) end)
  end
}
