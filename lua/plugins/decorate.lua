return{
	{
		'catppuccin/nvim',
		name = 'catppuccin',
		build = 'CatppuccinCompile',
		opts = {
			term_colors = true,
			flavour = 'macchiato',
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = 'TSUpdate',
	},
	{
		'glepnir/dashboard-nvim',
		event = 'BufWinEnter',
		opts = {
			theme = 'doom',
			config = {
				header = require('config.header'),
				center =
				{
					{
						action = "DashboardNewFile",
						desc = "New File",
						icon = "  ",
					},
					{
						action = "q",
						desc = "Quit",
						icon = "  ",
					},
				},
			},
		},
		dependencies = {'nvim-tree/nvim-web-devicons'},
	},
}
