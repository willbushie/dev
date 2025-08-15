local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, {
    desc = "add file to harpoon"
})
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, {
    desc = "view harpoon menu"
})

vim.keymap.set("n", "<C-j>", function () ui.nav_file(1) end, {
    desc = "go to harpoon file 1"
})
vim.keymap.set("n", "<C-k>", function () ui.nav_file(2) end, {
    desc = "go to harpoon file 2"
})
vim.keymap.set("n", "<C-l>", function () ui.nav_file(3) end, {
    desc = "go to harppon file 3"
})
vim.keymap.set("n", "<C-;>", function () ui.nav_file(4) end, {
    desc = "go to harppon file 4"
})
