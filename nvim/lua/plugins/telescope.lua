return {
  -- fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    commit = '0e0600908d1ad5ac4992fa0ab578e23e9d9d6f37',
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
      local actions = require'telescope.actions';
      local previewers = require'telescope.previewers';

      require'telescope'.setup {
        pickers = {
          find_files = {
            previewer = false
          },
          buffers = {
            previewer = false,
          },
        },
        defaults = {
          layout_config = {
            width = 0.9,
            prompt_position = "bottom",
            preview_cutoff = 120,
            horizontal = {
              mirror = false,
              preview_width = 0.5,
              results_width = 0.8,
            },
            vertical = {
              mirror = false
            },
          },
          vimgrep_arguments = {
            'rg',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden',
          },
          prompt_prefix = " ",
          selection_caret = " ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "descending",
          layout_strategy = "horizontal",
          file_sorter = require'telescope.sorters'.get_fuzzy_file,
          file_ignore_patterns = { "node_modules" },
          generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
          path_display = {},
          winblend = 0,
          border = {},
          borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
          color_devicons = true,
          use_less = true,
          set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil
          file_previewer = previewers.vim_buffer_cat.new,
          grep_previewer = previewers.vim_buffer_vimgrep.new,
          qflist_previewer = previewers.vim_buffer_qflist.new,
          buffer_previewer_maker = previewers.buffer_previewer_maker,
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
              ["<esc>"] = actions.close,
              ["<CR>"] = actions.select_default + actions.center
            },
            n = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
            }
          }
        }
      }
    end
  }
}
