local opt = vim.opt
local wo = vim.wo

opt.number = true
opt.numberwidth = 4
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.completeopt = { "menuone", "noselect"}
opt.swapfile = false
opt.termguicolors = true

wo.fillchars = 'eob: '
vim.o.foldcolumn = '0'
