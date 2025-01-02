return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    commit = '2bcf700b59bc92850ca83a1c02e86ba832e0fae0',
    lazy = false
  },

  {
    'nvim-lua/plenary.nvim',
    commit = '2d9b06177a975543726ce5c73fca176cedbffe9d',
    lazy = false
  },

  -- Syntax highlihting for Stylus files (.styl)
  {
    'wavded/vim-stylus',
    commit = '99031823d216c4433fb5c2661a33a43fbebaff61',
    lazy = false
  },

  -- surrounding manipulatoins (replacing quotes, deleting brackets around words)
  {
    'kylechui/nvim-surround',
    commit = '9f0cb495f25bff32c936062d85046fbda0c43517',
    lazy = false
  },

  -- icons
  {
    'nvim-tree/nvim-web-devicons',
    commit = 'd42e68608ba11de8567edb6aeaa0b12bdf627cbc',
    lazy = false
  },

  {
    'hoob3rt/lualine.nvim',
    commit = '2a5bae925481f999263d6f5ed8361baef8df4f83',
    lazy = false,
    opts = {
      options = {
        section_separators = '',
        component_separators = '',
        globalstatus = true,
      },
      extensions = {'nvim-tree'}
    }
  },

  -- file tree
  {
    'kyazdani42/nvim-tree.lua',
    commit = '68fc4c20f5803444277022c681785c5edd11916d',
    lazy = false,
    opts = {
      hijack_netrw = true,
      hijack_cursor = true,
      view = {
        width = 40,
        side = "right",
      }
    }
  },

  -- git
  {
    'tpope/vim-fugitive',
    commit = '174230d6a7f2df94705a7ffd8d5413e27ec10a80',
    lazy = false
  },

  -- mark modified/new/deleted lines with icons
  {
    'airblade/vim-gitgutter',
    commit = '7b0b5098e3e57be86bb96cfbf2b8902381eef57c',
    lazy = false
  },

  -- commenting/uncommenting lines
  {
    'b3nj5m1n/kommentary',
    commit = 'd5a111a3bc4109a8f913a5863c9092b3b3801482',
    lazy = false,
    config = function()
     require('kommentary.config').use_extended_mappings() 
    end
  },

  {
    'L3MON4D3/LuaSnip',
    commit = 'a658ae2906344a1d2b9c507738e585cf68e685c7',
    lazy = false
  },
}

