return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    commit = '63f3ffc50b0afc59be1015153d00922498085be8',
    lazy = false,
    pin = true
  },

  -- Syntax highlihting for Stylus files (.styl)
  {
    'wavded/vim-stylus',
    commit = '99031823d216c4433fb5c2661a33a43fbebaff61',
    lazy = false,
    pin = true
  },

  -- surrounding manipulatoins (replacing quotes, deleting brackets around words)
  {
    'kylechui/nvim-surround',
    commit = '10b20ca7d9da1ac8df8339e140ffef94f9ab3b18',
    lazy = false,
    pin = true
  },

  -- icons
  {
    'nvim-tree/nvim-web-devicons',
    commit = '9ab9b0b894b2388a9dbcdee5f00ce72e25d85bf9',
    lazy = false,
    pin = true
  },

  {
    'hoob3rt/lualine.nvim',
    commit = '05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9',
    lazy = false,
    pin = true,
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
    commit = '4af572246ce49883e2a52c49203a19984454f2e0',
    lazy = false,
    pin = true,
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
    commit = '43f18ab9155c853a84ded560c6104e6300ad41da',
    lazy = false,
    pin = true
  },

  -- mark modified/new/deleted lines with icons
  {
    'airblade/vim-gitgutter',
    commit = '4a7ca061af2b199a9b97041270611439e8fa2b02',
    lazy = false,
    pin = true
  },

  -- commenting/uncommenting lines
  {
    'b3nj5m1n/kommentary',
    commit = '3a80117148c6798972bb69414423311ab151d368',
    lazy = false,
    pin = true,
    config = function()
     require('kommentary.config').use_extended_mappings() 
    end
  },

  {
    'L3MON4D3/LuaSnip',
    commit = 'a658ae2906344a1d2b9c507738e585cf68e685c7',
    lazy = false,
    pin = true
  },
}

