local printLoadingAndLoaded = vim.g.printLoadingAndLoaded

if (printLoadingAndLoaded == true) then print("LOADING: ./after/plugin/floaterm") end

--local function print_after_hotkey()
--    print("Hotkey pressed!")
--end
vim.g.floaterm_keymap_new = '<leader>fn'
vim.cmd('nnoremap <silent> <leader>fn :lua FloatermNew()<CR>')
function FloatermNew()
    --vim.cmd('nnoremap <silent> <leader>fn :FloatermNew<CR>')
    vim.cmd(':FloatermNew')
    print(":FloatermNew")
end;

vim.g.floaterm_keymap_show = '<leader>fs'
vim.cmd('nnoremap <silent> <leader>fs :lua FloatermShow()<CR>')
function FloatermShow()
    --vim.cmd('nnoremap <silent> <leader>fs :FloatermShow<CR>')
    vim.cmd(':FloatermShow')
    print(":FloatermShow");
end;

vim.g.floaterm_keymap_hide = '<leader>fh'
vim.cmd('nnoremap <silent> <leader>fh :lua FloatermHide()<CR>')
function FloatermHide()
    --vim.cmd('nnoremap <silent> <leader>fh :FloatermHide<CR>')
    vim.cmd(':FloatermHide')
    print(":FloatermHide")
end;

vim.g.floaterm_keymap_toggle = '<leader>ft'
vim.cmd('nnoremap <silent> <leader>ft :lua FloatermToggle()<CR>')
function FloatermToggle()
    --vim.cmd('nnoremap <silent> <leader>ft :FloatermToggle<CR>')
    vim.cmd(':FloatermToggle')
    print(":FloatermToggle")
end;

vim.g.floaterm_keymap_kill = '<leader>fk'
vim.cmd('nnoremap <silent> <leader>fk :lua FloatermKill()<CR>')
function FloatermKill()
    --vim.cmd('nnoremap <silent> <leader>fk :FloatermKill<CR>')
    vim.cmd(':FloatermKill')
    print(":FloatermKill")
end;

if (printLoadingAndLoaded == true) then print("LOADED: ./after/plugin/floaterm") end
