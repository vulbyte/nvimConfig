print('LOADING: ./nvim/after/plugin/colors.lua')


function ColorScheme1(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
ColorScheme1()


print('LOADING: ./nvim/after/plugin/colors.lua')
