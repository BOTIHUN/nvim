vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')

-- Resize splits with Alt + arrow keys
vim.keymap.set('n', '<M-h>','<C-w><', { noremap = true })
vim.keymap.set('n', '<M-l>','<C-w>>', { noremap = true })
vim.keymap.set('n', '<M-k>','<C-w>+', { noremap = true })
vim.keymap.set('n', '<M-j>','<C-w>-', { noremap = true })
