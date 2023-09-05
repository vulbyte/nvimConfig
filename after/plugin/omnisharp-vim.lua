local printLoadingAndLoaded = vim.g.printLoadingAndLoaded

if (printLoadingAndLoaded == true) then print("LOADING: ./after/plugin/omnisharp-vim.lua") end

vim.g.OmniSharp_loglevel = 'DEBUG'

--vim.g.OmniSharp_server_use_net6 = 0
vim.g.OmniSharp_server_use_mono = 0

--vim.g.OmniSharp_server_path = '~/.cache/omnisharp-vim/omnisharp-roslyn/run'

if (printLoadingAndLoaded == true) then print("LOADED: ./after/plugin/omnisharp-vim.lua") end
