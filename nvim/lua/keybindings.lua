vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = false }

-- switching between splitted buffers
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-l>', '<C-w>l', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)

map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- prevents copying selection after pasting
map('v', 'p', "\"_dP", options)

-- center the screen when scrolling half up/bottom
map('n', '<C-d>', '<C-d>zz', options)
map('n', '<C-u>', '<C-u>zz', options)

-- center the screen when ... (i forgot what it is)
map('n', 'n', 'nzzzv', options)
map('n', 'N', 'Nzzzv', options)

