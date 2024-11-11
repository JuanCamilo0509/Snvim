local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = false })
end
--Dvorak
--Right hand
map('n', 'e', 'i')
map('n', 'E', 'I')
map('v', 'e', 'i')
map('v', 'E', 'I')

--Left hand
map('n', 'H', 'b')
map('v', 'H', 'b')

map('n', 't', 'j')
map('n', 'T', '10j')
map('v', 't', 'j')
map('v', 'T', '10j')

map('n', 'n', 'k')
map('n', 'N', '10k')
map('v', 'n', 'k')
map('v', 'N', '10k')

map('n', 's', 'l')
map('n', 'S', 'w')
map('v', 's', 'l')
map('v', 'S', 'w')

--Moving between windows
map('n', '<C-w>s', '<C-w>l')
map('n', '<C-w>n', '<C-w>k')
map('n', '<C-w>t', '<C-w>j')

map('n', '<C-w>S', '<C-w>L')
map('n', '<C-w>N', '<C-w>K')
map('n', '<C-w>T', '<C-w>J')
