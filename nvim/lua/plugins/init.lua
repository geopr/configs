return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  -- tree settier (syntax highlihting)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }

  -- plugin for supporting editorconfig
  use 'gpanders/editorconfig.nvim'

  -- universal plugin that can run test in any supported lang/framework
  use 'vim-test/vim-test'

  -- surrounding manipulatoins (replacing quotes, deleting brackets around words)
  use {
    "kylechui/nvim-surround",
    tag = "*",
    config = "require('nvim-surround-config')",
  }

  -- generating documentation for any supported lang
  use {
    'kkoomen/vim-doge',
    run = ':call doge#install()',
  }

  -- show opened buffers on top of the current buffer
  use {
    'akinsho/bufferline.nvim',
    config = "require('bufferline-config')",
    requires = 'nvim-tree/nvim-web-devicons',
  }

  -- additional information line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = "require('lualine-config')"
  }

  -- file tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = "require('nvim-tree-config')"
  }

  -- displays a popup with possible key bindings
  use {
    'folke/which-key.nvim',
    event = "BufWinEnter",
    config = "require('whichkey-config')"
  }

  -- finder (find files)
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    cmd = "Telescope",
    config = "require('telescope-config')"
  }

  -- configuring lsp
  use {
    'neovim/nvim-lspconfig',
    config = "require('lsp')",
  }

  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'

  -- snippets engine
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- icons for completion
  use 'onsails/lspkind-nvim'

  -- git
  use 'tpope/vim-fugitive'

  -- mark modified/new/deleted lines with icons
  use 'airblade/vim-gitgutter'

  -- prettier formatting
  use 'prettier/vim-prettier'

  -- commenting/uncommenting lines
  use {
		"b3nj5m1n/kommentary",
    config = "require('kommentary.config').use_extended_mappings()"
	}
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

