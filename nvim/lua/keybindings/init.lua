vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = false }

map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-l>', '<C-w>l', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)

map('i', 'jk', '<ESC>', options)
map('i', 'kj', '<ESC>', options)

map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- prevents copying selection after pasting
map('v', 'p', "\"_dP", options)
