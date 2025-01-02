return {
  -- tree settier (syntax highlihting)
  {
    'nvim-treesitter/nvim-treesitter',
    commit = '0b81ed9f18333949a74586a1ea0497ae4cbb7cd4',
    lazy = false,
    pin = true,
    dependencies = {
      {
        'nvim-lua/plenary.nvim',
        commit = '102c02903c74b93c705406bf362049383abc87c8',
        pin = true
      }
    },
    config = function()
      vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = {spacing = 5, severity_limit = 'Warning'},
        update_in_insert = false
      })

      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = {"html", "css", "javascript", "typescript", "lua", "c", "cpp", "rust"},

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
        },
      }

      require'vim.treesitter.query'.set("typescript", "injections", "(comment) @comment");
      require'vim.treesitter.query'.set("javascript", "injections", "(comment) @comment");
    end
  }
}
