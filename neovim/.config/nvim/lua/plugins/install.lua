-- Adding Packer
vim.cmd [[packadd packer.nvim]]

-- NeoTree, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- Callback. Plagin list.
return require('packer').startup(function()
	-- Self-update
	use 'wbthomason/packer.nvim'
    -- Theme
    use {
        "bluz71/vim-moonfly-colors", 
        as = "moonfly",
   		config = function()
			require('plugins/moonfly')
		end
    }
	-- Autocomplete icons
	use 'onsails/lspkind-nvim'
	-- LSP server
	use {
        'neovim/nvim-lspconfig',
   		config = function()
			require('plugins/lspconfig')
		end
    }
	-- LSP trouble
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}
    -- Autocomplete
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}
    use {
    	"windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'nvim-treesitter/nvim-treesitter'
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        {
            -- only needed if you want to use the commands with "_with_window_picker" suffix
            's1n7ax/nvim-window-picker',
            tag = "v1.*",
            config = function()
                require'window-picker'.setup({
                    autoselect_one = true,
                    include_current = false,
                    filter_rules = {
                      -- filter using buffer options
                      bo = {
                        -- if the file type is one of following, the window will be ignored
                        filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                        -- if the buffer type is one of following, the window will be ignored
                        buftype = { 'terminal', "quickfix" },
                      },
                    },
                    other_win_hl_color = '#e35e4f',
                })
            end,
          }
        },
        config = function ()
			require('plugins/neo-tree')
        end
        }
	use {
		'nvim-lualine/lualine.nvim',
		config = function()
			require('plugins/lualine')
		end
	}
    use 'mfussenegger/nvim-jdtls'
end)
