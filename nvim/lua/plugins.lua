return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  use {
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
  }

  -- tree settier (syntax highlihting)
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      {'nvim-lua/plenary.nvim'},
    },
  }

  -- plugin for supporting editorconfig
  use 'gpanders/editorconfig.nvim'

  -- universal plugin that can run test in any supported lang/framework
  use 'vim-test/vim-test'

  -- surrounding manipulatoins (replacing quotes, deleting brackets around words)
  use {
    "kylechui/nvim-surround",
    tag = "*",
  }

  -- generating documentation for any supported lang
  use {
    'kkoomen/vim-doge',
    run = ':call doge#install()',
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

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',

    requires = {
      -- lsp support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- snippets
      {'L3MON4D3/LuaSnip'},
      {'saadparwaiz1/cmp_luasnip'},
    }
  }

  -- git
  use 'tpope/vim-fugitive'

  -- mark modified/new/deleted lines with icons
  use 'airblade/vim-gitgutter'

  -- prettier formatting
  use 'prettier/vim-prettier'

  -- commenting/uncommenting lines
  use {'b3nj5m1n/kommentary'}

  -- legacy
  -- configuring lsp
  --[[ use {
    'neovim/nvim-lspconfig',
    config = "require('lsp')",
  } ]]

  -- autocompletion
  --[[ use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer' ]]

  -- snippets engine
  --[[ use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' ]]

  -- icons for completion
  -- use 'onsails/lspkind-nvim'

  --[[ use {
    'windwp/nvim-autopairs',
    config = "require('autopairs-config')", 
    after = "nvim-cmp"
  } ]]
  --[[ use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter", 
    after = "nvim-treesitter",
  } ]]

end)

