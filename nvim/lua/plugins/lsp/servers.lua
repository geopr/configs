local config = require'lspconfig';
local capabilities = require'cmp_nvim_lsp'.default_capabilities();

config.cssls.setup {capabilities = capabilities};

config.html.setup {capabilities = capabilities};

config.ts_ls.setup {capabilities = capabilities};

config.eslint.setup {capabilities = capabilities};

config.lua_ls.setup {
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
      }
    }
  }
};

-- highlights occurrences under cursor
-- the function is called when any lsp server attaches to a buffer
local custom_on_attach = function()
  vim.cmd [[
    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
  ]]
end

local original_start_client = vim.lsp.start_client;

vim.lsp.start_client = function(config)
  if config.on_attach == nil then
    config.on_attach = custom_on_attach

  else
    local original_on_attach = config.on_attach

    config.on_attach = function(client, bufnr)
      custom_on_attach()
      original_on_attach(client, bufnr)
    end
  end

  return original_start_client(config)
end
