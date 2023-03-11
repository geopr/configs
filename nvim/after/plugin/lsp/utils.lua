local utils = {};

local function merge_mut(target, mixin)
  mixin = mixin or {}

  for key, val in pairs(mixin) do
    target[key] = val
  end

  return target;
end

function utils.create_default_server(opts)
  return merge_mut({
    setup = function(capabilities)
      return {capabilities = capabilities};
    end,
  }, opts);
end

function utils.create_lua_server(opts)
  return merge_mut({
    setup = function(capabilities)
      return {
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
      };
    end
  }, opts);
end

function utils.setup(servers, config, capabilities)
  for server, options in pairs(servers) do
    if not options.disabled then
      config[server].setup(options.setup(capabilities));
    end
  end
end

return utils;
