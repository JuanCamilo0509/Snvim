local o = vim.o
local g = vim.g
local opt = vim.opt
g.mapleader = ' '
g.maplocalleader = ' '

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

-- Formatting
o.cursorline = true
o.cursorlineopt = "number"

-- Language formatting
opt.spell = true
opt.spelllang = { "en_us" }
-- Find command
opt.path = vim.opt.path + "**"
-- Status Line
opt.showmode = false
