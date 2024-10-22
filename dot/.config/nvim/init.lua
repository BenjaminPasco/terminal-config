require 'settings.options'
require 'settings.keymaps'
require 'settings.autocommands'

---- Setup package manager (lazy)
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  { import = 'plugins.rose-pine' }, -- theme
  { import = 'plugins.vim-tmux-navigator' }, -- move between neovim and tmux
  { import = 'plugins.tabs' }, -- auto config tabulation for neovim
  { import = 'plugins.telescope' }, -- telescope for various search
  { import = 'plugins.dressing' }, -- make telescope ui a bit nicer
  { import = 'plugins.gitsigns' }, -- git indication in files added, removed, updated
  { import = 'plugins.which-key' }, -- which indicator
  { import = 'plugins.trouble' }, -- plugin for diagnostics, quickfix
  { import = 'plugins.mason' }, -- lsp manager, install lsp, linter, formatter
  { import = 'plugins.mason-installer' }, -- auto install servers, formatters, linters
  { import = 'plugins.lspconfig' }, -- handle neovim calling features from language server protocols
  { import = 'plugins.mason-lspconfig' }, -- handle mason lsp / lspconfig link
  { import = 'plugins.nvim-cmp' }, -- autocompletion
  { import = 'plugins.conform' }, -- autoformatting
  { import = 'plugins.tree-sitter' }, -- treesitter, parsing, higlighting
  { import = 'plugins.mini-pairs' }, -- autopairing bracket, parenthesis
  { import = 'plugins.autotag' }, -- better html/jsx tag handling
  { import = 'plugins.mini-ai' }, -- better simple text object handling
  { import = 'plugins.treesitter-text-objects' }, -- better text object experimental
  { import = 'plugins.flash' }, -- fast search jump
  { import = 'plugins.status-line' }, -- status line using lualine
  { import = 'plugins.noice' }, -- better command line window
  { import = 'plugins.highlight-cursor' }, -- auto highlight words similar to cursor
  { import = 'plugins.harpoon' }, -- harpoon from ThePrimagen for buffer navigation
}
