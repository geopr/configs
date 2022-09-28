local lspconfig = require('lspconfig')

local client_capabilities = vim.lsp.protocol.make_client_capabilities()
client_capabilities.textDocument.completion.completionItem.snippetSupport = true

local capabilities = require('cmp_nvim_lsp').update_capabilities(client_capabilities)

lspconfig.eslint.setup {}

-- lspconfig.rust_analyzer.setup {}

-- lspconfig.graphql.setup {}

-- vuejs
--[[ lspconfig.volar.setup {
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
} ]]

-- lspconfig.volar.setup {}

lspconfig.cssls.setup {
  capabilities = client_capabilities
} 

lspconfig.html.setup {
  capabilities = client_capabilities
}

lspconfig.tsserver.setup {
  capabilities = client_capabilities,
}

