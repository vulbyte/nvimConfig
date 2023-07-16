print('LOADING: ./nvim/after/plugin/colors.lua')


function ColorSchemeDark(color)
    color = color or "carbonfox"
	vim.cmd.colorscheme(color)

    local palette = {
      -- Other color definitions
      bg0 = "#16161600", -- Transparent background for unfocused windows
    }

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    require('nightfox').setup({palettes=palettes})
end
ColorSchemeDark()

function ColorSchemeLight(color)
    color = color or "dayfox"
	vim.cmd.colorscheme(color)

    require('nightfox').setup({palettes=palettes})
end
--ColorSchemeLight()



print('LOADING: ./nvim/after/plugin/colors.lua')
