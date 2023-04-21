require('bufferline').setup {
  options = {
    diagnostics = "nvim_lsp",
    tab_size = 14,
  },

  highlights = {
    modified = {
        fg = '#45ba65',
    },
    modified_visible = {
        fg = '#45ba65',
    },
    modified_selected = {
        fg = '#45ba65',
    },
  }
}

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = false }

map('n', '<TAB>', ':BufferLineCycleNext<CR>', options)
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', options)
