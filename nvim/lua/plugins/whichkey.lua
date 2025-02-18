return {
  -- displays a popup with possible key bindings
  {
    'folke/which-key.nvim',
    commit = 'd871f2b664afd5aed3dc1d1573bef2fb24ce0484',
    lazy = false,
    pin = true,
    config = function()
      local wk = require('which-key');

      wk.setup {
        plugins = {
          marks = false,
          registers = false,
          spelling = {enabled = false, suggestions = 20},
          presets = {
            operators = false,
            motions = false,
            text_objects = false,
            windows = false,
            nav = false,
            z = false,
            g = false
          }
        }
      };

      local mappings = {
        q = {':q<cr>', 'Quit'},
        w = {':wa<cr>', 'Save all'},
        x = {':bdelete<cr>', 'Close'},
        f = {':Telescope find_files<cr>', 'Telescope Find Files'},
        r = {':Telescope live_grep<cr>', 'Telescope Live Grep'},
        l = {
          name = 'LSP',
          i = {':LspInfo<cr>', 'Connected Language Servers'},
          k = {'<cmd>lua vim.lsp.buf.signature_help()<cr>', 'Signature Help'},
          t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', 'Type Definition'},
          d = {'<cmd>lua vim.lsp.buf.definition()<cr>', 'Go To Definition'},
          h = {'<cmd>lua vim.lsp.buf.hover()<cr>', 'Hover'},
          r = {'<cmd>:Telescope lsp_references<cr>', 'References'},
          R = {'<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename'},
          a = {'<cmd>lua vim.lsp.buf.code_action()<cr>', 'Code Action'},
          e = {'<cmd>lua vim.diagnostic.open_float()<cr>', 'Show Line Diagnostics'},
          n = {'<cmd>lua vim.diagnostic.goto_next()<cr>', 'Go To Next Diagnostic'},
          N = {'<cmd>lua vim.diagnostic.goto_prev()<cr>', 'Go To Previous Diagnostic'},
          l = {'<cmd>lua vim.diagnostic.setqflist()<cr>', 'Show diagnostics at the bottom'}
        },
        g = {
          name = 'Git',
          s = {':G<cr>', 'status'},
          c = {':G commit<cr>', 'commit'},
          p = {':G push<cr>', 'push'},
          P = {':G pull<cr>', 'pull'},
          L = {':G log<cr>', 'log'},
          d = {':Gdiff<cr>', 'diff'},
          b = {':G blame<cr>', 'blame'},
          h = {':diffget //2<cr>', 'get changes from left side'},
          l = {':diffget //3<cr>', 'get changes from right side'},
          n = {':GitGutterNextHunk<cr>', 'jump to next git amendement'},
          N = {':GitGutterPrevHunk<cr>', 'jump to prev git amendement'},
        },
        t = {
          name = 'Nvim tree',
          t = {':NvimTreeToggle<cr>', 'Toggle nvim tree'},
          f = {':NvimTreeFindFile<cr>', 'Find current file in tree'}
        },
        s = {
          name = 'Window',
          l = {':vsplit<cr>', 'Split screen vertically'},
          j = {':split<cr>', 'Split screen horizontally'},
          x = {':close<cr>', 'Close splitted window'},
        },
        b = {':Telescope buffers<cr>', 'Show current buffers'}
      };

      local opts = {prefix = '<leader>'};
      wk.register(mappings, opts);
    end
  },
}
