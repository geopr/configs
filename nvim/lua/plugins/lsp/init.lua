return {
  {
    'neovim/nvim-lspconfig',
    commit = '2187f222c37cb5fd7cf96f242e5c8a4a340f2596',
    lazy = false,
    pin = true,

    dependencies = {
      {
        'hrsh7th/nvim-cmp',
        commit = '2743dd989e9b932e1b4813a4927d7b84272a14e2',
        lazy = false,
        pin = true,
      },

      {
        'hrsh7th/cmp-nvim-lsp',
        commit = '44b16d11215dce86f253ce0c30949813c0a90765',
        lazy = false,
        pin = true
      },

      {
        'hrsh7th/cmp-buffer',
        commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa',
        lazy = false,
        pin = true
      },

      {
        'hrsh7th/cmp-path',
        commit = '91ff86cd9c29299a64f968ebb45846c485725f23',
        lazy = false,
        pin = true
      },

      {
        'hrsh7th/cmp-cmdline',
        commit = '8ee981b4a91f536f52add291594e89fb6645e451',
        lazy = false,
        pin = true
      },

      {
        'onsails/lspkind-nvim',
        commit = '57610d5ab560c073c465d6faf0c19f200cb67e6e',
        lazy = false,
        pin = true
      },

      {
        'saadparwaiz1/cmp_luasnip',
        commit = '18095520391186d634a0045dacaa346291096566',
        lazy = false,
        pin = true,

        dependencies = {
          {
            'L3MON4D3/LuaSnip',
            commit = 'a658ae2906344a1d2b9c507738e585cf68e685c7',
            lazy = false,
            pin = true
          }
        }
      }
    },

    config = function()
      require'plugins.lsp.servers';
      require'plugins.lsp.cmp';
    end
  },
}
