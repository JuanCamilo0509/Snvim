local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = false })
end

-- List directory
map('n', '<leader>a', ':find ./<CR>')

-- Spell
map('n', '<leader>s', "z=1<CR><CR>wgea")

-- Tools
map('n', '<leader>n', ':w<CR>')
map('n', '<leader>t', ':q<CR>')
map('v', '<C-j>', ":m '>+1<CR>gv=gv")
map('v', '<C-k>', ":m '<-2<CR>gv=gv")
map('v', "p", "\"_dP") -- Default?

-- lsp
map("n", "=G", "<cmd>lua vim.lsp.buf.format()<CR>")

-- Just for the vertical mode :// (default?)
map("i", "<C-c>", "<Esc>")

-- Bookmarks
for i = string.byte("a"), string.byte("z") do
  local m = string.char(i)
  map('n', "dm" .. m, ":delmarks " .. m .. "<CR>")
end

for i = string.byte("A"), string.byte("Z") do
  local m = string.char(i)
  map('n', "dm" .. m, ":delmarks " .. m .. "<CR>")
end

-- Fzf (f: files, h: help, g: grep)
map("n", "<leader>ff", ":Pick files<CR>")
map("n", "<leader>fg", ":Pick grep<CR>")
map("n", "<leader>fh", ":Pick help<CR>")
