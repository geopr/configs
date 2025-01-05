return {
  {
    'neovim/nvim-lspconfig',
    commit = '88dff6268a068403c87b461aee69beb61ceb8303',
    lazy = false,

    dependencies = {
      {
        'hrsh7th/nvim-cmp',
        commit = 'b555203ce4bd7ff6192e759af3362f9d217e8c89',
        lazy = false
      },

      --[[ {
        'hrsh7th/cmp-nvim-lsp',
        commit = '99290b3ec1322070bcfb9e846450a46f6efa50f0',
        lazy = false
      }, ]]

      {
        'hrsh7th/cmp-buffer',
        commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa',
        lazy = false
      },

      {
        'hrsh7th/cmp-path',
        commit = '91ff86cd9c29299a64f968ebb45846c485725f23',
        lazy = false
      },

      {
        'hrsh7th/cmp-cmdline',
        commit = 'd250c63aa13ead745e3a40f61fdd3470efde3923',
        lazy = false
      },

      {
        'onsails/lspkind-nvim',
        commit = 'd79a1c3299ad0ef94e255d045bed9fa26025dab6',
        lazy = false
      },

      {
        'saadparwaiz1/cmp_luasnip',
        lazy = false,
        dependencies = {'L3MON4D3/LuaSnip'}
      }
    },

    config = function()
      require'plugins.lsp.cmp';
      require'plugins.lsp.servers';
    end
  },
}
