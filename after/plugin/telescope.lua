local printLoadingAndLoaded = vim.g.printLoadingAndLoaded

if (printLoadingAndLoaded == true) then print("LOADING: ./nvim/after/plugin/telescope.lua") end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
--vim.keymap.set('n', '<leader>ps', function()
--vim.cmd("grep " .. vim.fn.input("Grep > "))

--vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

if (printLoadingAndLoaded == true) then print("LOADED: ./nvim/after/plugin/telescope.lua") end
