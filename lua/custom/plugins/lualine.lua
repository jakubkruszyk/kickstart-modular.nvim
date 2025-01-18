return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = require 'lualine.themes.tokyonight',
    sections = {
      lualine_b = {
        'branch',
        {
          'diff',
          diff_color = {
            added = { fg = '#99c07a' },
            modified = { fg = '#569cd6' },
            deleted = { fg = '#e81515' },
          },
        },
        'diagnostics',
      },
    },
  },
}
