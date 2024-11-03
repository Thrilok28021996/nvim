-- Easily comment visual regions/lines
return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function()
    require('Comment').setup {
      mappings = {
        basic = false, -- Disable basic mappings
        extra = false, -- Disable extra mappings
      },
    }
    local options = { noremap = true, silent = true }
    vim.keymap.set('n', '<C-/>', require('Comment.api').toggle.linewise.current, options)

    vim.keymap.set('v', '<C-/>', require('Comment.api').toggle.linewise(vim.fn.visualmode()), options)

    -- Optional: Blockwise comment toggling
    vim.keymap.set('n', '<C-b>', require('Comment.api').toggle.blockwise.current(), options)

    vim.keymap.set('v', '<C-b>', require('Comment.api').toggle.blockwise(vim.fn.visualmode()), options)
  end,
}
