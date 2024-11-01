--require('vulbyte.logStyling')
local printLoadingAndLoaded = vim.g.printLoadingAndLoaded;

if (printLoadingAndLoaded == true) then print('LOADING: ./nvim/lua/vulbyte/init.lua') end

require('vulbyte.packer')
require('vulbyte.remap')
require('vulbyte.set')
--require('vulbyte.telescope')

if (printLoadingAndLoaded == true) then print('LOADED: ./nvim/lua/vulbute/init.lua') end
