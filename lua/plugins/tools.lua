return{
  {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        cmd = "Neotree",
		dependencies = {
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
			'nvim-tree/nvim-web-devicons',
	},
  },
  {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = {
			'nvim-lua/plenary.nvim'
	}
  },
  {
        'folke/which-key.nvim',
        lazy = true,
  },
  {
		'akinsho/toggleterm.nvim',
		version = "*",
		config = true
  }
}
