local printLoadingAndLoaded = vim.g.printLoadingAndLoaded;

if (printLoadingAndLoaded == true) then
    print('LOADING:./nvim/lua/vulbute/packer.lua')
end


if (printLoadingAndLoaded == true) then
    print('LOADING:./nvim/lua/vulbute/packer.lua')
end


-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local function setupPacker()
    if (printLoadingAndLoaded == true) then
        print('LOADING: PLACKER & PLUGINS')
    end

    return require('packer').startup(function(use)
        --:PackerSync
        if (printLoadingAndLoaded == true) then print('LOADING: packer') end
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        if (printLoadingAndLoaded == true) then print('LOADED: packer') end

        -- NOTE: ALPHABETICALLY SORTED UNLESS SPECIFED
        --
        -- NOTE: if the plugin starts with the name "vim"
        --       or "nvim" the plugin will be sorted by
        --       next name.
        --       ie, "vim-closetags" will be in in the "c"
        --       section.

        -- A

        if (printLoadingAndLoaded == true) then print('LOADING: aerial') end
        use({
            "stevearc/aerial.nvim",
            config = function()
                require("aerial").setup()
            end,
        })
        if (printLoadingAndLoaded == true) then print('LOADED: aerial') end

        -- print("LOADING: 'prabirshrestha/asyncomplete.vim'")
        -- use('prabirshrestha/asyncomplete.vim')
        -- use('yami-beta/asyncomplete-omni.vim')
        -- print("LOADED: 'prabirshrestha/asyncomplete.vim'")

        -- B

        -- C

        --autocloses HTML tags on ">"
        if (printLoadingAndLoaded == true) then print("LOADING: vim-closetag") end
        use("alvan/vim-closetag")
        if (printLoadingAndLoaded == true) then print("LOADED: vim-closetag") end

        --highlights background color of common rgb values for easier editing
        if (printLoadingAndLoaded == true) then print("LOADING: colorizer") end
        use("lilydjwg/colorizer")
        if (printLoadingAndLoaded == true) then print("LOADED: colorizer") end

        -- D

        -- for godot
        if (printLoadingAndLoaded == true) then print("LOADING: nvim-dap") end
        use("mfussenegger/nvim-dap")
        if (printLoadingAndLoaded == true) then print("LOADED: nvim-dap") end

        --adds icons to nerdtree
        --if (printLoadingAndLoaded == true) then print("LOADING: vim-devicons") end
        --use('ryanoasis/vim-devicons')
        --if (printLoadingAndLoaded == true) then print("LOADED: vim-devicons") end

        -- E

        --addes emmet functionality
        if (printLoadingAndLoaded == true) then print("LOADING: emmet-vim") end
        use("mattn/emmet-vim")
        if (printLoadingAndLoaded == true) then print("LOADED: emmet-vim") end

        -- F

        --use("famiu/feline.nvim")
        --require('feline').setup()
        --require('feline').winbar.setup()
        --require('feline').statuscolumn.setup()
        --require('feline').add_theme('mode_theme', mode_theme)

        --creates a terminal where instead of needing to create a split you
        --can instead simply use an overlay term to save space
        --(great for test servers)
        if (printLoadingAndLoaded == true) then print("LOADING: vim-floaterm") end
        use('voldikss/vim-floaterm')
        if (printLoadingAndLoaded == true) then print("loading: vim-floaterm") end

        --format on save to keep code clean
        if (printLoadingAndLoaded == true) then print("LOADING: elentok/format-on-save.nvim") end
        use("elentok/format-on-save.nvim")
        if (printLoadingAndLoaded == true) then print("LOADED: elentok/format-on-save.nvim") end

        --adds :Git commands to nvim
        if (printLoadingAndLoaded == true) then print("LOADING: vim-fugitive") end
        use('tpope/vim-fugitive')
        if (printLoadingAndLoaded == true) then print("LOADED: vim-fugitive") end

        -- G

        --print("LOADING: godot-nvim")
        --use('lommix/godot.nvim')
        --print("LOADED: godot-nvim")

        -- H

        --adds harpoon, a tool that lets you save upto 4 scripts,
        --then you can use h n t or s to bounce between them
        if (printLoadingAndLoaded == true) then print("LOADING: harpoon") end
        use('theprimeagen/harpoon')
        if (printLoadingAndLoaded == true) then print("LOADED: harpoon") end

        -- I

        -- J

        -- K

        -- L

        --changes statusline to make more readable
        if (printLoadingAndLoaded == true) then print("LOADING: lightline.nvim") end
        use("itchyny/lightline.vim")
        if (printLoadingAndLoaded == true) then print("LOADED: lightline.nvim") end

        -- loads lsp server (code suggestions and errors and stuff
        if (printLoadingAndLoaded == true) then print("LOADING: lsp-zer0") end
        use {
            'vonheikemen/lsp-zero.nvim',
            branch = 'v2.x',
            requires = {
                -- lsp support
                { 'neovim/nvim-lspconfig' }, -- required
                {                            -- optional
                    'williamboman/mason.nvim',
                    run = function()
                        pcall(vim.cmd, 'masonupdate')
                    end,
                },
                { 'williamboman/mason-lspconfig.nvim' }, -- optional

                -- autocompletion
                { 'hrsh7th/nvim-cmp' },     -- required
                { 'hrsh7th/cmp-nvim-lsp' }, -- required
                { 'l3mon4d3/luasnip' },     -- required
            },
        }

        -- M

        -- N

        --adds nerdtree support
        --if (printLoadingAndLoaded == true) then ("LOADING: nerdtree") end
        --use('preservim/nerdtree')
        --if (printLoadingAndLoaded == true) then print("LOADED: nerdtree") end

        -- O

        if (printLoadingAndLoaded == true) then print("LOADING: omnisharp-vim") end
        use('OmniSharp/omnisharp-vim')
        if (printLoadingAndLoaded == true) then print("LOADED: omnisharp-vim") end


        if (printLoadingAndLoaded == true) then print("LOADING: oil.nvim") end
        use('stevearc/oil.nvim')
        if (printLoadingAndLoaded == true) then print("LOADED: oil.nvim") end

        -- P

        --this allows you to see what treesitter sees, helping massively
        --with making stylistic mods to vim
        if (printLoadingAndLoaded == true) then print("LOADING: playground") end
        --use('nvim-treesitter/playground')
        if (printLoadingAndLoaded == true) then print("LOADED: playground") end

        -- Q

        -- R

        --makes each bracket a different color making it easier to tell
        --which bracket is which
        --THEME MAY OVERRIDE!!!
        if (printLoadingAndLoaded == true) then print("LOADING: vim-rainbow") end
        use("frazrepo/vim-rainbow")
        if (printLoadingAndLoaded == true) then print("LOADED: vim-rainbow") end

        --finder for inline files
        if (printLoadingAndLoaded == true) then print("LOADING: ripgrep") end
        use('BurntSushi/ripgrep')
        if (printLoadingAndLoaded == true) then print("LOADED: ripgrep") end

        --for unity development
        --print("LOADING: roslyn")
        --use('dotnet/roslyn')
        --print("LOADED: roslyn")

        -- S
        if (printLoadingAndLoaded == true) then print("LOADING: kamykn/spelunker.vim") end
        use('kamykn/spelunker.vim')
        if (printLoadingAndLoaded == true) then print("LOADED: kamykn/spelunker.vim") end

        -- dds better surrounding (x) support
        if (printLoadingAndLoaded == true) then print("LOADING: vim-surrond") end
        use('tpope/vim-surround')
        if (printLoadingAndLoaded == true) then print("LOADED: vim-surround") end

        -- T

        --loads theme rosepine
        --IF YOU CHANGE WILL NEED TO EDIT: "after/plugin/colors.lua"
        if (printLoadingAndLoaded == true) then print('LOADING: THEME') end
        --use({ 'rose-pine/neovim', as = 'rose-pine' })
        --vim.cmd('colorscheme rose-pine')
        use({ 'EdenEast/nightfox.nvim', as = 'nightfox' })
        vim.cmd('colorscheme carbonfox')
        if (printLoadingAndLoaded == true) then print('LOADED: THEME') end


        if (printLoadingAndLoaded == true) then print('LOADING: todo-comments') end
        use {
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            config = function() require("todo-comments").setup {} end
        }
        -- the aboove plugin adds this functionality
        -- PERF: yepp
        -- HACK: yeeperz
        -- TODO: thing
        -- NOTE: other thing
        -- FIX: this one bothers me
        -- WARNING: i ate your chips
        -- PERF: this is a bottleneck, plz fix
        --
        if (printLoadingAndLoaded == true) then print('LOADED: todo-comments') end

        -- telescope
        if (printLoadingAndLoaded == true) then print('LOADING: telescope') end
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.4',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        if (printLoadingAndLoaded == true) then print('LOADED: telescope') end

        --syntax highlighting
        if (printLoadingAndLoaded == true) then print('LOADING: treesitter') end
        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
        if (printLoadingAndLoaded == true) then print('LOADED: treesitter') end

        -- U

        --vim.keymap.set('n', "<leader>u", vim.cmd.UndotreeToggle)
        --adds undotree using assigned var @:
        if (printLoadingAndLoaded == true) then print("LOADING: undotree") end
        use('mbbill/undotree')
        if (printLoadingAndLoaded == true) then print("LOADED: undotree") end

        -- V
        if (printLoadingAndLoaded == true) then print("LOADING: vim-be-good") end
        use('ThePrimeagen/vim-be-good')
        if (printLoadingAndLoaded == true) then print("LOADED: vim-be-good") end

        --adds multi cursor support to vim
        if (printLoadingAndLoaded == true) then print("LOADING: vim-visual-multi") end
        use('mg979/vim-visual-multi')
        if (printLoadingAndLoaded == true) then print("LOADED: vim-visual-multi") end

        -- W

        -- X

        -- Y

        -- Z
    end) --
end      --


setupPacker()
if (printLoadingAndLoaded == true) then print('LOADED PLACKER & PLUGINS') end



if (printLoadingAndLoaded == true) then print('LOADED:-- ./nvim/lua/vulbute/packer.lua') end
-- End of configuration file
--
