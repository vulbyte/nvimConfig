io.write('LOADING: ./nvim/init.lua')

-- yepp
require('vulbyte.init')

vim.g.OmniSharp_server_use_net6 = 0
vim.g.OmniSharp_server_use_net7 = 0
vim.g.OmniSharp_server_use_net8 = 0

vim.g.OmniSharp_server_use_mono = 1

--io.write("\27[31m\n+++++++++++++++++++++++++++++LOADED: ./nvim/init.lua\n\27[0m")
print("LOADED: ./nvim/init.lua")
