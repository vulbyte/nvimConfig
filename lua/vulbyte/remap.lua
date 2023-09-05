local printLoadingAndLoaded = vim.g.printLoadingAndLoaded;

if (printLoadingAndLoaded == true) then print('LOADING: ./nvim/lua/vulbyte/remap.lua') end

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- these are used to shift
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- hole lines up and down

vim.keymap.set("n", "<C-d>", "<C-d>zz")      -- these keep your cursor in
vim.keymap.set("n", "<C-u>", "<C-u>zz")      -- the center on page jumps

vim.keymap.set('n', 'n', 'nzzzv')            -- these keep cursor in center when
vim.keymap.set('n', 'N', 'Nzzzv')            -- searching around

vim.keymap.set('x', '<leader>p', "\"_dp")    -- keeps copied thing in buffer

vim.keymap.set("v", '<leader>y', "\"+y")     -- yanks to system clipboard

--below allows you to swap projects via tmux (different sessions)
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

--add quick fix list from @28:39?
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


--replaces selected word with new word in whole document/file omg <3
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--sets emmet hotkey to <C-(var)>,
vim.g.user_emmet_leader_key = "<C-Y>"

if (printLoadingAndLoaded == true) then print('LOADED: ./nvim/luavulbyte/remap.lua') end
