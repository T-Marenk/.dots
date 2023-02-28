-- Copy and replace mappings
vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('n', 'C', 'c$')

-- Navigate split
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-l>', '<c-w>l')

-- Map : to ö in normal mode
vim.keymap.set('n', 'ö', ':')

-- Shortcut for opening nvimtree
vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')
