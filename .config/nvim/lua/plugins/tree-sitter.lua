return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter.configs'
    configs.setup {
      ensure_installed = {
        'c',
        'lua',
        'javascript',
        'html',
        'zig',
        'typescript',
        'rust',
        'sql',
        'go',
        'python',
        'haskell',
        'css',
        'dockerfile',
        'json',
        'markdown',
        'nginx',
        'scala',
        'tsx',
        'yaml',
        'regex',
        'vim',
        'bash',
        'markdown_inline',
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = { enable = true },
      textobjects = {
        select = {
          enable = true,
        },
        move = {
          enable = true,
          goto_next_start = { [']f'] = '@function.outer', [']c'] = '@class.outer', [']a'] = '@parameter.inner' },
          goto_next_end = { [']F'] = '@function.outer', [']C'] = '@class.outer', [']A'] = '@parameter.inner' },
          goto_previous_start = { ['[f'] = '@function.outer', ['[c'] = '@class.outer', ['[a'] = '@parameter.inner' },
          goto_previous_end = { ['[F'] = '@function.outer', ['[C'] = '@class.outer', ['[A'] = '@parameter.inner' },
        },
      },
    }
  end,
}
