return
{
  "theprimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    { "<leader>ha", function() require("harpoon"):list():add() end,  desc = "harpoon file", },
    {
      "<leader>hl",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "harpoon quick menu",
    },
    { "<leader>hh", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
    { "<leader>ht", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
    { "<leader>hn", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
    { "<leader>hs", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
  },
}
