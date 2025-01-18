return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {}
  end,
  keys = {
    { '<leader>x', '<cmd>bd<CR>', desc = 'Close current buffer' },
    { '<tab>', '<cmd>BufferLineCycleNext<CR>', desc = 'Next buffer' },
    { '<S-tab>', '<cmd>BufferLineCyclePrev<CR>', desc = 'Previous buffer' },
  },
}
