local keymap = vim.keymap
local builtin = require('telescope.builtin') 

keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
keymap.set('n', '<C-x>', builtin.find_files, {})
keymap.set('n', '<C-n>', builtin.buffers, {})
