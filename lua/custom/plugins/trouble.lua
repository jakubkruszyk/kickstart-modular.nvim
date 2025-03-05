return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  cmd = 'Trouble',
  keys = {
    {
      '<leader>dq',
      '<cmd>Trouble diagnostics toggle<CR>',
      desc = 'Diagnostics Trouble',
      mode = 'n',
    },
  },
}
