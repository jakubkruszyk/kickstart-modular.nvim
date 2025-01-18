return {
  'NvChad/nvterm',
  config = function()
    require('nvterm').setup {
      terminals = {
        type_opts = {
          float = {
            relative = 'editor',
            row = 0.2,
            col = 0.10,
            width = 0.8,
            height = 0.6,
            border = 'single',
          },
        },
      },
    }
  end,
  keys = {
    {
      '<A-i>',
      function()
        local terminal = require 'nvterm.terminal'
        terminal.toggle 'float'
      end,
      desc = 'Toggle floating terminal',
      mode = { 'n', 't' },
    },
    {
      '<A-v>',
      function()
        local terminal = require 'nvterm.terminal'
        terminal.toggle 'vertical'
      end,
      desc = 'Toggle vertical terminal',
      mode = { 'n', 't' },
    },
    {
      '<A-h>',
      function()
        local terminal = require 'nvterm.terminal'
        terminal.toggle 'horizontal'
      end,
      desc = 'Toggle horizontal terminal',
      mode = { 'n', 't' },
    },
  },
}
