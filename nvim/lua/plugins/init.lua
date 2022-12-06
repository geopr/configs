return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }
  use 'gpanders/editorconfig.nvim'
  use 'vim-test/vim-test'
  use {
    "kylechui/nvim-surround",
    tag = "*",
    config = "require('nvim-surround-config')",
  }
  use {
    'kkoomen/vim-doge',
    run = ':call doge#install()',
  }
  use {
    'akinsho/bufferline.nvim',
    config = "require('bufferline-config')",
    requires = 'nvim-tree/nvim-web-devicons',
  }
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = "require('lualine-config')"
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = "require('nvim-tree-config')"
  }
  use {
    'folke/which-key.nvim',
    event = "BufWinEnter",
    config = "require('whichkey-config')"
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    cmd = "Telescope",
    config = "require('telescope-config')"
  }
  use {'neovim/nvim-lspconfig', config = "require('lsp')"}
  use 'hrsh7th/nvim-cmp'
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'saadparwaiz1/cmp_luasnip'}
  use {'L3MON4D3/LuaSnip'}
  use {'onsails/lspkind-nvim'}
  use {'tpope/vim-fugitive'}
  use {'airblade/vim-gitgutter'}
  use {'prettier/vim-prettier'}
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

