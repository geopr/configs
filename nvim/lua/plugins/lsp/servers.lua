local utils = require"plugins.lsp.utils";
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
  ts_ls         = utils.create_default_server(),
  pylsp         = utils.create_default_server(),
  lua_ls        = utils.create_lua_server(),
};

utils.setup(servers, config, capabilities);

-- highlights occurrences under cursor
-- the function is called when any lsp server attaches to a buffer
local custom_on_attach = function()
  vim.cmd [[
    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
  ]]
end

local original_start_client = vim.lsp.start_client

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
