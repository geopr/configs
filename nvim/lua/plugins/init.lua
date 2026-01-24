return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    commit = '198720b4016af04c9590f375d714d5bf8afecc1a',
    lazy = false,
    config = function()
      require('treesitter-context').setup();
    end
  },

  {
    'nvim-lua/plenary.nvim',
    commit = '857c5ac632080dba10aae49dba902ce3abf91b35',
    lazy = false
  },

  -- Syntax highlihting for Stylus files (.styl)
  --[[ {
    'wavded/vim-stylus',
    commit = '99031823d216c4433fb5c2661a33a43fbebaff61',
    lazy = false,
    config = function()
      require('vim-stylus').setup();
    end
  }, ]]

  -- surrounding manipulatoins (replacing quotes, deleting brackets around words)
  {
    'kylechui/nvim-surround',
    commit = 'ae298105122c87bbe0a36b1ad20b06d417c0433e',
    lazy = false,
    config = function()
      require('nvim-surround').setup();
    end
  },

  -- icons
  {
    'nvim-tree/nvim-web-devicons',
    commit = 'ab4cfee554e501f497bce0856788d43cf2eb93d7',
    lazy = false,
    config = function()
      require('nvim-web-devicons').setup();
    end
  },

  {
    'hoob3rt/lualine.nvim',
    commit = 'f4f791f67e70d378a754d02da068231d2352e5bc',
    lazy = false,
    config = function()
      require('lualine').setup({
        options = {
          section_separators = '',
          component_separators = '',
          globalstatus = true,
        },
        extensions = {'nvim-tree'}
      });
    end
  },

  -- file tree
  {
    'kyazdani42/nvim-tree.lua',
    commit = 'c09ff35de503a41fa62465c6b4ae72d96e7a7ce4',
    lazy = false,
    config = function()
      require('nvim-tree').setup({
        hijack_netrw = true,
        hijack_cursor = true,
        view = {
          width = 40,
          side = "right",
        }
      });
    end
  },

  -- git
  {
    'tpope/vim-fugitive',
    commit = '4a745ea72fa93bb15dd077109afbb3d1809383f2',
    lazy = false
  },

  -- mark modified/new/deleted lines with icons
  {
    'airblade/vim-gitgutter',
    commit = '6620e5fbbe6a28de0bfed081f5bd2767023b7eea',
    lazy = false
  },

  -- commenting/uncommenting lines
  {
    'b3nj5m1n/kommentary',
    commit = 'd5a111a3bc4109a8f913a5863c9092b3b3801482',
    lazy = false,
    config = function()
     require('kommentary.config').use_extended_mappings();
    end
  },

  {
    'L3MON4D3/LuaSnip',
    commit = 'a658ae2906344a1d2b9c507738e585cf68e685c7',
    lazy = false
  },
}

