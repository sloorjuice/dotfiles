-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use('tpope/vim-fugitive')
	use("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})
	-- In your plugins.lua or equivalent file
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	-- If you don't already have it, you'll also need nvim-lspconfig
	use { "neovim/nvim-lspconfig" }
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'maxmx03/fluoromachine.nvim',
		lazy = false,
		priority = 1000,
		config = function ()
			local fm = require 'fluoromachine'

			fm.setup {
				glow = true,
				theme = 'fluoromachine',
				transparent = true,
			}

			vim.cmd.colorscheme 'fluoromachine'
		end
	}
end)
