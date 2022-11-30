require('bufferline').setup {
  options = {
    diagnostics = "nvim_lsp",
    tab_size = 14,
  },
}

vim.cmd [[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
