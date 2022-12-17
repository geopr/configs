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
      custom_on_attach(client, bufnr)
      original_on_attach(client, bufnr)
    end
  end

  return original_start_client(config)
end
