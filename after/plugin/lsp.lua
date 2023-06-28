print('LOADING: .nvim/after/plugin/lsp.lua')
	local lsp = require('lsp-zero').preset({})

	lsp.on_attach(function(client, bufnr)
		lsp.default_keymaps({buffer = bufnr})
	end)

	-- (Optional) Configure lua language server for neovim
	require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

	lsp.setup()
print('LOADED: .nvim/after/plugin/lsp.lua')
