vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })
require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "cpp", "cmake", "lua", "kotlin", "rust", "html", "css", "typescript", "json", "bash", "latex", "go" },
  highlight = {
    enable = true
  }
}
