-- ensure there is always a color scheme to fall back on
function ColorMyPencils(color) 
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- transparent terminal background
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
