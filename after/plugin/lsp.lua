print('LOADING: .nvim/after/plugin/lsp.lua')
        print("LOADING: vim-floaterm")
	local lsp = require('lsp-zero').preset({})

	lsp.on_attach(function(client, bufnr)
		lsp.default_keymaps({buffer = bufnr})
	end)

	-- (Optional) Configure lua language server for neovim
	require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

    -- You will likely want to reduce updatetime which affects CursorHold
    -- note: this setting is global and should be set only once
    vim.o.updatetime = 250
    vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

	lsp.setup()
print('LOADED: .nvim/after/plugin/lsp.lua')
