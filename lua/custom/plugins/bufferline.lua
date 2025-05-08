return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function(_, opts)
    require('bufferline').setup(opts)
    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
  keys = {
    { '<leader>x', '<cmd>bd<CR>', desc = 'Close current buffer' },
    { '<tab>', '<cmd>BufferLineCycleNext<CR>', desc = 'Next buffer' },
    { '<S-tab>', '<cmd>BufferLineCyclePrev<CR>', desc = 'Previous buffer' },
  },
}
