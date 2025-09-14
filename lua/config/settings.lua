local o = vim.o
local g = vim.g
local opt = vim.opt
local opt_local = vim.opt_local

-- Default Configuration
vim.diagnostic.config({ virtual_lines = true })
opt_local.formatoptions:remove "o"
opt.scrolloff = 10
g.mapleader = ' '
g.maplocalleader = ' '

opt.hlsearch = false
opt.incsearch = true
opt.linebreak = true

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
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Formatting
o.cursorline = true
o.cursorlineopt = "number"

-- Language Formatting
opt.spell = true
opt.spelllang = { "en_us", "es" }

-- Find Command
opt.path = vim.opt.path + "**"

-- Status Line
opt.showmode = false
