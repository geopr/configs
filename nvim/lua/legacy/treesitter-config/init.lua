vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = {spacing = 5, severity_limit = 'Warning'},
  update_in_insert = false
})

require('nvim-treesitter.configs').setup({
  ensure_installed = {"html", "css", "javascript", "typescript", "tsx", "graphql", "lua"},
  highlight = {enable = true, additional_vim_regex_highlighting = false},
  autotag = {
    enable = true,
    fileTypes = {
      'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact',
      'tsx', 'jsx', 'vue',
    }
  },
  autopairs = {enable = true}
})
