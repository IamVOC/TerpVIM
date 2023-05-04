return{
	{
		'catppuccin/nvim',
		name = 'catppuccin',
		build = 'CatppuccinCompile',
		opts = {
			term_colors = true,
			flavour = 'mocha',
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
				header = {
			"",
			"",
			"  _____  U _____ u   ____      ____   __     __              __  __   ",
			" |_ ' _| \\| ___'|/U |  _'\\ u U|  _'\\ u\\ \\   /'/u   ___     U|' \\/ '|u ",
			"   | |    |  _|'   \\| |_) |/ \\| |_) |/ \\ \\ / //   |_'_|    \\| |\\/| |/ ",
			"  /| |\\   | |___    |  _ <    |  __/   /\\ V /_,-.  | |      | |  | |  ",
			" u |_|U   |_____|   |_| \\_\\   |_|     U  \\_/-(_/ U/| |\\u    |_|  |_|  ",
			" _// \\\\_  <<   >>   //   \\\\_  ||>>_     //    .-,_|___|_,-.  ,-,,-.   ",
			"(__) (__)(__) (__) (__)  (__)(__)__)   (__)    \\_)-` `-(_/  (./  \\.)  ",
			"",
			"",
				},
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
