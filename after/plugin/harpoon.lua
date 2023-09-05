local printLoadingAndLoaded = vim.g.printLoadingAndLoaded
if (printLoadingAndLoaded == true) then print("LOADING: ./nvim/after/plugin/harpoon.lua") end

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-d>', function() ui.nav_file(4) end)

if (printLoadingAndLoaded == true) then print("LOADED: ./nvim/after/plugin/harpoon.lua") end
