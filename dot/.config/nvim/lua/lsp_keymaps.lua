return {
  setup = function()
    -- Definition
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto Definition' })

    -- References
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Goto References', nowait = true })

    -- Implementation
    vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { desc = 'Goto Implementation' })

    -- Type Definition
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { desc = 'Goto Type Definition' })

    -- Declaration
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })

    -- Hover
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover' })

    -- Function Signature
    vim.keymap.set('n', 'gK', vim.lsp.buf.signature_help, { desc = 'Function Signature' })

    -- Code Action
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })

    -- Rename
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
  end,
}
