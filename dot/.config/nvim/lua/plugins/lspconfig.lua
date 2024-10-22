return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  opts = function()
    local ret = {
      diagnostics = {
        underline = true,
        virtual_text = {
          spacing = 4,
          source = "if_many",
        },
        severity_sort = true,
      },
      inlay_hints = {
        enabled = true,
      },
      codelens = {
        enabled = false,
      },
      document_highlight = {
        enabled = true,
      },
    }
    return ret
  end,
  config = function()

    local lspconfig = require("lspconfig")
    local lsp_servers = require("lsp_servers")
    local setup = require("lsp_keymaps").setup
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    for server_name, config in pairs(lsp_servers) do
      lspconfig[server_name].setup(vim.tbl_deep_extend("force", {
        capabilities = capabilities,
        on_attach = function (client, bufnr)
          setup(bufnr, client.server_capabilities, client)
        end
      }, config ))
    end


  end,
}

