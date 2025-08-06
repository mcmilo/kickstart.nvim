-- Fugitive is the premier Vim plugin for Git.
-- https://github.com/tpope/vim-fugitive

return {
  'tpope/vim-fugitive',
  version = '*',
  lazy = false,
  keys = {
    { '<leader>gt', vim.cmd.Git, desc = 'Git fugitive', silent = true },
  },
  config = function()
    local Fugitive = vim.api.nvim_create_augroup('Fugitive', {})
    vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
      group = Fugitive,
      callback = function()
        if vim.bo.ft ~= 'fugitive' then
          return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }

        vim.keymap.set('n', '<leader>p', function()
          vim.cmd.Git 'push'
        end, opts)

        -- always rebase
        vim.keymap.set('n', '<leader>P', function()
          vim.cmd.Git 'pull --rebase'
        end, opts)

        -- NOTE: It allows me to easily set the branch i am pushing and any tracking
        -- needed if i did not set the branch up correctly
        vim.keymap.set('n', '<leader>t', ':Git push -u origin ', opts)
      end,
    })
  end,
  opts = {},
}
