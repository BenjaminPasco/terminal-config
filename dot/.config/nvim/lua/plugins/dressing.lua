return {
  "stevearc/dressing.nvim",
  lazy = true,
  init = function()
    -- Load dressing.nvim when input/select functions are called
    vim.ui.select = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.select(...)
    end
    vim.ui.input = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.input(...)
    end
  end,
}
