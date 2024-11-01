local printLoadingAndLoaded = vim.g.printLoadingAndLoaded

if (printLoadingAndLoaded == true) then print('LOADED: ./nvim/after/plugin/undotree.lua') end

vim.keymap.set('n', "<leader>u", vim.cmd.UndotreeToggle)

if (printLoadingAndLoaded == true) then print('LOADED: ./nvim/after/plugin/undotree.lua') end
