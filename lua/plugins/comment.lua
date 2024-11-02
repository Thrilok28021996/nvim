-- Easily comment visual regions/lines
return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function()
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<C-/>', require('Comment.api').toggle.linewise.current, opts)

    vim.keymap.set('v', '<C-/>', function()
      comment.toggle.linewise(vim.fn.visualmode())
    end, { desc = 'Toggle comment on selected lines' })

    -- Optional: Blockwise comment toggling
    vim.keymap.set('n', '<C-b>', function()
      comment.toggle.blockwise.current()
    end, { desc = 'Toggle block comment on current line' })

    vim.keymap.set('v', '<C-b>', function()
      comment.toggle.blockwise(vim.fn.visualmode())
    end, { desc = 'Toggle block comment on selected lines' })
  end,
}
