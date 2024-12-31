local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = false })
end

-- Spell
map('n', '<leader>s', "z=1<CR><CR>wgea ")

-- Tools
map('n', '<leader>n', ':w<CR>')
map('n', '<leader>t', ':q<CR>')

-- G for go to
map('n', 'gD', '<C-]>') -- Go to the global definition


-- Next and previous coincidences
map('n', 'l', 'n')
map('n', 'L', 'N')

-- Vim lsp functionalities
map('n', 'ff', ":lua vim.lsp.buf.format()<CR>")
map('n', '<leader>rn', ":lua vim.lsp.buf.rename()<CR>")
