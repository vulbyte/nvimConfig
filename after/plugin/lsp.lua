local printLoadingAndLoaded = vim.g.printLoadingAndLoaded;

if (printLoadingAndLoaded == true) then print('LOADING: .nvim/after/plugin/lsp.lua') end
--if (printLoadingAndLoaded == true) then print("LOADING: vim-floaterm") end
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 3
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

--require('lspconfig').zls.setup {
--    settings = {
--        zls = {
--            filetypes = {
--                diagnostics = {
--                    --this clears those annoying "trailing white space"
--                    --messages
--                    ['trailing-space'] = false,
--                },
--            },
--        },
--    },
--}
require 'lspconfig'.rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = true,
            }
        }
    }
}

lsp.setup()
if (printLoadingAndLoaded == true) then print('LOADED: .nvim/after/plugin/lsp.lua') end
