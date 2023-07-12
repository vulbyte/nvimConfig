--vim.opt.guicursor = "" --makes cursor thicc in INSERT mode

vim.opt.termguicolors = true

vim.opt.nu = true --line numbers
vim.opt.rnu = true --relative line numbers

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true -- all results highlighted	
vim.opt.incsearch = true -- incrimental search /<key> * <other key>

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "75"
vim.g.mapleader = " "
