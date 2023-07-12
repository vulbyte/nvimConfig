print('LOADING: ./nvim/lua/vulbute/packer.lua')



-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local function setupPacker()
	print('LOADING: PLACKER & PLUGINS')

	return require('packer').startup(function(use)
        --:PackerSync
		print('LOADING: packer')
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		print('LOADED: packer')

        --finder for inline files
        print("LOADING: ripgrep")
        use ('BurntSushi/ripgrep')
        print("LOADED: ripgrep")

        --fuzzy finder
		print('LOADING: telescope')
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.1',
			-- or                            , branch = '0.1.x',
			requires = { {'nvim-lua/plenary.nvim'} }
		}
		print('LOADED: telescope')

        --loads theme rosepine
        --IF YOU CHANGE WILL NEED TO EDIT: "after/plugin/colors.lua"
		print('LOADING: THEME')
		--use({ 'rose-pine/neovim', as = 'rose-pine' })
		--vim.cmd('colorscheme rose-pine')
        use({ 'EdenEast/nightfox.nvim', as = 'nightfox' })
        vim.cmd('colorscheme nightfox')
		print('LOADED: THEME')

        --syntax highlighting
		print('LOADING: treesitter')
		use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
		print('LOADED: treesitter')

        --this allows you to see what treesitter sees, helping massively
        --with making stylistic mods to vim
		print("LOADING: playground")
		use('nvim-treesitter/playground')
		print("LOADED: playground")

        --adds harpoon, a tool that lets you save upto 4 scripts, 
        --then you can use h n t or s to bounce between them
		print("LOADING: harpoon")
		use('theprimeagen/harpoon')
		print("LOADED: harpoon")

        --adds undotree using assigned var @:
        --vim.keymap.set('n', "<leader>u", vim.cmd.UndotreeToggle)
		print("LOADING: undotree")
		use('mbbill/undotree')
		print("LOADED: undotree")

        --adds :Git commands to nvim
		print("LOADING: vim-fugitive")
		use('tpope/vim-fugitive')
		print("LOADED: vim-fugitive")

        --highlights background color of common rgb values for easier editing
        print("LOADING: colorizer")
        use("lilydjwg/colorizer")
        print("LOADED: colorizer")

        --autocloses HTML tags on ">"
        print("LOADING: vim-closetag")
        use("alvan/vim-closetag")
        print("LOADED: vim-closetag")

        --addes emmet functionality
        print("LOADING: emmet-vim")
        use("mattn/emmet-vim")
        print("LOADED: emmet-vim")

        --changes statusline to make more readable
        print("LOADING: feline.nvim")
            --use("itchyny/lightline.vim")
            use("freddiehaddad/feline.nvim")
            require('feline').setup()
            require('feline').winbar.setup()
            require('feline').statuscolumn.setup()
        print("LOADED: feline.nvim")

        --loads lsp server (code suggestions and errors and stuff
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

        --adds icons to nerdtree
        print("LOADING: vim-devicons")
            use('ryanoasis/vim-devicons')
        print("LOADED: vim-devicons")

        --adds multi cursor support to vim
        print("LOADING: vim-visual-multi")
        use('mg979/vim-visual-multi')
        print("LOADED: vim-visual-multi")

        --adds nerdtree support
        print("LOADING: nerdtree")
        use('preservim/nerdtree')
        print("LOADED: nerdtree")

        --adds better surrounding (x) support
        print("LOADING: vim-surrond")
        use('tpope/vim-surround')
        print("LOADED: vim-surround")

        --makes each bracket a different color making it easier to tell
        --which bracket is which
        --THEME MAY OVERRIDE!!!
        print("LOADING: vim-rainbow")
        use("frazrepo/vim-rainbow")
        print("LOADED: vim-rainbow")

        --creates a terminal where instead of needing to create a split you
        --can instead simply use an overlay term to save space
        --(great for test servers)
        print("LOADING: vim-floaterm")
        use('voldikss/vim-floaterm')
        print("LOADING: vim-floaterm")


       -- print('LOADING: vim-hexokinase')
       --     --Install and configure plugins using packer.nvim
       --     --Install and configure plugins using packer.nvim
       --     -- use {
       --     --     'RRethy/vim-hexokinase',
       --     --     run = function()
       --     --         print('==================LOADED HEXOKINASE')
       --     --         --pcall(vim.cmd, 'make hexokinase')
       --     --     end,
       --     --     requires = {}
       --     -- }
       --     use('vim-hexokinase')
       --     pcall(vim.cmd, 'make hexokinase')
       -- print('LOADED: vim-hexokinase')

        --print("LOADING: nvim-colorizer")
        --    use('NvChad/nvim-colorizer.lua')
        --print("LOADED: nvim-colorizer")
	end)
end

setupPacker()
print('LOADED PLACKER & PLUGINS')



print('LOADED: ./nvim/lua/vulbute/packer.lua')
-- End of configuration file

