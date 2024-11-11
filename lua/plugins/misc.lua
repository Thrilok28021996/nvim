-- Standalone plugins with less than 10 lines of config go here
return {
  -- {
  --   -- tmux & split window navigation
  --   'christoomey/vim-tmux-navigator',
  -- },
  {
    -- autoclose tags
    'windwp/nvim-ts-autotag',
  },
  {
    -- detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  -- {
  --   -- Powerful Git integration for Vim
  --   'tpope/vim-fugitive',
  -- },
  -- {
  --   -- GitHub integration for vim-fugitive
  --   'tpope/vim-rhubarb',
  -- },
  {
    -- Hints keybinds
    'folke/which-key.nvim',
  },
  {
    -- Autoclose parentheses, brackets, quotes, etc.
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
  },
  {
    -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = true },
  },
  {
    -- high-performance color highlighter
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', ' nvim-tree/nvim-web-devicons' },
    config = function()
      require('render-markdown').setup {
        code = {
          enabled = true,
          style = 'full', -- or 'normal', 'none'
          position = 'left',
        },
        headings = {
          enabled = true,
          icon = '📖',
        },
      }
    end,
  },
}
