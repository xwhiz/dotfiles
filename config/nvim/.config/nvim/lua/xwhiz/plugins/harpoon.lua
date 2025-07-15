return {
  'ThePrimeagen/harpoon',
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'
    require('harpoon').setup {}

    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = '[A]dd current file to harppon' })
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = '[A]dd current file to harppon' })

    vim.keymap.set('n', '<C-J>', function()
      ui.nav_file(1)
    end, { desc = 'Navigate to file 1' })
    vim.keymap.set('n', '<C-K>', function()
      ui.nav_file(2)
    end, { desc = 'Navigate to file 2' })
    vim.keymap.set('n', '<C-L>', function()
      ui.nav_file(3)
    end, { desc = 'Navigate to file 3' })
  end,
}
