return {
  'folke/noice.nvim',
  config = function()
    require('noice').setup {
      message = {
        enabled = false,
      },
      popupmenu = {
        enabled = false,
      },
    }
  end,
}
