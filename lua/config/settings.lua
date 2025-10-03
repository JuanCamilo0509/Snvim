local o = vim.o
local g = vim.g
local opt = vim.opt

-- Default Configuration
vim.diagnostic.config({ virtual_lines = true })
o.scrolloff = 10
g.mapleader = ' '
g.maplocalleader = ' '
o.winborder = "rounded"

o.hlsearch = false
o.incsearch = true
o.linebreak = true

o.number = true
o.relativenumber = true
o.swapfile = false
o.clipboard = 'unnamedplus'
o.ignorecase = true
o.foldmethod = 'indent'
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

--Undo Tree
local home = os.getenv("HOME")
if (home == nil) then
  home = os.getenv("UserProfile")
end
o.undodir = home .. "/.vim/undodir"
o.undofile = true

-- Formatting
o.cursorline = true
o.cursorlineopt = "number"

-- Language Formatting
opt.spell = true
opt.spelllang = { "en_us", "es" }

-- Find Command
opt.path = opt.path + "**"

-- Status Line
opt.showmode = false

--
vim.diagnostic.config({
  signs = false,
  virtual_text = true,
})
