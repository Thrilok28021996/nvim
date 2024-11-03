return {
  'hkupty/iron.nvim',
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
        send_motion = '<space>sm',
        visual_send = '<space>vs',
        send_file = '<space>sf',
        send_line = '<space>sl',
        send_mark = '<space>sm',
        mark_motion = '<space>mm',
        mark_visual = '<space>mv',
        remove_mark = '<space>rm',
        cr = '<space>s<cr>',
        interrupt = '<space>s<space>',
        exit = '<space>ie',
        clear = '<space>cl',
      },
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true,
    }
  end,
}
