return require("packer").startup(function(use)

	use "wbthomason/packer.nvim"

	use {
		"williamboman/mason.nvim",
		config = function()
			require("custom/mason")
		end
	}

	use {
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			require("custom/catppuccin")
		end
	}

	use {
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",

		}
	}

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim"
		}
	}

	use {
		"glepnir/galaxyline.nvim",
		config = function()
			require("custom/galaxyline")
		end,
		requires = {
			"nvim-tree/nvim-web-devicons",
			opt = true
		}
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
  		}
	}

end)
