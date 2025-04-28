local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = false })
end
map('n', '<leader>rns', "<Plug>(vimtex-env-change)")
map('n', ']]', "<Plug>(vimtex-]])")
map('n', '[[', "<Plug>(vimtex-[[)")
map('n', '<leader>ll', "<Plug>(vimtex-toc-toggle)")
map('v', 'ie', "<Plug>(vimtex-ie)")
map('v', 'ae', "<Plug>(vimtex-ae)")
