return {
  -- tree settier (syntax highlihting)
  {
    'nvim-treesitter/nvim-treesitter',
    commit = '6cb4098d51479f644f967c17d4482bab1ba2640f',
    lazy = false,
    pin = true,
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = {"javascript", "typescript", "lua", "markdown", "markdown_inline"},

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = false,

        highlight = {
          -- `false` will disable the whole extension
          enable = true,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        }
      }

      require'vim.treesitter.query'.set("typescript", "injections", "(comment) @comment");
      require'vim.treesitter.query'.set("javascript", "injections", "(comment) @comment");
    end
  }
}