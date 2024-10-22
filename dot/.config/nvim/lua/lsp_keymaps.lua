return {
  setup = function(bufnr, capabilities, client)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    -- Definition
    if capabilities.definition then
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto Definition' })
    end

    -- References
    if capabilities.references then
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Goto References', nowait = true })
    end

    -- Implementation
    if capabilities.implementation then
      vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { desc = 'Goto Implementation' })
    end

    -- Type Definition
    if capabilities.typeDefinition then
      vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { desc = 'Goto Type Definition' })
    end

    -- Declaration
    if capabilities.declaration then
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
    end

    -- Hover
    if capabilities.hover then
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover' })
    end

    -- Function Signature
    if capabilities.signatureHelp then
      vim.keymap.set('n', 'gK', vim.lsp.buf.signature_help, { desc = 'Function Signature' })
    end

    -- Code Action
    if capabilities.codeAction then
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
    end

    -- Rename
    if capabilities.rename then
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
    end

    -- -- Highlight words
    -- if client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
    --   local highlight_augroup = vim.api.nvim_create_augroup('my-lsp-highlight', { clear = false })
    --
    --   vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
    --     buffer = bufnr,
    --     group = highlight_augroup,
    --     callback = vim.lsp.buf.document_highlight,
    --   })
    --   vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
    --     buffer = bufnr,
    --     group = highlight_augroup,
    --     callback = vim.lsp.buf.clear_references,
    --   })
    --   vim.api.nvim_create_autocmd('LspDetach', {
    --     group = vim.api.nvim_create_augroup('my-lsp-detach', { clear = true }),
    --     callback = function(event)
    --       vim.lsp.buf.clear_references()
    --       vim.api.nvim_clear_autocmds { group = 'my-lsp-highlight', buffer = event.buf }
    --     end,
    --   })
    -- end
  end,
}
