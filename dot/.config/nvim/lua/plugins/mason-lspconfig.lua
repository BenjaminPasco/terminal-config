return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "william/mason.nvim", "neovim/nvim-lspconfig"},
  config = function()
    require("mason-lspconfig").setup({
      automatic_installation = true
    })
  end
}
