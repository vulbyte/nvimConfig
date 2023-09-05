local printLoadingAndLoaded = vim.g.printLoadingAndLoaded;
if (printLoadingAndLoaded == true) then print('lOADING: ./nvim/after/plugin/fugitive') end


vim.keymap.set("n", "<leader>gs", vim.cmd.Git)


if (printLoadingAndLoaded == true) then print('LOADED: ./nvim/after/plugin/fugitive') end
