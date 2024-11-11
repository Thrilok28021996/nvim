return {
  'hkupty/iron.nvim',
  lazy = true, -- Enable lazy loading
  keys = {
    { '<space>im', mode = 'n' },
    { '<space>iv', mode = 'v' },
    { '<space>if', mode = 'n' },
    { '<space>il', mode = 'n' },
    { '<space>im', mode = 'n' },
    { '<space>mm', mode = 'n' },
    { '<space>mv', mode = 'v' },
    { '<space>rm', mode = 'n' },
    { '<space>s<cr>', mode = 'n' },
    { '<space>s<space>', mode = 'n' },
    { '<space>ie', mode = 'n' },
    { '<space>ic', mode = 'n' },
  },
  config = function()
    require('iron.core').setup {
      config = {
        repl_definition = {
          python = {
            command = { 'ipython', '--no-autoindent' },
          },
        },
        repl_open_cmd = 'vertical botright 80 split',
      },
      keymaps = {
        send_motion = '<space>im',
        visual_send = '<space>iv',
        send_file = '<space>if',
        send_line = '<space>il',
        send_mark = '<space>im',
        mark_motion = '<space>mm',
        mark_visual = '<space>mv',
        remove_mark = '<space>rm',
        cr = '<space>s<cr>',
        interrupt = '<space>s<space>',
        exit = '<space>ie',
        clear = '<space>ic',
      },
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true,
    }
  end,
}
