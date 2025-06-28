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
map('v', '<C-t>', ":m '>+1<CR>gv=gv")
map('v', '<C-n>', ":m '<-2<CR>gv=gv")
map('v', "p", "\"_dP") -- Default?

-- lsp
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "<leader>ff", "<cmd>lua vim.lsp.buf.format()<CR>")

-- Just for the vertical mode :// (default?)
map("i", "<C-c>", "<Esc>")
