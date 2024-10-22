return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'palenight',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_x = {
          {
            'diagnostics',
            colored = true,
            always_visible = true,
            symbols = { error = 'E:', warn = 'W:', info = 'I:', hint = 'H:' },
          },
        },
        lualine_y = { 'filetype' },
        lualine_z = { 'progress' },
      },
    }
  end,
}
