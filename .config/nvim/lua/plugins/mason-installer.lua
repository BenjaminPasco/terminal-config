return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  config = function()
    require('mason-tool-installer').setup {
      ensure_installed = {
        -- lsp
        'lua_ls',
        'ts_ls',
        'tailwindcss-language-server',
        'gopls',
        'pyright',
        'rust_analyzer',
        'clangd',
        'zls',
        'css-lsp',
        -- formatters
        'stylua',
        'biome',
        'prettierd',
        'goimports',
        'black',
        'isort',
        'clang-format',
      },
      run_on_start = true,
    }
  end,
}
