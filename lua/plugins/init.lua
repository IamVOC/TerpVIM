require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'nvim-neo-tree/neo-tree.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.1',
  }
  use {
  	'glepnir/dashboard-nvim',
  	event = 'VimEnter',
  	config = function()
    require('dashboard').setup{
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

	}
  	end,
  	requires = {'nvim-tree/nvim-web-devicons'},
  }
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require('plugins.treesitter') 
      end,
  }
  use {
	  'williamboman/mason.nvim',
	  run = ':MasonUpdate'
  }
  use {
        "catppuccin/nvim",
        name = "catppuccin",
        enabled = false,
        build = "CatppuccinCompile",
		opts = {
            term_colors = true,
            compile = {
                enabled = true,
                path = vim.fn.stdpath("cache") .. "/catppuccin",
                suffix = "_compiled",
            },
            styles = {
                comments = { "italic" },
                functions = { "italic", "bold" },
                keywords = { "italic" },
                strings = {},
                variables = {},
            },
            integrations = {
                bufferline = true,
                gitsigns = true,
                indent_blankline = {
                    colored_indent_levels = true,
                },
                -- lightspeed = false,
                lsp_saga = true,
                lsp_trouble = true,
                neogit = true,
                notify = true,
                neotree = true,
                nvimtree = false,
            },
        },
		config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.g.catppuccin_flavour = "latte"

            if not vim.g.neovide then
                require("lualine").setup({
                    options = { theme = "catppuccin" },
                })
                vim.cmd("colorscheme catppuccin")
            end

            -- Compile Catppuccin on `PackerCompile`
            local autocmd = vim.api.nvim_create_autocmd
            autocmd("User", {
                pattern = "PackerCompileDone",
                callback = function()
                    vim.cmd("CatppuccinCompile")
                    vim.defer_fn(function()
                        vim.cmd("colorscheme catppuccin")
                    end, 0) -- Defered for live reloading
                end,
            })
        end,
    }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        run = function() pcall(vim.cmd, 'MasonUpdate') end
      },
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end
)

local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
  float_border = 'rounded',
  configure_diagnostics = true,
})

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.setup()
