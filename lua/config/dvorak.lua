local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = false })
end
----Dvorak

--Right hand
map('n', 'e', 'i')
map('n', 'E', 'I')
map('v', 'e', 'i')
map('v', 'E', 'I')

--Left hand
map('n', 't', 'j')
map('v', 't', 'j')

map('n', 'n', 'k')
map('v', 'n', 'k')

map('n', 's', 'l')
map('v', 's', 'l')

-- Next and previous coincidences
map('n', 'l', 'n')
map('n', 'L', 'N')

-- Lines wrap movement
map('n', 'gt', "gj")
map('n', 'gn', "gk")

--Moving between windows
map('n', '<C-w>s', '<C-w>l')
map('n', '<C-w>n', '<C-w>k')
map('n', '<C-w>t', '<C-w>j')

map('n', '<C-w>S', '<C-w>L')
map('n', '<C-w>N', '<C-w>K')
map('n', '<C-w>T', '<C-w>J')
