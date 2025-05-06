local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = false })
end

-- List directory
map('n', '<leader>ls', ':find ./<CR>')

-- Spell
map('n', '<leader>s', "z=1<CR><CR>wgea")

-- Tools
map('n', '<leader>n', ':w<CR>')
map('n', '<leader>t', ':q<CR>')
map('n', '<leader>lr', ':UndotreeToggle<CR>')
map('v', '<C-t>', ":m '>+1<CR>gv=gv")
map('v', '<C-n>', ":m '<-2<CR>gv=gv")
map('v', "p", "\"_dP")

-- G for go to
map('n', 'gD', '<C-]>') -- Go to the global definition

-- Just for the vertical mode :// (default?)
map("i", "<C-c>", "<Esc>")

-- Next and previous coincidences
map('n', 'l', 'n')
map('n', 'L', 'N')
-- Vim lsp functionalities
map('n', 'ff', ":lua vim.lsp.buf.format()<CR>")
