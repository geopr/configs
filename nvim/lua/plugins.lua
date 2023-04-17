return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  -- tree settier (syntax highlihting)
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      {'nvim-lua/plenary.nvim'},
    },
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  -- remove
  -- use 'nvim-treesitter/playground'

  -- Syntax highlihting for Stylus files (.styl)
  use 'wavded/vim-stylus'

  -- Color theme
  use "folke/tokyonight.nvim"

  -- Remove when nvim 0.9 is released (it has builtin support)
  use 'gpanders/editorconfig.nvim'

  -- surrounding manipulatoins (replacing quotes, deleting brackets around words)
  use {
    "kylechui/nvim-surround",
    tag = "*",
  }

  -- show opened buffers on top of the current buffer
  use {
    'akinsho/bufferline.nvim',

    requires = {
      {'nvim-tree/nvim-web-devicons'},
    },
  }

  -- additional information line
  use {
    'hoob3rt/lualine.nvim',

    requires = {
      {'kyazdani42/nvim-web-devicons', opt = true},
    },
  }

  -- file tree
  use {
    'kyazdani42/nvim-tree.lua',

    requires = {
      {'kyazdani42/nvim-web-devicons'},
    },
  }

  -- displays a popup with possible key bindings
  use {'folke/which-key.nvim'}

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',

    requires = {
      {'nvim-lua/plenary.nvim'},
    },
  }

  -- git
  use 'tpope/vim-fugitive'

  -- mark modified/new/deleted lines with icons
  use 'airblade/vim-gitgutter'

  -- prettier formatting
  use 'prettier/vim-prettier'

  -- commenting/uncommenting lines
  use 'b3nj5m1n/kommentary'

  -- configuring lsp
  use 'neovim/nvim-lspconfig'

  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- snippets engine
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- icons for completion
  use 'onsails/lspkind-nvim'
end)

