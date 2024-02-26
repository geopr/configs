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

local utils = require"lsp.utils";
local config = require"lspconfig";
local capabilities = require"cmp_nvim_lsp".default_capabilities();

local servers = {
  eslint        = utils.create_default_server(),
  clangd        = utils.create_default_server({disabled = true}),
  rust_analyzer = utils.create_default_server({disabled = true}),
  graphql       = utils.create_default_server({disabled = true}),
  volar         = utils.create_default_server({disabled = true}),
  html          = utils.create_default_server({disabled = true}),
  css           = utils.create_default_server({disabled = true}),
  tsserver      = utils.create_default_server(),
  pylsp         = utils.create_default_server(),
  lua_ls        = utils.create_lua_server(),
};

utils.setup(servers, config, capabilities);

--[[ lspconfig.eslint.setup {
  capabilities = capabilities
} ]]

--[[ lspconfig.lua_ls.setup {
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
} ]]

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

-- lspconfig.vuels.setup {}

--[[ lspconfig.cssls.setup {
  capabilities = capabilities
} ]]

--[[ lspconfig.html.setup {
  capabilities = client_capabilities
} ]]

--[[ lspconfig.tsserver.setup {
  capabilities = capabilities,
} ]]
