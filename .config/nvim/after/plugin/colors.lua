-- ensure there is always a color scheme to fall back on
function ColorMyPencils(color) 
    if vim.env.TERM_PROGRAM ~= "Apple_Terminal" then
        target = color or "rose-pine"
    else
        -- target = "gruvbox"
        target = "default"
    end

    local ok, err = pcall(vim.cmd.colorscheme, target)
    if not ok then
        vim.notify("Failed to load colorsheme: " .. target .. "\n" .. err, vim.log.levels.WARN)
    end

    -- transparent terminal background
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
