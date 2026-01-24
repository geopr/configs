return {
  -- Color theme
  {
    'geopr/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd('colorscheme tokyonight-night');
    end
  },
}

-- for gruvbox theme
--[[ vim.g.gruvbox_contrast_dark = "medium"
vim.g.gruvbox_bold = 0
vim.g.gruvbox_italic = 0
vim.g.gruvbox_invert_selection = 0
vim.g.gruvbox_invert_signs = 0 ]]

-- for nord theme
--vim.cmd[[
--hi Normal guibg=#242933
--hi LineNr guibg=#242933
--hi SignColumn guibg=#242933
--hi EndOfBuffer guibg=#242933
--hi NonText guibg=#242933
--]]

--vim.cmd[[
--hi Normal guibg=NONE ctermbg=NONE
--hi LineNr guibg=NONE ctermbg=NONE
--hi SignColumn guibg=NONE ctermbg=NONE
--hi EndOfBuffer guibg=NONE ctermbg=NONE
--hi NonText guibg=NONE ctermbg=NONE
--]]
