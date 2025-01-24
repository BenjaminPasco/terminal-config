return {
    "rose-pine/neovim",
    name="rose-pine",
    config = function()
        require("rose-pine").setup({
            variant= "auto"
            -- other config to add here
        })
        vim.cmd("colorscheme rose-pine")
    end
}
