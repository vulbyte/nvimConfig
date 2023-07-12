print("LOADING: ./nvim/after/plugin/telescope.lua")

local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
	vim.keymap.set('n', '<C-p>', builtin.git_files, {})
	vim.keymap.set('n', '<leader>ps', function()				-- THESE NEED TO 
		builtin.grep_string({ search = vim.fn.input ("Grep > ") });	-- BE FIXED !!!
		--vim.keymap.set('n', '<leader>ps', function()
	--vim.cmd("grep " .. vim.fn.input("Grep > "))
	
end)

--vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

print("LOADED: ./nvim/after/plugin/telescope.lua")
