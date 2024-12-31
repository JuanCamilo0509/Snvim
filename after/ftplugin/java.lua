local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = false })
end
map('n', 'gs', ":lua require('java_util').getSet()<CR>")
