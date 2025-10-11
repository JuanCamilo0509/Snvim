vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/ThePrimeagen/harpoon"
})

vim.keymap.set("n", "ma", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "mo", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "me", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "mu", function() require("harpoon.ui").nav_file(4) end)
vim.keymap.set("n", "mm", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "ms", function() require("harpoon.ui").toggle_quick_menu() end)
