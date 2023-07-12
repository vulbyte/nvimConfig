# nvimConfig 
simple add this to ~/.config/nvim (on macOS) with nvim installed via brew on macOS 12 for a garunteed good time 
( ͡° ͜ʖ ͡°)


-packages used in this project:
  -tpope/fugitive                     https://github.com/tpope/vim-fugitive
  -theprimeagen/harpoon               https://github.com/ThePrimeagen/harpoon
  -VonHeikemen/lsp-zero:              https://github.com/VonHeikemen/lsp-zero.nvim
  -wbthomasons/packer                 https://github.com/wbthomason/packer.nvim
  -nvim-telescope/telescope:          https://github.com/nvim-telescope/telescope.nvim
  -nvim-treesitter/nvim-treesitter:   https://github.com/nvim-treesitter/nvim-treesitter
    -requires:                          NodeJs
  -bbill/undotree:                    https://github.com/mbbill/undotree


#Startup
  1.) cd into the proper place, which is within your .config folder in your hole or user folder
    on macOS: ``cd ~./.config/``, on linux it's generally: ``cd ~./home/<USERNAME>/.config/``
and a the project folder should be added their named `nvimConfig`, rename this to `"nvim"`
  2.) run the command ``git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`` to install all the files needed for packer locally
  3.) it will error the first time since most things aren't installed, to fix this load up vim and run ``:PackerSync``. then leave and reopen. you should still have errors, because it'll only load so far before it gives      up, for me it toook about 3x for  everything to be installed.
  4.) check that ``:Mason`` is also working, if it's working should be all good

#Troubleshooting:

CC1:
  if you are having issues errors caused from "missing the cc1 file/directory" it's because you're missing a file used to compile code for gcc. to fix this run: ```yum install gcc-c++```, if you don't have yum go install it.

GREP SEARCH NOT WORKING:
  if this isn't working you need to install ripgrep via: https://github.com/BurntSushi/ripgrep#installation
  while you're at it install this too: https://github.com/sharkdp/fd#installation

