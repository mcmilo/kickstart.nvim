-- Getting you where you want with the fewest keystrokes.
-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>a',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Harpoon the current buffer',
      silent = true,
    },
    {
      '<C-e>',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'Harpoon quick menu',
      silent = true,
    },
    {
      '<leader>h',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = 'Jump to file in position 1',
      silent = true,
    },
    {
      '<leader>j',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = 'Jump to file in position 2',
      silent = true,
    },
    {
      '<leader>k',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = 'Jump to file in position 3',
      silent = true,
    },
    {
      '<leader>l',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = 'Jump to file in position 4',
      silent = true,
    },
  },
  opts = {},
}
