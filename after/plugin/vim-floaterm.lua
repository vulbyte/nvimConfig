local printLoadingAndLoaded = vim.g.printLoadingAndLoaded

if (printLoadingAndLoaded == true) then print("LOADING: ./after/plugin/floaterm") end

--local function print_after_hotkey()
--    print("Hotkey pressed!")
--end
vim.g.floaterm_keymap_new = '<leader>fn'
vim.cmd('nnoremap <silent> <leader>fn :FloatermNew<CR>')

vim.g.floaterm_keymap_show = '<leader>fs'
vim.cmd('nnoremap <silent> <leader>fs :FloatermShow<CR>')

vim.g.floaterm_keymap_hide = '<leader>fh'
vim.cmd('nnoremap <silent> <leader>fh :FloatermHide<CR>')

vim.g.floaterm_keymap_toggle = '<leader>ft'
vim.cmd('nnoremap <silent> <leader>ft :FloatermToggle<CR>')

vim.g.floaterm_keymap_kill = '<leader>fk'
vim.cmd('nnoremap <silent> <leader>fk :FloatermKillAll<CR>')


if (printLoadingAndLoaded == true) then print("LOADED: ./after/plugin/floaterm") end
