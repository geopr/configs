--[[ local lsp = require'lsp-zero'

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'clangd',
  'rust_analyzer',
})

lsp.configure('sumneko_lua', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  },
}) ]]

local lspconfig = require'lspconfig'
local capabilities = require'cmp_nvim_lsp'.default_capabilities()

lspconfig.eslint.setup {
  capabilities = capabilities
}

lspconfig.lua_ls.setup {
  capabilities = capabilities,

  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

--[[ lspconfig.clangd.setup {
  capabilities = capabilities
} ]]

--[[ lspconfig.rust_analyzer.setup {
  capabilities = capabilities
} ]]

--[[ lspconfig.graphql.setup {
  capabilities = capabilities
} ]]

-- vuejs
--[[ lspconfig.volar.setup {
  capabilities = capabilities
} ]]

--[[ lspconfig.cssls.setup {
  capabilities = capabilities
} ]]

--[[ lspconfig.html.setup {
  capabilities = client_capabilities
} ]]

lspconfig.tsserver.setup {
  capabilities = capabilities,
}
