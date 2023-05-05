local keymap = vim.keymap
local builtin = require('telescope.builtin')

keymap.set('n', '<C-b>', "<Cmd>Neotree toggle<cr>")
keymap.set('n', '<C-x>', builtin.find_files, {})
keymap.set('n', '<C-n>', builtin.buffers, {})
keymap.set('v', '<C-c>', '"+y')
keymap.set('n', '<C-t>', '<Cmd>ToggleTerm direction=float<cr>')
