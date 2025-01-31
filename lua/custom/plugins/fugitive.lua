return {
  'tpope/vim-fugitive',
  config = function()
    local git = {
      status = function()
        vim.cmd 'G'
      end,

      add = function()
        vim.cmd 'Git add .'
      end,

      write_commit = function()
        vim.cmd 'Gwrite'
        vim.cmd 'G commit'
        vim.cmd 'startinsert'
      end,

      push = function()
        vim.cmd 'G push'
      end,

      log = function()
        vim.cmd 'G log'
      end,
    }

    vim.keymap.set('n', '<leader>gs', git.status, { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>ga', git.add, { desc = '[G]it [A]dd' })
    vim.keymap.set('n', '<leader>gw', git.write_commit, { desc = '[G]it Write & [C]ommit' })
    vim.keymap.set('n', '<leader>gp', git.push, { desc = '[G]it [P]ush' })
    vim.keymap.set('n', '<leader>gl', git.log, { desc = '[G]it [L]og' })
  end,
}
