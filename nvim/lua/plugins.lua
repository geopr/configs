return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  -- tree settier (syntax highlihting)
  use {
    'nvim-treesitter/nvim-treesitter',
    commit = '0b81ed9f18333949a74586a1ea0497ae4cbb7cd4',
    lock = true,
    requires = {
      {
        'nvim-lua/plenary.nvim',
        commit = '102c02903c74b93c705406bf362049383abc87c8',
        lock = true
      }
    },
  }

  use {
    'nvim-treesitter/nvim-treesitter-context',
    commit = '63f3ffc50b0afc59be1015153d00922498085be8',
    lock = true
  }

  -- remove
  -- use 'nvim-treesitter/playground'

  -- Syntax highlihting for Stylus files (.styl)
  use {
    'wavded/vim-stylus',
    commit = '99031823d216c4433fb5c2661a33a43fbebaff61',
    lock = true
  }

  -- Color theme
  use 'geopr/tokyonight.nvim'

  -- surrounding manipulatoins (replacing quotes, deleting brackets around words)
  use {
    'kylechui/nvim-surround',
    commit = '10b20ca7d9da1ac8df8339e140ffef94f9ab3b18',
    lock = true
  }

  -- show opened buffers on top of the current buffer
  --[[ use {
    'akinsho/bufferline.nvim',

    requires = {
      {'nvim-tree/nvim-web-devicons'},
    },
  } ]]

  -- icons
  use {
    'nvim-tree/nvim-web-devicons',
    commit = '9ab9b0b894b2388a9dbcdee5f00ce72e25d85bf9',
    lock = true
  }

  -- additional information line
  use {
    'hoob3rt/lualine.nvim',
    commit = '05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9',
    lock = true
  }

  -- file tree
  use {
    'kyazdani42/nvim-tree.lua',
    commit = '4af572246ce49883e2a52c49203a19984454f2e0',
    lock = true
  }

  -- displays a popup with possible key bindings
  use {
    'folke/which-key.nvim',
    commit = 'd871f2b664afd5aed3dc1d1573bef2fb24ce0484',
    lock = true
  }

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    commit = '0e0600908d1ad5ac4992fa0ab578e23e9d9d6f37',
    lock = true,
    requires = {
      {
        'nvim-lua/plenary.nvim',
        commit = '102c02903c74b93c705406bf362049383abc87c8',
        lock = true
      }
    },
  }

  -- git
  use {
    'tpope/vim-fugitive',
    commit = '43f18ab9155c853a84ded560c6104e6300ad41da',
    lock = true
  }

  -- mark modified/new/deleted lines with icons
  use {
    'airblade/vim-gitgutter',
    commit = '4a7ca061af2b199a9b97041270611439e8fa2b02',
    lock = true
  }

  -- prettier formatting
  -- use 'prettier/vim-prettier'

  -- commenting/uncommenting lines
  use {
    'b3nj5m1n/kommentary',
    commit = '3a80117148c6798972bb69414423311ab151d368',
    lock = true
  }

  -- configuring lsp
  use {
    'neovim/nvim-lspconfig',
    commit = '2187f222c37cb5fd7cf96f242e5c8a4a340f2596',
    lock = true
  }

  -- autocompletion
  use {
    'hrsh7th/nvim-cmp',
    commit = '2743dd989e9b932e1b4813a4927d7b84272a14e2',
    lock = true
  }

  use {
    'hrsh7th/cmp-nvim-lsp',
    commit = '44b16d11215dce86f253ce0c30949813c0a90765',
    lock = true
  }

  use {
    'hrsh7th/cmp-buffer',
    commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa',
    lock = true
  }

  use {
    'hrsh7th/cmp-path',
    commit = '91ff86cd9c29299a64f968ebb45846c485725f23',
    lock = true
  }

  use {
    'hrsh7th/cmp-cmdline',
    commit = '8ee981b4a91f536f52add291594e89fb6645e451',
    lock = true
  }

  -- snippets engine
  use {
    'saadparwaiz1/cmp_luasnip',
    commit = '18095520391186d634a0045dacaa346291096566',
    lock = true
  }

  use {
    'L3MON4D3/LuaSnip',
    commit = 'a658ae2906344a1d2b9c507738e585cf68e685c7',
    lock = true
  }

  -- icons for completion
  use {
    'onsails/lspkind-nvim',
    commit = '57610d5ab560c073c465d6faf0c19f200cb67e6e',
    lock = true
  }
end)

