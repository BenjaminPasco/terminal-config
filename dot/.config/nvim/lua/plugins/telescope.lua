return{ -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  opts = function()
    local actions = require("telescope.actions")
    local trouble = require("trouble.sources.telescope")
    return {
      defaults = {
        prompt_prefix = "🔍 ",
        selection_caret = "➡️ ",
        mappings = {
          i = {
            ["<c-t>"] = trouble.open,
            ["<a-t>"] = trouble.open,
          },
          n = {
            ["q"] = actions.close,
          },
        },
      },
    }
  end,
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        }
      },
    }
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
    local builtin = require 'telescope.builtin'
    local utils = require 'telescope.utils'

    -- All keymaps defined for telescope
    vim.keymap.set('n', '<leader>ff', function () 
      builtin.find_files {
        cwd = utils.get_os_command_output({ 'git', 'rev-parse', '--show-toplevel' })[1]
      }
    end, { desc = 'Telescope files' })
    vim.keymap.set('n', '<leader>fg', function ()
      builtin.live_grep {
        cwd = utils.get_os_command_output({ 'git', 'rev-parse', '--show-toplevel' })[1],
        enable_preview = true
      }
    end, { desc = 'Telescope Live grep' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope Diagnostics' })
    vim.keymap.set('n', '<leader>fb', function() 
      builtin.buffers {
        sort_mru = true,
        sort_lastused = true
      }
    end, { desc = 'Telescope Buffers' })
    vim.keymap.set('n', '<leader>/', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = 'Telescope in current Buffer' })
    vim.keymap.set('n', '<leader>f/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = 'Telescope Live Grep in Open Files' })
    vim.keymap.set('n', '<leader>f:', "<cmd>Telescope command_history<cr>", { desc = 'Telescope Command History' })
    vim.keymap.set('n', '<leader>fy', "<cmd>Telescope registers<cr>", {desc = 'Telescope Registered Text' })
  end,
}
