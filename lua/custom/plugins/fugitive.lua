return {
  'tpope/vim-fugitive',
  config = function()
    local git = {
      status = function()
        vim.cmd 'G'
      end,

      add = function()
        vim.cmd 'Gwrite'
      end,

      write_all = function()
        vim.cmd 'G add --all'
        vim.cmd 'G commit'
        vim.cmd 'startinsert'
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

      diff = function()
        vim.cmd 'Gdiff'
      end,
    }

    vim.keymap.set('n', '<leader>gs', git.status, { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>ga', git.add, { desc = '[G]it [A]dd' })
    vim.keymap.set('n', '<leader>gW', git.write_all, { desc = '[G]it [W]rite & commit all' })
    vim.keymap.set('n', '<leader>gw', git.write_commit, { desc = '[G]it [w]rite & commit' })
    vim.keymap.set('n', '<leader>gp', git.push, { desc = '[G]it [P]ush' })
    vim.keymap.set('n', '<leader>gl', git.log, { desc = '[G]it [L]og' })
    vim.keymap.set('n', '<leader>gd', git.diff, { desc = '[G]it [D]iff' })
  end,
}
