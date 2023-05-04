local vopt = vim.opt
local vwo  = vim.wo
local vo   = vim.o
local vg   = vim.g
local vcmd = vim.cmd

vopt.number         = true
vopt.numberwidth    = 4
vopt.relativenumber = true
vopt.tabstop        = 4
vopt.softtabstop    = 4
vopt.shiftwidth     = 4
vopt.completeopt    = { "menuone", "noselect"}
vopt.swapfile       = false
vopt.termguicolors  = true

vwo.fillchars = 'eob: '

vo.foldcolumn = '0'
vo.laststatus = 3

vg.loaded_netrw       = 1
vg.loaded_netrwPlugin = 1

vcmd.colorscheme 'catppuccin'
