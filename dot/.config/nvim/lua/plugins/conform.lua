return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    local conform = require 'conform'

    local function js_formatters(bufnr)
      local prettier_available = require('conform').get_formatter_info('prettierd', bufnr).available
      local biome_available = require('conform').get_formatter_info('biome', bufnr).available

      if prettier_available then
        return { 'prettierd' }
      elseif biome_available then
        return { 'biome' }
      else
        return {} -- Return an empty table if neither formatter is found
      end
    end

    conform.setup {
      formatters = {
        prettierd = {
          require_cwd = true,
          cwd = require('conform.util').root_file {
            '.prettierrc',
            '.prettierrc.json',
            '.prettierrc.yml',
            '.prettierrc.yaml',
            '.prettierrc.json5',
            '.prettierrc.js',
            '.prettierrc.cjs',
            '.prettierrc.mjs',
            '.prettierrc.toml',
            'prettier.config.js',
            'prettier.config.cjs',
            'prettier.config.mjs',
          },
        },
        biome = {
          require_cwd = true,
          cwd = require('conform.util').root_file {
            'biome.json',
            'biome.config.js',
            -- Add more Biome configuration files if necessary
          },
        },
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = js_formatters,
        typescript = js_formatters,
        typescriptreact = js_formatters,
        go = { 'goimports' },
        python = { 'black', 'isort' },
        c = { 'clang-format' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
    }
  end,
}
