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
		config = function()
			require("custom/telescope")
		end,
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

	--	use {
	--		'VonHeikemen/lsp-zero.nvim',
	--		branch = 'v1.x',
	--		requires = {
	--			{'neovim/nvim-lspconfig'},             -- Required
	--			{'williamboman/mason.nvim'},           -- Optional
	--			{'williamboman/mason-lspconfig.nvim'}, -- Optional
	--
	--			{'hrsh7th/nvim-cmp'},         -- Required
	--			{'hrsh7th/cmp-nvim-lsp'},     -- Required
	--			{'hrsh7th/cmp-buffer'},       -- Optional
	--			{'hrsh7th/cmp-path'},         -- Optional
	--			{'saadparwaiz1/cmp_luasnip'}, -- Optional
	--			{'hrsh7th/cmp-nvim-lua'},     -- Optional
	--
	--			{'L3MON4D3/LuaSnip'},             -- Required
	--			{'rafamadriz/friendly-snippets'}, -- Optional
	--  		}
	--	}

	use {
		"goolord/alpha-nvim",
		requires = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("custom/alpha")
		end
	}

	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup()
		end
	}

	use {
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		requires = {
			"nvim-tree/nvim-web-devicons"
		},
	}

	use {
		"neovim/nvim-lspconfig"
	}

	use {
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"jdtls",
					"tailwindcss",
					"tsserver"
				}
			})

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup {}
				end,
				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup {
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" }
								}
							}
						}
					}
				end
			})
		end
	}

	use {
		"jose-elias-alvarez/null-ls.nvim"
	}

	use {
		"jay-babu/mason-null-ls.nvim",
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					"google-java-format",
					"shfmt",
					"rustfmt",
					"rustywind",
					"stylua",
					"prettier"
				},
				automatic_installation = false,
				automatic_setup = true
			})

			require("mason-null-ls").setup_handlers()
		end
	}
end)
