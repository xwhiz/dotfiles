vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ My Keymaps ]]
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Run :Ex (Open netrw)' })
vim.keymap.set('n', '<C-_>', function()
  require('Comment.api').toggle.linewise.current()
  vim.cmd 'normal! j'
end, { noremap = true, silent = true, desc = 'Toggle comment of current line' })

vim.keymap.set('n', '<leader>/', function()
  vim.api.nvim_feedkeys('gcc', 'x', true)
end, { desc = 'Toggle Line Comment' })

vim.keymap.set('v', '<leader>/', function()
  vim.api.nvim_feedkeys('gb', 'v', true)
end, { desc = 'Toggle Line Comment' })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Open up [U]ndotree' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Go down and center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Go up and center' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Go to next and center' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Go to prev and center' })

vim.keymap.set('v', '<S-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selected code down' })
vim.keymap.set('v', '<S-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selected code up' })

vim.keymap.set('x', '<leader>p', '"_dP', { desc = "Paste content but don't lose the copied thing" })

vim.keymap.set('n', '<leader>d', '"_d', { desc = 'Delete without yanking' })
vim.keymap.set('v', '<leader>d', '"_d', { desc = 'Delete without yanking' })

vim.keymap.set('n', '<S-q>', '<nop>', { desc = 'Do nothing' })
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'Open new tmux session and then close' })

vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %', { desc = 'Make current file executable' })

-- Augment remap
vim.keymap.set('i', '<C-y>', '<cmd>call augment#Accept()<CR>', { desc = 'Accept augment' })

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--- - Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
-- vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
-- vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
-- vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })
