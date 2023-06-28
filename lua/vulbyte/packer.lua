print('LOADING: ./nvim/lua/vulbute/packer.lua')



-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local function setupPacker()
	print('LOADING: PLACKER & PLUGINS')

	return require('packer').startup(function(use)
		print('LOADING: packer')
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		print('LOADED: packer')

		print('LOADING: telescope')
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.1',
			-- or                            , branch = '0.1.x',
			requires = { {'nvim-lua/plenary.nvim'} }
		}
		print('LOADED: telescope')

		print('LOADING: THEME')
		use({ 'rose-pine/neovim', as = 'rose-pine' })
		vim.cmd('colorscheme rose-pine')
		print('LOADED: THEME')

		print('LOADING: treesitter')
		use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
		print('LOADED: treesitter')

		print("LOADING: playground")
		use('nvim-treesitter/playground')
		print("LOADED: playground")

		print("LOADING: harpoon")
		use('theprimeagen/harpoon')
		print("LOADED: harpoon")

		print("LOADING: undotree")
		use('mbbill/undotree')
		print("LOADED: undotree")

		print("LOADING: vim-fugitive")
		use('tpope/vim-fugitive')
		print("LOADED: vim-fugitive")

		print("LOADING: lsp-zer0")
		use {
			'vonheikemen/lsp-zero.nvim',
			branch = 'v2.x',
			requires = {
				-- lsp support
				{'neovim/nvim-lspconfig'},             -- required
				{                                      -- optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'masonupdate')
				end,
				},
				{'williamboman/mason-lspconfig.nvim'}, -- optional

				-- autocompletion
				{'hrsh7th/nvim-cmp'},     -- required
				{'hrsh7th/cmp-nvim-lsp'}, -- required
				{'l3mon4d3/luasnip'},     -- required
			}
		}
		print("LOADED: lsp-zer0")
	end)
end

setupPacker()
print('LOADED PLACKER & PLUGINS')



print('LOADED: ./nvim/lua/vulbute/packer.lua')
