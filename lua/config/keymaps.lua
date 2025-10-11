local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = false })
end

-- List directory
map('n', '<leader>a', ':find ./<CR>')

-- Spell
map('n', '<leader>s', "z=1<CR><CR>wgea")

-- Mini.diff
map('n', 'gtd', '<cmd>lua MiniDiff.toggle_overlay()<CR>')

-- Tools
map('n', '<leader>n', ':w<CR>')
map('n', '<leader>t', ':q<CR>')
map('v', '<C-j>', ":m '>+1<CR>gv=gv")
map('v', '<C-k>', ":m '<-2<CR>gv=gv")
map('v', "p", "\"_dP") -- Default?

-- lsp
map("n", "grf", "<cmd>lua vim.lsp.buf.format()<CR>")
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")

-- Just for the vertical mode :// (default?)
map("i", "<C-c>", "<Esc>")

-- Fzf (f: files, h: help, g: grep)
map("n", "<leader>ff", ":Pick files<CR>")
map("n", "<leader>fg", ":Pick grep<CR>")
map("n", "<leader>fh", ":Pick help<CR>")
