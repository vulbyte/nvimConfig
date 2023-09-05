local printLoadingAndLoaded = vim.g.printLoadingAndLoaded;

if (printLoadingAndLoaded == true) then print('LOADING: ./nvim/after/plugin/colors.lua') end

--______________________DARK THEMES_______________________

function ColorSchemeDark(color)
    color = color or "carbonfox"
    vim.cmd.colorscheme(color)

    local palette = {
        -- Other color definitions
        bg0 = "#16161600", -- Transparent background for unfocused windows
    }

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    require('nightfox').setup({ palettes = palettes })
end

--function ColorScemeDark1(color)
--    color = color or "carbonfox"
--    vim.cmd.colorscheme(color)
--
--    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
--    require('nightfox').setup({ palettes = palettes })
--end

--___________________LIGHT THEMES_______________________
function ColorSchemeLight(color)
    color = color or "dayfox"
    vim.cmd.colorscheme(color)

    require('nightfox').setup({ palettes = palettes })
end

--ColorSchemeLight()

--default loaded
ColorSchemeDark()

if (printLoadingAndLoaded == true) then print('LOADING: ./nvim/after/plugin/colors.lua') end
