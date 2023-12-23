--vim.opt.guicursor = "" --makes cursor thicc in INSERT mode

vim.g.mapleader = " "        -- leader key

vim.opt.termguicolors = true -- enable terminal colors

vim.opt.nu = true            --line numbers
vim.opt.rnu = true           --relative line numbers

vim.opt.tabstop = 4          -- how a tab is displayed
vim.opt.softtabstop = 4      -- per tab press
vim.opt.shiftwidth = 4       -- auto adjusted tab spacing
vim.opt.expandtab = true     -- coverts tab spaces to " " spaces ie, 1 tab = 4x" "

vim.opt.smartindent = true   -- automagicly indent

vim.opt.wrap = true          -- should words wrap, if false will go off screen
vim.opt.linebreak = true     -- should they wrap on first char, or based on word?

vim.opt.foldmethod =
"marker"                                               -- set fold method to marker, what this will do is cheack for  {{{1 }}}1 and fold everything with matching syntax

vim.opt.swapfile = true                                --use swapfile for changes? (if true, wll create a swap file will be used which can be nice in the case of crashes)
vim.opt.backup = false                                 -- creates backupfiles ending with a "~"
vim.opt.updatetime = 300                               -- time in ms it takes w/o input before swap file and the cursor position are updated
vim.opt.undofile = true                                -- creates an undo file that persists between sessions if true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- sets undo file location

vim.opt.hlsearch = true                                -- all results highlighted	
vim.opt.incsearch = true                               -- incrimental search /<key> * <other key>

vim.opt.scrolloff = 8                                  -- minimum number of lines to keep above/below cursor
vim.opt.signcolumn =
"auto"                                                 -- pillar used to show errors and the like. yes = always show, no = never show, auto = show if any exist
vim.opt.isfname:append("@-@")                          -- This line configures Neovim to include the characters "@-@" as valid characters in file names when performing certain operations like text object selection or file navigation.


vim.opt.colorcolumn = "75" -- the amount of pillars it takes for the bar to appear
